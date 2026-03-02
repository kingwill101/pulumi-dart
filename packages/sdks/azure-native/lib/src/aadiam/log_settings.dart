// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_policy.dart';

/// Part of MultiTenantDiagnosticSettings. Specifies the settings for a particular log.
class LogSettings {
  /// Name of a Diagnostic Log category for a resource type this setting is applied to. To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation.
  final pulumi.Input<String>? category;
  /// A value indicating whether this log is enabled.
  final pulumi.Input<bool> enabled;
  /// The retention policy for this log.
  final pulumi.Input<RetentionPolicy>? retentionPolicy;

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
      'retentionPolicy': ?pulumi.Input.mapOptionalInputValue<RetentionPolicy, Map<String, dynamic>>(retentionPolicy, (value) => value.toMap()),
    };
  }

  factory LogSettings.fromMap(Map<String, dynamic> map) {
    return LogSettings(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
      retentionPolicy: map['retentionPolicy'] == null ? null : (RetentionPolicy.fromMap((map['retentionPolicy'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

