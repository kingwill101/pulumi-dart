// ignore_for_file: unused_element, unnecessary_cast

import 'cross_region_restore_settings.dart';
import 'cross_subscription_restore_settings.dart';

/// Class containing feature settings of vault
class FeatureSettings {
  final CrossRegionRestoreSettings? crossRegionRestoreSettings;
  /// CrossSubscriptionRestore Settings
  final CrossSubscriptionRestoreSettings? crossSubscriptionRestoreSettings;

  /// Creates a new [FeatureSettings].
  /// [crossRegionRestoreSettings] Optional.
  /// [crossSubscriptionRestoreSettings] CrossSubscriptionRestore Settings
  FeatureSettings({
    this.crossRegionRestoreSettings,
    this.crossSubscriptionRestoreSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossRegionRestoreSettings': ?crossRegionRestoreSettings == null ? null : crossRegionRestoreSettings!.toMap(),
      'crossSubscriptionRestoreSettings': ?crossSubscriptionRestoreSettings == null ? null : crossSubscriptionRestoreSettings!.toMap(),
    };
  }

  factory FeatureSettings.fromMap(Map<String, dynamic> map) {
    return FeatureSettings(
      crossRegionRestoreSettings: map['crossRegionRestoreSettings'] == null ? null : CrossRegionRestoreSettings.fromMap((map['crossRegionRestoreSettings'] as Map).cast<String, dynamic>()),
      crossSubscriptionRestoreSettings: map['crossSubscriptionRestoreSettings'] == null ? null : CrossSubscriptionRestoreSettings.fromMap((map['crossSubscriptionRestoreSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

