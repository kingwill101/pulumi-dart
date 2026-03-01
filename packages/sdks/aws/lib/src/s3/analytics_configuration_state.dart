// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_configuration_filter.dart';
import 'analytics_configuration_storage_class_analysis.dart';

/// Input properties used for looking up and filtering AnalyticsConfiguration resources.
class AnalyticsConfigurationState {
  /// Name of the bucket this analytics configuration is associated with.
  final pulumi.Input<String>? bucket;
  /// Object filtering that accepts a prefix, tags, or a logical AND of prefix and tags (documented below).
  final pulumi.Input<AnalyticsConfigurationFilter>? filter;
  /// Unique identifier of the analytics configuration for the bucket.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration for the analytics data export (documented below).
  final pulumi.Input<AnalyticsConfigurationStorageClassAnalysis>? storageClassAnalysis;

  /// Creates a new [AnalyticsConfigurationState].
  /// [bucket] Name of the bucket this analytics configuration is associated with.
  /// [filter] Object filtering that accepts a prefix, tags, or a logical AND of prefix and tags (documented below).
  /// [name] Unique identifier of the analytics configuration for the bucket.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [storageClassAnalysis] Configuration for the analytics data export (documented below).
  AnalyticsConfigurationState({
    pulumi.Output<String>? bucket,
    pulumi.Output<AnalyticsConfigurationFilter>? filter,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<AnalyticsConfigurationStorageClassAnalysis>? storageClassAnalysis,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      filter = pulumi.Input.asOptionalInput<AnalyticsConfigurationFilter>(filter),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      storageClassAnalysis = pulumi.Input.asOptionalInput<AnalyticsConfigurationStorageClassAnalysis>(storageClassAnalysis);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'filter': ?pulumi.Input.mapOptionalInputValue<AnalyticsConfigurationFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'storageClassAnalysis': ?pulumi.Input.mapOptionalInputValue<AnalyticsConfigurationStorageClassAnalysis, Map<String, dynamic>>(storageClassAnalysis, (value) => value.toMap()),
    };
  }

  factory AnalyticsConfigurationState.fromMap(Map<String, dynamic> map) {
    return AnalyticsConfigurationState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<AnalyticsConfigurationFilter>(AnalyticsConfigurationFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      storageClassAnalysis: map['storageClassAnalysis'] == null ? null : pulumi.Output.create<AnalyticsConfigurationStorageClassAnalysis>(AnalyticsConfigurationStorageClassAnalysis.fromMap((map['storageClassAnalysis'] as Map).cast<String, dynamic>())),
    );
  }
}

