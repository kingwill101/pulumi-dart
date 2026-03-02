// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics {
  /// Whether detailed status code metrics are enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics].
  /// [enabled] Whether detailed status code metrics are enabled.
  StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics.fromMap(Map<String, dynamic> map) {
    return StorageLensConfigurationStorageLensConfigurationAccountLevelDetailedStatusCodeMetrics(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
    );
  }
}

