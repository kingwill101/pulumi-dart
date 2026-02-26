// ignore_for_file: unused_element, unnecessary_cast

import '../workgroup_configuration_managed_query_results_configuration_encryption_configuration/workgroup_configuration_managed_query_results_configuration_encryption_configuration.dart';

class WorkgroupConfigurationManagedQueryResultsConfiguration {
  /// If set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, allows you to store query results in Athena owned storage. If set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, workgroup member stores query results in the location specified under `result_configuration.output_location`. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. A workgroup cannot have the `result_configuration.output_location` set when this is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? enabled;

  /// Configuration block for the encryption configuration. See Managed Query Results Encryption Configuration below.
  final WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration?
      encryptionConfiguration;

  WorkgroupConfigurationManagedQueryResultsConfiguration({
    this.enabled,
    this.encryptionConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = encryptionConfigurationValue.toMap();
    }
    return map;
  }

  factory WorkgroupConfigurationManagedQueryResultsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return WorkgroupConfigurationManagedQueryResultsConfiguration(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      encryptionConfiguration: map['encryptionConfiguration'] == null
          ? null
          : WorkgroupConfigurationManagedQueryResultsConfigurationEncryptionConfiguration
              .fromMap((map['encryptionConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
