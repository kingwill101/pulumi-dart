// ignore_for_file: unused_element, unnecessary_cast

import 'execute_command_configuration_response.dart';

/// Definition of ClusterConfiguration
class ClusterConfigurationResponse {
  /// The details of the execute command configuration. The details of the execute command configuration.
  final ExecuteCommandConfigurationResponse? executeCommandConfiguration;

  /// Creates a new [ClusterConfigurationResponse].
  /// [executeCommandConfiguration] The details of the execute command configuration. The details of the execute command configuration.
  ClusterConfigurationResponse({
    this.executeCommandConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executeCommandConfiguration': ?executeCommandConfiguration == null ? null : executeCommandConfiguration!.toMap(),
    };
  }

  factory ClusterConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ClusterConfigurationResponse(
      executeCommandConfiguration: map['executeCommandConfiguration'] == null ? null : ExecuteCommandConfigurationResponse.fromMap((map['executeCommandConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

