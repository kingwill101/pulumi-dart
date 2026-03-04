// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics {
  /// Whether the activity metrics are enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics].
  /// [enabled] Whether the activity metrics are enabled.
  StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics.fromMap(
    Map<String, dynamic> map,
  ) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelBucketLevelActivityMetrics(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
