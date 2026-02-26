// ignore_for_file: unused_element, unnecessary_cast

class MultitenantDistributionCacheBehaviorTrustedKeyGroups {
  /// Whether the distribution is enabled to accept end user requests for content.
  final bool? enabled;
  final List<String>? items;

  MultitenantDistributionCacheBehaviorTrustedKeyGroups({
    this.enabled,
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = itemsValue;
    }
    return map;
  }

  factory MultitenantDistributionCacheBehaviorTrustedKeyGroups.fromMap(
      Map<String, dynamic> map) {
    return MultitenantDistributionCacheBehaviorTrustedKeyGroups(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      items:
          map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}
