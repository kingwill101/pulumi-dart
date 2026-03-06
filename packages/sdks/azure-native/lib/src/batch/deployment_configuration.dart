// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_configuration.dart';

/// Deployment configuration properties.
class DeploymentConfiguration {
  /// The configuration for compute nodes in a pool based on the Azure Virtual Machines infrastructure.
  final pulumi.Input<VirtualMachineConfiguration>? virtualMachineConfiguration;

  /// Creates a new [DeploymentConfiguration].
  /// [virtualMachineConfiguration] The configuration for compute nodes in a pool based on the Azure Virtual Machines infrastructure.
  const DeploymentConfiguration({
    this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualMachineConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualMachineConfiguration, Map<String, dynamic>>(virtualMachineConfiguration, (value) => value.toMap()),
    };
  }

  factory DeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return DeploymentConfiguration(
      virtualMachineConfiguration: (() { final guardedValue = map['virtualMachineConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

