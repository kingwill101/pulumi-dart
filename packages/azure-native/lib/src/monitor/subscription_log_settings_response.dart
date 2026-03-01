// ignore_for_file: unused_element, unnecessary_cast


/// Part of Subscription diagnostic setting. Specifies the settings for a particular log.
class SubscriptionLogSettingsResponse {
  /// Name of a Subscription Diagnostic Log category for a resource type this setting is applied to.
  final String? category;
  /// Name of a Subscription Diagnostic Log category group for a resource type this setting is applied to.
  final String? categoryGroup;
  /// a value indicating whether this log is enabled.
  final bool enabled;

  /// Creates a new [SubscriptionLogSettingsResponse].
  /// [category] Name of a Subscription Diagnostic Log category for a resource type this setting is applied to.
  /// [categoryGroup] Name of a Subscription Diagnostic Log category group for a resource type this setting is applied to.
  /// [enabled] a value indicating whether this log is enabled.
  SubscriptionLogSettingsResponse({
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

  factory SubscriptionLogSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionLogSettingsResponse(
      category: map['category'] == null ? null : map['category'] as String,
      categoryGroup: map['categoryGroup'] == null ? null : map['categoryGroup'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}

