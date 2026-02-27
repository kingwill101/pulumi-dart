// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../analytics_configuration_filter/analytics_configuration_filter.dart';
import '../analytics_configuration_storage_class_analysis/analytics_configuration_storage_class_analysis.dart';

/// The set of arguments for AnalyticsConfiguration.
class AnalyticsConfigurationArgs {
  /// Name of the bucket this analytics configuration is associated with.
  final pulumi.Input<String> bucket;

  /// Object filtering that accepts a prefix, tags, or a logical AND of prefix and tags (documented below).
  final pulumi.Input<AnalyticsConfigurationFilter>? filter;

  /// Unique identifier of the analytics configuration for the bucket.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration for the analytics data export (documented below).
  final pulumi.Input<AnalyticsConfigurationStorageClassAnalysis>?
      storageClassAnalysis;

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
      map['filter'] = pulumi.Input.mapOptionalInputValue<
          AnalyticsConfigurationFilter,
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
      map['storageClassAnalysis'] = pulumi.Input.mapOptionalInputValue<
              AnalyticsConfigurationStorageClassAnalysis, Map<String, dynamic>>(
          storageClassAnalysisValue, (value) => value.toMap());
    }
    return map;
  }

  factory AnalyticsConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfigurationArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      filter: pulumi.Input.asOptionalInput<AnalyticsConfigurationFilter>(
          map['filter']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      storageClassAnalysis: pulumi.Input.asOptionalInput<
              AnalyticsConfigurationStorageClassAnalysis>(
          map['storageClassAnalysis']),
    );
  }
}
