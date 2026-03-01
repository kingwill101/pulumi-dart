// ignore_for_file: unused_element, unnecessary_cast

import 'retention_policy.dart';

/// Part of MultiTenantDiagnosticSettings. Specifies the settings for a particular metric.
class MetricSettings {
  /// Name of a Diagnostic Metric category for a resource type this setting is applied to. To obtain the list of Diagnostic metric categories for a resource, first perform a GET diagnostic settings operation.
  final String? category;
  /// a value indicating whether this category is enabled.
  final bool enabled;
  /// the retention policy for this category.
  final RetentionPolicy? retentionPolicy;
  /// the timegrain of the metric in ISO8601 format.
  final String? timeGrain;

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
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
      'timeGrain': ?timeGrain,
    };
  }

  factory MetricSettings.fromMap(Map<String, dynamic> map) {
    return MetricSettings(
      category: map['category'] == null ? null : map['category'] as String,
      enabled: map['enabled'] as bool,
      retentionPolicy: map['retentionPolicy'] == null ? null : RetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      timeGrain: map['timeGrain'] == null ? null : map['timeGrain'] as String,
    );
  }
}

