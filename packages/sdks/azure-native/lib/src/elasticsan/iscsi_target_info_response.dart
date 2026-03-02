// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Iscsi target information
class IscsiTargetInfoResponse {
  /// State of the operation on the resource.
  final pulumi.Input<String> provisioningState;
  /// Operational status of the iSCSI Target.
  final pulumi.Input<String>? status;
  /// iSCSI Target IQN (iSCSI Qualified Name); example: "iqn.2005-03.org.iscsi:server".
  final pulumi.Input<String> targetIqn;
  /// iSCSI Target Portal Host Name
  final pulumi.Input<String> targetPortalHostname;
  /// iSCSI Target Portal Port
  final pulumi.Input<int> targetPortalPort;

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
      provisioningState: (map['provisioningState'] as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      targetIqn: (map['targetIqn'] as String).input(),
      targetPortalHostname: (map['targetPortalHostname'] as String).input(),
      targetPortalPort: (map['targetPortalPort'] as int).input(),
    );
  }
}

