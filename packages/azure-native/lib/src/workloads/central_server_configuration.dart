// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_configuration.dart';

/// Gets or sets the central server configuration.
class CentralServerConfiguration {
  /// The number of central server VMs.
  final double instanceCount;
  /// The subnet id.
  final String subnetId;
  /// Gets or sets the virtual machine configuration.
  final VirtualMachineConfiguration virtualMachineConfiguration;

  /// Creates a new [CentralServerConfiguration].
  /// [instanceCount] The number of central server VMs.
  /// [subnetId] The subnet id.
  /// [virtualMachineConfiguration] Gets or sets the virtual machine configuration.
  CentralServerConfiguration({
    required this.instanceCount,
    required this.subnetId,
    required this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceCount': instanceCount,
      'subnetId': subnetId,
      'virtualMachineConfiguration': virtualMachineConfiguration.toMap(),
    };
  }

  factory CentralServerConfiguration.fromMap(Map<String, dynamic> map) {
    return CentralServerConfiguration(
      instanceCount: map['instanceCount'] as double,
      subnetId: map['subnetId'] as String,
      virtualMachineConfiguration: VirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

