// ignore_for_file: unused_element, unnecessary_cast

import 'cross_region_restore_settings_response.dart';
import 'cross_subscription_restore_settings_response.dart';

/// Class containing feature settings of vault
class FeatureSettingsResponse {
  final CrossRegionRestoreSettingsResponse? crossRegionRestoreSettings;
  /// CrossSubscriptionRestore Settings
  final CrossSubscriptionRestoreSettingsResponse? crossSubscriptionRestoreSettings;

  /// Creates a new [FeatureSettingsResponse].
  /// [crossRegionRestoreSettings] Optional.
  /// [crossSubscriptionRestoreSettings] CrossSubscriptionRestore Settings
  FeatureSettingsResponse({
    this.crossRegionRestoreSettings,
    this.crossSubscriptionRestoreSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossRegionRestoreSettings': ?crossRegionRestoreSettings == null ? null : crossRegionRestoreSettings!.toMap(),
      'crossSubscriptionRestoreSettings': ?crossSubscriptionRestoreSettings == null ? null : crossSubscriptionRestoreSettings!.toMap(),
    };
  }

  factory FeatureSettingsResponse.fromMap(Map<String, dynamic> map) {
    return FeatureSettingsResponse(
      crossRegionRestoreSettings: map['crossRegionRestoreSettings'] == null ? null : CrossRegionRestoreSettingsResponse.fromMap((map['crossRegionRestoreSettings'] as Map).cast<String, dynamic>()),
      crossSubscriptionRestoreSettings: map['crossSubscriptionRestoreSettings'] == null ? null : CrossSubscriptionRestoreSettingsResponse.fromMap((map['crossSubscriptionRestoreSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

