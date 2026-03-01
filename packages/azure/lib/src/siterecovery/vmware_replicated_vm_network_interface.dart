// ignore_for_file: unused_element, unnecessary_cast


class VmwareReplicatedVmNetworkInterface {
  /// Whether this `network_interface` is primary for the replicated VM.
  final bool isPrimary;
  /// Mac address of the network interface of source VM.
  final String sourceMacAddress;
  /// Static IP to assign when a failover is done.
  final String? targetStaticIp;
  /// Name of the subnet to use when a failover is done.
  final String? targetSubnetName;
  /// Name of the subnet to use when a test failover is done.
  final String? testSubnetName;

  /// Creates a new [VmwareReplicatedVmNetworkInterface].
  /// [isPrimary] Whether this `network_interface` is primary for the replicated VM.
  /// [sourceMacAddress] Mac address of the network interface of source VM.
  /// [targetStaticIp] Static IP to assign when a failover is done.
  /// [targetSubnetName] Name of the subnet to use when a failover is done.
  /// [testSubnetName] Name of the subnet to use when a test failover is done.
  VmwareReplicatedVmNetworkInterface({
    required this.isPrimary,
    required this.sourceMacAddress,
    this.targetStaticIp,
    this.targetSubnetName,
    this.testSubnetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPrimary': isPrimary,
      'sourceMacAddress': sourceMacAddress,
      'targetStaticIp': ?targetStaticIp,
      'targetSubnetName': ?targetSubnetName,
      'testSubnetName': ?testSubnetName,
    };
  }

  factory VmwareReplicatedVmNetworkInterface.fromMap(Map<String, dynamic> map) {
    return VmwareReplicatedVmNetworkInterface(
      isPrimary: map['isPrimary'] as bool,
      sourceMacAddress: map['sourceMacAddress'] as String,
      targetStaticIp: map['targetStaticIp'] == null ? null : map['targetStaticIp'] as String,
      targetSubnetName: map['targetSubnetName'] == null ? null : map['targetSubnetName'] as String,
      testSubnetName: map['testSubnetName'] == null ? null : map['testSubnetName'] as String,
    );
  }
}

