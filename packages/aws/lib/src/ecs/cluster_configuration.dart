// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_configuration_execute_command_configuration.dart';
import 'cluster_configuration_managed_storage_configuration.dart';

class ClusterConfiguration {
  /// Details of the execute command configuration. See `execute_command_configuration` Block for details.
  final ClusterConfigurationExecuteCommandConfiguration? executeCommandConfiguration;
  /// Details of the managed storage configuration. See `managed_storage_configuration` Block for details.
  final ClusterConfigurationManagedStorageConfiguration? managedStorageConfiguration;

  /// Creates a new [ClusterConfiguration].
  /// [executeCommandConfiguration] Details of the execute command configuration. See `execute_command_configuration` Block for details.
  /// [managedStorageConfiguration] Details of the managed storage configuration. See `managed_storage_configuration` Block for details.
  ClusterConfiguration({
    this.executeCommandConfiguration,
    this.managedStorageConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executeCommandConfiguration': ?executeCommandConfiguration == null ? null : executeCommandConfiguration!.toMap(),
      'managedStorageConfiguration': ?managedStorageConfiguration == null ? null : managedStorageConfiguration!.toMap(),
    };
  }

  factory ClusterConfiguration.fromMap(Map<String, dynamic> map) {
    return ClusterConfiguration(
      executeCommandConfiguration: map['executeCommandConfiguration'] == null ? null : ClusterConfigurationExecuteCommandConfiguration.fromMap((map['executeCommandConfiguration'] as Map).cast<String, dynamic>()),
      managedStorageConfiguration: map['managedStorageConfiguration'] == null ? null : ClusterConfigurationManagedStorageConfiguration.fromMap((map['managedStorageConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

