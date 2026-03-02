// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_region_restore_settings_response.dart';
import 'cross_subscription_restore_settings_response.dart';

/// Class containing feature settings of vault
class FeatureSettingsResponse {
  final pulumi.Input<CrossRegionRestoreSettingsResponse>? crossRegionRestoreSettings;
  /// CrossSubscriptionRestore Settings
  final pulumi.Input<CrossSubscriptionRestoreSettingsResponse>? crossSubscriptionRestoreSettings;

  /// Creates a new [FeatureSettingsResponse].
  /// [crossRegionRestoreSettings] Optional.
  /// [crossSubscriptionRestoreSettings] CrossSubscriptionRestore Settings
  FeatureSettingsResponse({
    this.crossRegionRestoreSettings,
    this.crossSubscriptionRestoreSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossRegionRestoreSettings': ?pulumi.Input.mapOptionalInputValue<CrossRegionRestoreSettingsResponse, Map<String, dynamic>>(crossRegionRestoreSettings, (value) => value.toMap()),
      'crossSubscriptionRestoreSettings': ?pulumi.Input.mapOptionalInputValue<CrossSubscriptionRestoreSettingsResponse, Map<String, dynamic>>(crossSubscriptionRestoreSettings, (value) => value.toMap()),
    };
  }

  factory FeatureSettingsResponse.fromMap(Map<String, dynamic> map) {
    return FeatureSettingsResponse(
      crossRegionRestoreSettings: map['crossRegionRestoreSettings'] == null ? null : (CrossRegionRestoreSettingsResponse.fromMap((map['crossRegionRestoreSettings'] as Map).cast<String, dynamic>())).input(),
      crossSubscriptionRestoreSettings: map['crossSubscriptionRestoreSettings'] == null ? null : (CrossSubscriptionRestoreSettingsResponse.fromMap((map['crossSubscriptionRestoreSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

