// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Part of Subscription diagnostic setting. Specifies the settings for a particular log.
class SubscriptionLogSettings {
  /// Name of a Subscription Diagnostic Log category for a resource type this setting is applied to.
  final pulumi.Input<String>? category;
  /// Name of a Subscription Diagnostic Log category group for a resource type this setting is applied to.
  final pulumi.Input<String>? categoryGroup;
  /// a value indicating whether this log is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [SubscriptionLogSettings].
  /// [category] Name of a Subscription Diagnostic Log category for a resource type this setting is applied to.
  /// [categoryGroup] Name of a Subscription Diagnostic Log category group for a resource type this setting is applied to.
  /// [enabled] a value indicating whether this log is enabled.
  SubscriptionLogSettings({
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

  factory SubscriptionLogSettings.fromMap(Map<String, dynamic> map) {
    return SubscriptionLogSettings(
      category: map['category'] == null ? null : (map['category'] as String).input(),
      categoryGroup: map['categoryGroup'] == null ? null : (map['categoryGroup'] as String).input(),
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

