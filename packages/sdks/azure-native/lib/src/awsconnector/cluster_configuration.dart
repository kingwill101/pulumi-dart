// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execute_command_configuration.dart';

/// Definition of ClusterConfiguration
class ClusterConfiguration {
  /// The details of the execute command configuration. The details of the execute command configuration.
  final pulumi.Input<ExecuteCommandConfiguration?>? executeCommandConfiguration;

  /// Creates a new [ClusterConfiguration].
  /// [executeCommandConfiguration] The details of the execute command configuration. The details of the execute command configuration.
  const ClusterConfiguration({
    this.executeCommandConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executeCommandConfiguration': ?pulumi.Input.mapOptionalInputValue<ExecuteCommandConfiguration, Map<String, dynamic>>(executeCommandConfiguration, (value) => value.toMap()),
    };
  }

  factory ClusterConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterConfiguration(
      executeCommandConfiguration: (() { final guardedValue = map['executeCommandConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExecuteCommandConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
