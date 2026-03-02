// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_policy.dart';

/// Part of MultiTenantDiagnosticSettings. Specifies the settings for a particular metric.
class MetricSettings {
  /// Name of a Diagnostic Metric category for a resource type this setting is applied to. To obtain the list of Diagnostic metric categories for a resource, first perform a GET diagnostic settings operation.
  final pulumi.Input<String>? category;
  /// a value indicating whether this category is enabled.
  final pulumi.Input<bool> enabled;
  /// the retention policy for this category.
  final pulumi.Input<RetentionPolicy>? retentionPolicy;
  /// the timegrain of the metric in ISO8601 format.
  final pulumi.Input<String>? timeGrain;

  /// Creates a new [MetricSettings].
  /// [category] Name of a Diagnostic Metric category for a resource type this setting is applied to. To obtain the list of Diagnostic metric categories for a resource, first perform a GET diagnostic settings operation.
  /// [enabled] a value indicating whether this category is enabled.
  /// [retentionPolicy] the retention policy for this category.
  /// [timeGrain] the timegrain of the metric in ISO8601 format.
  MetricSettings({
    this.category,
    required this.enabled,
    this.retentionPolicy,
    this.timeGrain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'enabled': enabled,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<RetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'timeGrain': ?timeGrain,
    };
  }

  factory MetricSettings.fromMap(Map<String, dynamic> map) {
    return MetricSettings(
      category: map['category'] == null ? null : (map['category']! as String).input(),
      enabled: (map['enabled'] as bool).input(),
      retentionPolicy: map['retentionPolicy'] == null ? null : (RetentionPolicy.fromMap((map['retentionPolicy']! as Map).cast<String, dynamic>())).input(),
      timeGrain: map['timeGrain'] == null ? null : (map['timeGrain']! as String).input(),
    );
  }
}

