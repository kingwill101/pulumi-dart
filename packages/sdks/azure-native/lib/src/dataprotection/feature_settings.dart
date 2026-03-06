// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cross_region_restore_settings.dart';
import 'cross_subscription_restore_settings.dart';

/// Class containing feature settings of vault
class FeatureSettings {
  final pulumi.Input<CrossRegionRestoreSettings>? crossRegionRestoreSettings;
  /// CrossSubscriptionRestore Settings
  final pulumi.Input<CrossSubscriptionRestoreSettings>? crossSubscriptionRestoreSettings;

  /// Creates a new [FeatureSettings].
  /// [crossRegionRestoreSettings] Optional.
  /// [crossSubscriptionRestoreSettings] CrossSubscriptionRestore Settings
  const FeatureSettings({
    this.crossRegionRestoreSettings,
    this.crossSubscriptionRestoreSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossRegionRestoreSettings': ?pulumi.Input.mapOptionalInputValue<CrossRegionRestoreSettings, Map<String, dynamic>>(crossRegionRestoreSettings, (value) => value.toMap()),
      'crossSubscriptionRestoreSettings': ?pulumi.Input.mapOptionalInputValue<CrossSubscriptionRestoreSettings, Map<String, dynamic>>(crossSubscriptionRestoreSettings, (value) => value.toMap()),
    };
  }

  factory FeatureSettings.fromMap(Map<String, dynamic> map) {
    return FeatureSettings(
      crossRegionRestoreSettings: (() { final guardedValue = map['crossRegionRestoreSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CrossRegionRestoreSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      crossSubscriptionRestoreSettings: (() { final guardedValue = map['crossSubscriptionRestoreSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CrossSubscriptionRestoreSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

