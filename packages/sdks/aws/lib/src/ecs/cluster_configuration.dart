// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_configuration_execute_command_configuration.dart';
import 'cluster_configuration_managed_storage_configuration.dart';

class ClusterConfiguration {
  /// Details of the execute command configuration. See `execute_command_configuration` Block for details.
  final pulumi.Input<ClusterConfigurationExecuteCommandConfiguration>? executeCommandConfiguration;
  /// Details of the managed storage configuration. See `managed_storage_configuration` Block for details.
  final pulumi.Input<ClusterConfigurationManagedStorageConfiguration>? managedStorageConfiguration;

  /// Creates a new [ClusterConfiguration].
  /// [executeCommandConfiguration] Details of the execute command configuration. See `execute_command_configuration` Block for details.
  /// [managedStorageConfiguration] Details of the managed storage configuration. See `managed_storage_configuration` Block for details.
  ClusterConfiguration({
    this.executeCommandConfiguration,
    this.managedStorageConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executeCommandConfiguration': ?pulumi.Input.mapOptionalInputValue<ClusterConfigurationExecuteCommandConfiguration, Map<String, dynamic>>(executeCommandConfiguration, (value) => value.toMap()),
      'managedStorageConfiguration': ?pulumi.Input.mapOptionalInputValue<ClusterConfigurationManagedStorageConfiguration, Map<String, dynamic>>(managedStorageConfiguration, (value) => value.toMap()),
    };
  }

  factory ClusterConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterConfiguration(
      executeCommandConfiguration: (() { final guardedValue = map['executeCommandConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterConfigurationExecuteCommandConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      managedStorageConfiguration: (() { final guardedValue = map['managedStorageConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterConfigurationManagedStorageConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

