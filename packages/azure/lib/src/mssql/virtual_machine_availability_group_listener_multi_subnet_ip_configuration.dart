// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration {
  /// The private IP Address of the listener. Changing this forces a new resource to be created.
  final String privateIpAddress;
  /// The ID of the Sql Virtual Machine. Changing this forces a new resource to be created.
  final String sqlVirtualMachineId;
  /// The ID of the Subnet to create the listener. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `sql_virtual_machine_id` should match with the SQL Virtual Machines specified in `replica`.
  final String subnetId;

  /// Creates a new [VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration].
  /// [privateIpAddress] The private IP Address of the listener. Changing this forces a new resource to be created.
  /// [sqlVirtualMachineId] The ID of the Sql Virtual Machine. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet to create the listener. Changing this forces a new resource to be created.
  VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration({
    required this.privateIpAddress,
    required this.sqlVirtualMachineId,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': privateIpAddress,
      'sqlVirtualMachineId': sqlVirtualMachineId,
      'subnetId': subnetId,
    };
  }

  factory VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAvailabilityGroupListenerMultiSubnetIpConfiguration(
      privateIpAddress: map['privateIpAddress'] as String,
      sqlVirtualMachineId: map['sqlVirtualMachineId'] as String,
      subnetId: map['subnetId'] as String,
    );
  }
}

