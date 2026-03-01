// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_configuration_response.dart';

/// Gets or sets the central server configuration.
class CentralServerConfigurationResponse {
  /// The number of central server VMs.
  final double instanceCount;
  /// The subnet id.
  final String subnetId;
  /// Gets or sets the virtual machine configuration.
  final VirtualMachineConfigurationResponse virtualMachineConfiguration;

  /// Creates a new [CentralServerConfigurationResponse].
  /// [instanceCount] The number of central server VMs.
  /// [subnetId] The subnet id.
  /// [virtualMachineConfiguration] Gets or sets the virtual machine configuration.
  CentralServerConfigurationResponse({
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

  factory CentralServerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return CentralServerConfigurationResponse(
      instanceCount: map['instanceCount'] as double,
      subnetId: map['subnetId'] as String,
      virtualMachineConfiguration: VirtualMachineConfigurationResponse.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

