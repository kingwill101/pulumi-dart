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
      bandwidth: (map['bandwidth'] as String).input(),
      creationTime: (map['creationTime'] as String).input(),
      deletionProtection: (map['deletionProtection'] as bool).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      internetChargeType: (map['internetChargeType'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

