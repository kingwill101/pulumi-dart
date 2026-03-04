// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEipAddressesEip {
  /// The maximum bandwidth of the EIP. Unit: Mbit/s.
  final pulumi.Input<String> bandwidth;
  final pulumi.Input<String> creationTime;

  /// Indicates whether deletion protection is enabled.
  final pulumi.Input<bool> deletionProtection;

  /// The ID of the Address.
  final pulumi.Input<String> id;

  /// The ID of the instance with which the EIP is associated.
  final pulumi.Input<String> instanceId;

  /// The type of the instance with which the EIP is associated.
  final pulumi.Input<String> instanceType;

  /// The metering method of the EIP.
  final pulumi.Input<String> internetChargeType;

  /// The eip address.
  final pulumi.Input<String> ipAddress;

  /// The status of the EIP. Valid values:  `Associating`: The EIP is being associated. `Unassociating`: The EIP is being disassociated. `InUse`: The EIP is allocated. `Available`:The EIP is available.
  final pulumi.Input<String> status;

  /// Creates a new [GetEipAddressesEip].
  /// [bandwidth] The maximum bandwidth of the EIP. Unit: Mbit/s.
  /// [creationTime] Required.
  /// [deletionProtection] Indicates whether deletion protection is enabled.
  /// [id] The ID of the Address.
  /// [instanceId] The ID of the instance with which the EIP is associated.
  /// [instanceType] The type of the instance with which the EIP is associated.
  /// [internetChargeType] The metering method of the EIP.
  /// [ipAddress] The eip address.
  /// [status] The status of the EIP. Valid values:  `Associating`: The EIP is being associated. `Unassociating`: The EIP is being disassociated. `InUse`: The EIP is allocated. `Available`:The EIP is available.
  GetEipAddressesEip({
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

  factory GetEipAddressesEip.fromMap(Map<String, dynamic> map) {
    return GetEipAddressesEip(
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      deletionProtection: pulumi.Input.fromValue(
        map['deletionProtection'] as bool,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      internetChargeType: pulumi.Input.fromValue(
        map['internetChargeType'] as String,
      ),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
