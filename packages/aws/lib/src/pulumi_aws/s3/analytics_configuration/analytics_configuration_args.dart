// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../analytics_configuration_filter/analytics_configuration_filter.dart';
import '../analytics_configuration_storage_class_analysis/analytics_configuration_storage_class_analysis.dart';

/// The set of arguments for AnalyticsConfiguration.
class AnalyticsConfigurationArgs {
  /// Name of the bucket this analytics configuration is associated with.
  final Input<String> bucket;

  /// Object filtering that accepts a prefix, tags, or a logical AND of prefix and tags (documented below).
  final Input<AnalyticsConfigurationFilter>? filter;

  /// Unique identifier of the analytics configuration for the bucket.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration for the analytics data export (documented below).
  final Input<AnalyticsConfigurationStorageClassAnalysis>? storageClassAnalysis;

  AnalyticsConfigurationArgs({
    required this.bucket,
    this.filter,
    this.name,
    this.region,
    this.storageClassAnalysis,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = Input.mapOptionalInputValue<AnalyticsConfigurationFilter,
          Map<String, dynamic>>(filterValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final storageClassAnalysisValue = storageClassAnalysis;
    if (storageClassAnalysisValue != null) {
      map['storageClassAnalysis'] = Input.mapOptionalInputValue<
              AnalyticsConfigurationStorageClassAnalysis, Map<String, dynamic>>(
          storageClassAnalysisValue, (value) => value.toMap());
    }
    return map;
  }

  factory AnalyticsConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfigurationArgs(
      bucket: Input.asInput<String>(map['bucket']),
      filter:
          Input.asOptionalInput<AnalyticsConfigurationFilter>(map['filter']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      storageClassAnalysis:
          Input.asOptionalInput<AnalyticsConfigurationStorageClassAnalysis>(
              map['storageClassAnalysis']),
    );
  }
}
