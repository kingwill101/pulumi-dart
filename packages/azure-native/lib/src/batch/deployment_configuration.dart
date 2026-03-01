// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_configuration.dart';

/// Deployment configuration properties.
class DeploymentConfiguration {
  /// The configuration for compute nodes in a pool based on the Azure Virtual Machines infrastructure.
  final VirtualMachineConfiguration? virtualMachineConfiguration;

  /// Creates a new [DeploymentConfiguration].
  /// [virtualMachineConfiguration] The configuration for compute nodes in a pool based on the Azure Virtual Machines infrastructure.
  DeploymentConfiguration({
    this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualMachineConfiguration': ?virtualMachineConfiguration == null ? null : virtualMachineConfiguration!.toMap(),
    };
  }

  factory DeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentConfiguration(
      virtualMachineConfiguration: map['virtualMachineConfiguration'] == null ? null : VirtualMachineConfiguration.fromMap((map['virtualMachineConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

