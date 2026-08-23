// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the ElasticSAN iSCSI target
class ElasticSanVolumePropertiesResponse {
  /// iSCSI Target IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:server"
  final pulumi.Input<String> targetIqn;
  /// iSCSI Target Portal Host Name
  final pulumi.Input<String> targetPortalHostname;
  /// iSCSI Target Portal Port
  final pulumi.Input<int> targetPortalPort;

  /// Creates a new [ElasticSanVolumePropertiesResponse].
  /// [targetIqn] iSCSI Target IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:server"
  /// [targetPortalHostname] iSCSI Target Portal Host Name
  /// [targetPortalPort] iSCSI Target Portal Port
  const ElasticSanVolumePropertiesResponse({
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
      targetIqn: pulumi.Input.fromValue(map['targetIqn'] as String),
      targetPortalHostname: pulumi.Input.fromValue(map['targetPortalHostname'] as String),
      targetPortalPort: pulumi.Input.fromValue(map['targetPortalPort'] as int),
    );
  }
}
