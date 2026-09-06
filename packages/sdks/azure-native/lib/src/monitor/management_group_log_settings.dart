// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Part of Management Group diagnostic setting. Specifies the settings for a particular log.
class ManagementGroupLogSettings {
  /// Name of a Management Group Diagnostic Log category for a resource type this setting is applied to.
  final pulumi.Input<String?>? category;
  /// Name of a Management Group Diagnostic Log category group for a resource type this setting is applied to.
  final pulumi.Input<String?>? categoryGroup;
  /// a value indicating whether this log is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [ManagementGroupLogSettings].
  /// [category] Name of a Management Group Diagnostic Log category for a resource type this setting is applied to.
  /// [categoryGroup] Name of a Management Group Diagnostic Log category group for a resource type this setting is applied to.
  /// [enabled] a value indicating whether this log is enabled.
  const ManagementGroupLogSettings({
    this.category,
    this.categoryGroup,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'categoryGroup': ?categoryGroup,
      'enabled': enabled,
    };
  }

  factory ManagementGroupLogSettings.fromMap(Map<String, dynamic> map) {
    return ManagementGroupLogSettings(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      categoryGroup: (() { final guardedValue = map['categoryGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
