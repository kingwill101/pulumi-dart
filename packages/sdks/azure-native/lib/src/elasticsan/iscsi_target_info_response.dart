// ignore_for_file: unused_element, unnecessary_cast


/// Iscsi target information
class IscsiTargetInfoResponse {
  /// State of the operation on the resource.
  final String provisioningState;
  /// Operational status of the iSCSI Target.
  final String? status;
  /// iSCSI Target IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:server".
  final String targetIqn;
  /// iSCSI Target Portal Host Name
  final String targetPortalHostname;
  /// iSCSI Target Portal Port
  final int targetPortalPort;

  /// Creates a new [IscsiTargetInfoResponse].
  /// [provisioningState] State of the operation on the resource.
  /// [status] Operational status of the iSCSI Target.
  /// [targetIqn] iSCSI Target IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:server".
  /// [targetPortalHostname] iSCSI Target Portal Host Name
  /// [targetPortalPort] iSCSI Target Portal Port
  IscsiTargetInfoResponse({
    required this.provisioningState,
    this.status,
    required this.targetIqn,
    required this.targetPortalHostname,
    required this.targetPortalPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'status': ?status,
      'targetIqn': targetIqn,
      'targetPortalHostname': targetPortalHostname,
      'targetPortalPort': targetPortalPort,
    };
  }

  factory IscsiTargetInfoResponse.fromMap(Map<String, dynamic> map) {
    return IscsiTargetInfoResponse(
      provisioningState: map['provisioningState'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      targetIqn: map['targetIqn'] as String,
      targetPortalHostname: map['targetPortalHostname'] as String,
      targetPortalPort: map['targetPortalPort'] as int,
    );
  }
}

