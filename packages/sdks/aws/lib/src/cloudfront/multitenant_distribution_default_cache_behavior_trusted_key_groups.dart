// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups {
  /// Whether the distribution is enabled to accept end user requests for content.
  final pulumi.Input<bool>? enabled;
  final pulumi.Input<List<String>>? items;

  /// Creates a new [MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups].
  /// [enabled] Whether the distribution is enabled to accept end user requests for content.
  /// [items] Optional.
  MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups({
    this.enabled,
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled, 'items': ?items};
  }

  factory MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups.fromMap(
    Map<String, dynamic> map,
  ) {
    return MultitenantDistributionDefaultCacheBehaviorTrustedKeyGroups(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      items: (() {
        final guardedValue = map['items'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
