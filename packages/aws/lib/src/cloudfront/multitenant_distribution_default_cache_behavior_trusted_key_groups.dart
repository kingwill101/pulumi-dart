// ignore_for_file: unused_element, unnecessary_cast


class MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups {
  /// Whether the distribution is enabled to accept end user requests for content.
  final bool? enabled;
  final List<String>? items;

  /// Creates a new [MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups].
  /// [enabled] Whether the distribution is enabled to accept end user requests for content.
  /// [items] Optional.
  MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups({
    this.enabled,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'items': ?items,
    };
  }

  factory MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      items: map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}

