// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_configuration_response.dart';

/// Deployment configuration properties.
class DeploymentConfigurationResponse {
  /// The configuration for compute nodes in a pool based on the Azure Virtual Machines infrastructure.
  final pulumi.Input<VirtualMachineConfigurationResponse>? virtualMachineConfiguration;

  /// Creates a new [DeploymentConfigurationResponse].
  /// [virtualMachineConfiguration] The configuration for compute nodes in a pool based on the Azure Virtual Machines infrastructure.
  DeploymentConfigurationResponse({
    this.virtualMachineConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualMachineConfiguration': ?pulumi.Input.mapOptionalInputValue<VirtualMachineConfigurationResponse, Map<String, dynamic>>(virtualMachineConfiguration, (value) => value.toMap()),
    };
  }

  factory DeploymentConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentConfigurationResponse(
      virtualMachineConfiguration: map['virtualMachineConfiguration'] == null ? null : (VirtualMachineConfigurationResponse.fromMap((map['virtualMachineConfiguration']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

