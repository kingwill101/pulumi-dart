// ignore_for_file: unused_element, unnecessary_cast


class MultitenantDistributionCacheBehaviorTrustedKeyGroups {
  /// Whether the distribution is enabled to accept end user requests for content.
  final bool? enabled;
  final List<String>? items;

  /// Creates a new [MultitenantDistributionCacheBehaviorTrustedKeyGroups].
  /// [enabled] Whether the distribution is enabled to accept end user requests for content.
  /// [items] Optional.
  MultitenantDistributionCacheBehaviorTrustedKeyGroups({
    this.enabled,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'items': ?items,
    };
  }

  factory MultitenantDistributionCacheBehaviorTrustedKeyGroups.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionCacheBehaviorTrustedKeyGroups(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      items: map['items'] == null ? null : (map['items'] as List).cast<String>(),
    );
  }
}

