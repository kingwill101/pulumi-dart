// ignore_for_file: unused_element, unnecessary_cast


class GetEipAddressesEip {
  /// The maximum bandwidth of the EIP. Unit: Mbit/s.
  final String bandwidth;
  final String creationTime;
  /// Indicates whether deletion protection is enabled.
  final bool deletionProtection;
  /// The ID of the Address.
  final String id;
  /// The ID of the instance with which the EIP is associated.
  final String instanceId;
  /// The type of the instance with which the EIP is associated.
  final String instanceType;
  /// The metering method of the EIP.
  final String internetChargeType;
  /// The eip address.
  final String ipAddress;
  /// The status of the EIP. Valid values:  `Associating`: The EIP is being associated. `Unassociating`: The EIP is being disassociated. `InUse`: The EIP is allocated. `Available`:The EIP is available.
  final String status;

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
      bandwidth: map['bandwidth'] as String,
      creationTime: map['creationTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceType: map['instanceType'] as String,
      internetChargeType: map['internetChargeType'] as String,
      ipAddress: map['ipAddress'] as String,
      status: map['status'] as String,
    );
  }
}

