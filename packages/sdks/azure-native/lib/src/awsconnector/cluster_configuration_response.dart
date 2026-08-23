// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execute_command_configuration_response.dart';

/// Definition of ClusterConfiguration
class ClusterConfigurationResponse {
  /// The details of the execute command configuration. The details of the execute command configuration.
  final pulumi.Input<ExecuteCommandConfigurationResponse>? executeCommandConfiguration;

  /// Creates a new [ClusterConfigurationResponse].
  /// [executeCommandConfiguration] The details of the execute command configuration. The details of the execute command configuration.
  const ClusterConfigurationResponse({
    this.executeCommandConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executeCommandConfiguration': ?pulumi.Input.mapOptionalInputValue<ExecuteCommandConfigurationResponse, Map<String, dynamic>>(executeCommandConfiguration, (value) => value.toMap()),
    };
  }

  factory ClusterConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ClusterConfigurationResponse(
      executeCommandConfiguration: (() { final guardedValue = map['executeCommandConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecuteCommandConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
