// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_configuration_managed_query_results_configuration_encryption_configuration.dart';

class WorkgroupConfigurationManagedQueryResultsConfiguration {
  /// If set to `true`, allows you to store query results in Athena owned storage. If set to `false`, workgroup member stores query results in the location specified under `result_configuration.output_location`. The default is `false`. A workgroup cannot have the `result_configuration.output_location` set when this is `true`.
  final pulumi.Input<bool>? enabled;
  /// Configuration block for the encryption configuration. See Managed Query Results Encryption Configuration below.
  final pulumi.Input<WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration>? encryptionConfiguration;

  /// Creates a new [WorkgroupConfigurationManagedQueryResultsConfiguration].
  /// [enabled] If set to `true`, allows you to store query results in Athena owned storage. If set to `false`, workgroup member stores query results in the location specified under `result_configuration.output_location`. The default is `false`. A workgroup cannot have the `result_configuration.output_location` set when this is `true`.
  /// [encryptionConfiguration] Configuration block for the encryption configuration. See Managed Query Results Encryption Configuration below.
  const WorkgroupConfigurationManagedQueryResultsConfiguration({
    this.enabled,
    this.encryptionConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
    };
  }

  factory WorkgroupConfigurationManagedQueryResultsConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkgroupConfigurationManagedQueryResultsConfiguration(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
