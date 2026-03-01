// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the ElasticSAN iSCSI target
class ElasticSanVolumePropertiesResponse {
  /// iSCSI Target IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:server"
  final String targetIqn;
  /// iSCSI Target Portal Host Name
  final String targetPortalHostname;
  /// iSCSI Target Portal Port
  final int targetPortalPort;

  /// Creates a new [ElasticSanVolumePropertiesResponse].
  /// [targetIqn] iSCSI Target IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:server"
  /// [targetPortalHostname] iSCSI Target Portal Host Name
  /// [targetPortalPort] iSCSI Target Portal Port
  ElasticSanVolumePropertiesResponse({
    required this.targetIqn,
    required this.targetPortalHostname,
    required this.targetPortalPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetIqn': targetIqn,
      'targetPortalHostname': targetPortalHostname,
      'targetPortalPort': targetPortalPort,
    };
  }

  factory ElasticSanVolumePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticSanVolumePropertiesResponse(
      targetIqn: map['targetIqn'] as String,
      targetPortalHostname: map['targetPortalHostname'] as String,
      targetPortalPort: map['targetPortalPort'] as int,
    );
  }
}

