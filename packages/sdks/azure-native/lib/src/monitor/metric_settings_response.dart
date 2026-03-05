// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_policy_response.dart';

/// Part of MultiTenantDiagnosticSettings. Specifies the settings for a particular metric.
class MetricSettingsResponse {
  /// Name of a Diagnostic Metric category for a resource type this setting is applied to. To obtain the list of Diagnostic metric categories for a resource, first perform a GET diagnostic settings operation.
  final pulumi.Input<String>? category;
  /// a value indicating whether this category is enabled.
  final pulumi.Input<bool> enabled;
  /// the retention policy for this category.
  final pulumi.Input<RetentionPolicyResponse>? retentionPolicy;
  /// the timegrain of the metric in ISO8601 format.
  final pulumi.Input<String>? timeGrain;

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
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<RetentionPolicyResponse, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
      'timeGrain': ?timeGrain,
    };
  }

  factory MetricSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MetricSettingsResponse(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeGrain: (() { final guardedValue = map['timeGrain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

