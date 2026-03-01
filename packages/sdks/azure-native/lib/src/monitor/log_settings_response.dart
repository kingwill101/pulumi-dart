// ignore_for_file: unused_element, unnecessary_cast

import 'retention_policy_response.dart';

/// Part of MultiTenantDiagnosticSettings. Specifies the settings for a particular log.
class LogSettingsResponse {
  /// Name of a Diagnostic Log category for a resource type this setting is applied to. To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
  final String? category;
  /// Name of a Diagnostic Log category group for a resource type this setting is applied to. To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
  final String? categoryGroup;
  /// a value indicating whether this log is enabled.
  final bool enabled;
  /// the retention policy for this log.
  final RetentionPolicyResponse? retentionPolicy;

  /// Creates a new [LogSettingsResponse].
  /// [category] Name of a Diagnostic Log category for a resource type this setting is applied to. To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
  /// [categoryGroup] Name of a Diagnostic Log category group for a resource type this setting is applied to. To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
  /// [enabled] a value indicating whether this log is enabled.
  /// [retentionPolicy] the retention policy for this log.
  LogSettingsResponse({
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
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
    };
  }

  factory LogSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LogSettingsResponse(
      category: map['category'] == null ? null : map['category'] as String,
      categoryGroup: map['categoryGroup'] == null ? null : map['categoryGroup'] as String,
      enabled: map['enabled'] as bool,
      retentionPolicy: map['retentionPolicy'] == null ? null : RetentionPolicyResponse.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

