// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_policy_response.dart';

/// Part of MultiTenantDiagnosticSettings. Specifies the settings for a particular log.
class DiagnosticsLogSettingsResponse {
  /// Name of a Diagnostic Log category for a resource type this setting is applied to. To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
  final pulumi.Input<String>? category;
  /// Name of a Diagnostic Log category group for a resource type this setting is applied to. To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
  final pulumi.Input<String>? categoryGroup;
  /// a value indicating whether this log is enabled.
  final pulumi.Input<bool> enabled;
  /// the retention policy for this log.
  final pulumi.Input<RetentionPolicyResponse>? retentionPolicy;

  /// Creates a new [DiagnosticsLogSettingsResponse].
  /// [category] Name of a Diagnostic Log category for a resource type this setting is applied to. To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
  /// [categoryGroup] Name of a Diagnostic Log category group for a resource type this setting is applied to. To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
  /// [enabled] a value indicating whether this log is enabled.
  /// [retentionPolicy] the retention policy for this log.
  const DiagnosticsLogSettingsResponse({
    this.category,
    this.categoryGroup,
    required this.enabled,
    this.retentionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'categoryGroup': ?categoryGroup,
      'enabled': enabled,
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<RetentionPolicyResponse, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
    };
  }

  factory DiagnosticsLogSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DiagnosticsLogSettingsResponse(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      categoryGroup: (() { final guardedValue = map['categoryGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      retentionPolicy: (() { final guardedValue = map['retentionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RetentionPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
