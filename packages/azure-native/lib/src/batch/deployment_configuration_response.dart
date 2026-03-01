// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_configuration_response.dart';

/// Deployment configuration properties.
class DeploymentConfigurationResponse {
  /// The configuration for compute nodes in a pool based on the Azure Virtual Machines infrastructure.
  final VirtualMachineConfigurationResponse? virtualMachineConfiguration;

  /// Creates a new [DeploymentConfigurationResponse].
  /// [virtualMachineConfiguration] The configuration for compute nodes in a pool based on the Azure Virtual Machines infrastructure.
  DeploymentConfigurationResponse({
    this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualMachineConfiguration': ?virtualMachineConfiguration == null ? null : virtualMachineConfiguration!.toMap(),
    };
  }

  factory DeploymentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigurationResponse(
      virtualMachineConfiguration: map['virtualMachineConfiguration'] == null ? null : VirtualMachineConfigurationResponse.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

