// ignore_for_file: unused_element, unnecessary_cast

import '../stream_source_config_salesforce_source_config_exclude_objects/stream_source_config_salesforce_source_config_exclude_objects.dart';
import '../stream_source_config_salesforce_source_config_include_objects/stream_source_config_salesforce_source_config_include_objects.dart';

class StreamSourceConfigSalesforceSourceConfig {
  /// Salesforce objects to exclude from the stream.
  /// Structure is documented below.
  final StreamSourceConfigSalesforceSourceConfigExcludeObjects? excludeObjects;

  /// Salesforce objects to retrieve from the source.
  /// Structure is documented below.
  final StreamSourceConfigSalesforceSourceConfigIncludeObjects? includeObjects;

  /// Salesforce objects polling interval. The interval at which new changes will be polled for each object. The duration must be between 5 minutes and 24 hours.
  final String pollingInterval;

  StreamSourceConfigSalesforceSourceConfig({
    this.excludeObjects,
    this.includeObjects,
    required this.pollingInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludeObjectsValue = excludeObjects;
    if (excludeObjectsValue != null) {
      map['excludeObjects'] = excludeObjectsValue.toMap();
    }
    final includeObjectsValue = includeObjects;
    if (includeObjectsValue != null) {
      map['includeObjects'] = includeObjectsValue.toMap();
    }
    map['pollingInterval'] = pollingInterval;
    return map;
  }

  factory StreamSourceConfigSalesforceSourceConfig.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSalesforceSourceConfig(
      excludeObjects: map['excludeObjects'] == null
          ? null
          : StreamSourceConfigSalesforceSourceConfigExcludeObjects.fromMap(
              (map['excludeObjects'] as Map).cast<String, dynamic>()),
      includeObjects: map['includeObjects'] == null
          ? null
          : StreamSourceConfigSalesforceSourceConfigIncludeObjects.fromMap(
              (map['includeObjects'] as Map).cast<String, dynamic>()),
      pollingInterval: map['pollingInterval'] as String,
    );
  }
}
