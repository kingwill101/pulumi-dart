// ignore_for_file: unused_element, unnecessary_cast

import 'execute_command_configuration.dart';

/// Definition of ClusterConfiguration
class ClusterConfiguration {
  /// The details of the execute command configuration. The details of the execute command configuration.
  final ExecuteCommandConfiguration? executeCommandConfiguration;

  /// Creates a new [ClusterConfiguration].
  /// [executeCommandConfiguration] The details of the execute command configuration. The details of the execute command configuration.
  ClusterConfiguration({
    this.executeCommandConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executeCommandConfiguration': ?executeCommandConfiguration == null ? null : executeCommandConfiguration!.toMap(),
    };
  }

  factory ClusterConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterConfiguration(
      executeCommandConfiguration: map['executeCommandConfiguration'] == null ? null : ExecuteCommandConfiguration.fromMap((map['executeCommandConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

