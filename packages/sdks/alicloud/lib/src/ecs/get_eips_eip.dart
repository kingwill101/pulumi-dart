// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEipsEip {
  /// EIP internet max bandwidth in Mbps.
  final pulumi.Input<String> bandwidth;
  /// Time of creation.
  final pulumi.Input<String> creationTime;
  /// (Optional, Available in v1.124.4+) Whether enable the deletion protection or not.
  final pulumi.Input<bool> deletionProtection;
  /// ID of the EIP.
  final pulumi.Input<String> id;
  /// The ID of the instance that is being bound.
  final pulumi.Input<String> instanceId;
  /// The instance type of that the EIP is bound.
  final pulumi.Input<String> instanceType;
  /// EIP internet charge type.
  final pulumi.Input<String> internetChargeType;
  /// Public IP Address of the the EIP.
  final pulumi.Input<String> ipAddress;
  /// EIP status. Possible values are: `Associating`, `Unassociating`, `InUse` and `Available`.
  final pulumi.Input<String> status;

  /// Creates a new [GetEipsEip].
  /// [bandwidth] EIP internet max bandwidth in Mbps.
  /// [creationTime] Time of creation.
  /// [deletionProtection] (Optional, Available in v1.124.4+) Whether enable the deletion protection or not.
  /// [id] ID of the EIP.
  /// [instanceId] The ID of the instance that is being bound.
  /// [instanceType] The instance type of that the EIP is bound.
  /// [internetChargeType] EIP internet charge type.
  /// [ipAddress] Public IP Address of the the EIP.
  /// [status] EIP status. Possible values are: `Associating`, `Unassociating`, `InUse` and `Available`.
  const GetEipsEip({
    required this.bandwidth,
    required this.creationTime,
    required this.deletionProtection,
    required this.id,
    required this.instanceId,
    required this.instanceType,
    required this.internetChargeType,
    required this.ipAddress,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'creationTime': creationTime,
      'deletionProtection': deletionProtection,
      'id': id,
      'instanceId': instanceId,
      'instanceType': instanceType,
      'internetChargeType': internetChargeType,
      'ipAddress': ipAddress,
      'status': status,
    };
  }

  factory GetEipsEip.fromMap(Map<String, dynamic> map) {
    return GetEipsEip(
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      deletionProtection: pulumi.Input.fromValue(map['deletionProtection'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      internetChargeType: pulumi.Input.fromValue(map['internetChargeType'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

