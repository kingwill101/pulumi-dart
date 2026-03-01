// ignore_for_file: unused_element, unnecessary_cast

import 'retention_policy_response.dart';

/// Part of MultiTenantDiagnosticSettings. Specifies the settings for a particular metric.
class MetricSettingsResponse {
  /// Name of a Diagnostic Metric category for a resource type this setting is applied to. To obtain the list of Diagnostic metric categories for a resource, first perform a GET diagnostic settings operation.
  final String? category;
  /// a value indicating whether this category is enabled.
  final bool enabled;
  /// the retention policy for this category.
  final RetentionPolicyResponse? retentionPolicy;
  /// the timegrain of the metric in ISO8601 format.
  final String? timeGrain;

  /// Creates a new [MetricSettingsResponse].
  /// [category] Name of a Diagnostic Metric category for a resource type this setting is applied to. To obtain the list of Diagnostic metric categories for a resource, first perform a GET diagnostic settings operation.
  /// [enabled] a value indicating whether this category is enabled.
  /// [retentionPolicy] the retention policy for this category.
  /// [timeGrain] the timegrain of the metric in ISO8601 format.
  MetricSettingsResponse({
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

  factory MetricSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MetricSettingsResponse(
      category: map['category'] == null ? null : map['category'] as String,
      enabled: map['enabled'] as bool,
      retentionPolicy: map['retentionPolicy'] == null ? null : RetentionPolicyResponse.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
      timeGrain: map['timeGrain'] == null ? null : map['timeGrain'] as String,
    );
  }
}

