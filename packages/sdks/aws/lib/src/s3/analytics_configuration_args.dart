// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_configuration_filter.dart';
import 'analytics_configuration_storage_class_analysis.dart';

/// {@template pulumi_s3_analytics_configuration_analytics_configuration_args_doc}
/// The set of arguments for AnalyticsConfiguration.
/// {@endtemplate}
/// {@macro pulumi_s3_analytics_configuration_analytics_configuration_args_doc}
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
  final pulumi.Input<AnalyticsConfigurationStorageClassAnalysis>? storageClassAnalysis;

  /// Creates a new [AnalyticsConfigurationArgs].
  /// [bucket] Name of the bucket this analytics configuration is associated with.
  /// [filter] Object filtering that accepts a prefix, tags, or a logical AND of prefix and tags (documented below).
  /// [name] Unique identifier of the analytics configuration for the bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageClassAnalysis] Configuration for the analytics data export (documented below).
  AnalyticsConfigurationArgs({
    required this.bucket,
    this.filter,
    this.name,
    this.region,
    this.storageClassAnalysis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'filter': ?pulumi.Input.mapOptionalInputValue<AnalyticsConfigurationFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'storageClassAnalysis': ?pulumi.Input.mapOptionalInputValue<AnalyticsConfigurationStorageClassAnalysis, Map<String, dynamic>>(storageClassAnalysis, (value) => value.toMap()),
    };
  }

  factory AnalyticsConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfigurationArgs(
      bucket: (map['bucket'] as String).input(),
      filter: map['filter'] == null ? null : ((AnalyticsConfigurationFilter.fromMap((map['filter']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      storageClassAnalysis: map['storageClassAnalysis'] == null ? null : ((AnalyticsConfigurationStorageClassAnalysis.fromMap((map['storageClassAnalysis']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

