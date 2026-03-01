// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_configuration_response.dart';

/// Gets or sets the application server configuration.
class ApplicationServerConfigurationResponse {
  /// The number of app server instances.
  final double instanceCount;
  /// The subnet id.
  final String subnetId;
  /// Gets or sets the virtual machine configuration.
  final VirtualMachineConfigurationResponse virtualMachineConfiguration;

  /// Creates a new [ApplicationServerConfigurationResponse].
  /// [instanceCount] The number of app server instances.
  /// [subnetId] The subnet id.
  /// [virtualMachineConfiguration] Gets or sets the virtual machine configuration.
  ApplicationServerConfigurationResponse({
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

  factory ApplicationServerConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationServerConfigurationResponse(
      instanceCount: map['instanceCount'] as double,
      subnetId: map['subnetId'] as String,
      virtualMachineConfiguration: VirtualMachineConfigurationResponse.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

