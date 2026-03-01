// ignore_for_file: unused_element, unnecessary_cast


class VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration {
  /// The ID of the Load Balancer. Changing this forces a new resource to be created.
  final String loadBalancerId;
  /// The private IP Address of the listener. Changing this forces a new resource to be created.
  final String privateIpAddress;
  /// The probe port of the listener. Changing this forces a new resource to be created.
  final int probePort;
  /// Specifies a list of SQL Virtual Machine IDs. Changing this forces a new resource to be created.
  final List<String> sqlVirtualMachineIds;
  /// The ID of the Subnet to create the listener. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `sql_virtual_machine_ids` should match with the SQL Virtual Machines specified in `replica`.
  final String subnetId;

  /// Creates a new [VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration].
  /// [loadBalancerId] The ID of the Load Balancer. Changing this forces a new resource to be created.
  /// [privateIpAddress] The private IP Address of the listener. Changing this forces a new resource to be created.
  /// [probePort] The probe port of the listener. Changing this forces a new resource to be created.
  /// [sqlVirtualMachineIds] Specifies a list of SQL Virtual Machine IDs. Changing this forces a new resource to be created.
  /// [subnetId] The ID of the Subnet to create the listener. Changing this forces a new resource to be created.
  VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration({
    required this.loadBalancerId,
    required this.privateIpAddress,
    required this.probePort,
    required this.sqlVirtualMachineIds,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancerId': loadBalancerId,
      'privateIpAddress': privateIpAddress,
      'probePort': probePort,
      'sqlVirtualMachineIds': sqlVirtualMachineIds,
      'subnetId': subnetId,
    };
  }

  factory VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualMachineAvailabilityGroupListenerLoadBalancerConfiguration(
      loadBalancerId: map['loadBalancerId'] as String,
      privateIpAddress: map['privateIpAddress'] as String,
      probePort: map['probePort'] as int,
      sqlVirtualMachineIds: (map['sqlVirtualMachineIds'] as List).cast<String>(),
      subnetId: map['subnetId'] as String,
    );
  }
}

