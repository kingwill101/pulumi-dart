// ignore_for_file: unused_element, unnecessary_cast

import 'retention_policy.dart';

/// Part of MultiTenantDiagnosticSettings. Specifies the settings for a particular log.
class LogSettings {
  /// Name of a Diagnostic Log category for a resource type this setting is applied to. To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
  final String? category;
  /// A value indicating whether this log is enabled.
  final bool enabled;
  /// The retention policy for this log.
  final RetentionPolicy? retentionPolicy;

  /// Creates a new [LogSettings].
  /// [category] Name of a Diagnostic Log category for a resource type this setting is applied to. To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
  /// [enabled] A value indicating whether this log is enabled.
  /// [retentionPolicy] The retention policy for this log.
  LogSettings({
    this.category,
    required this.enabled,
    this.retentionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'enabled': enabled,
      'retentionPolicy': ?retentionPolicy == null ? null : retentionPolicy!.toMap(),
    };
  }

  factory LogSettings.fromMap(Map<String, dynamic> map) {
    return LogSettings(
      category: map['category'] == null ? null : map['category'] as String,
      enabled: map['enabled'] as bool,
      retentionPolicy: map['retentionPolicy'] == null ? null : RetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}

