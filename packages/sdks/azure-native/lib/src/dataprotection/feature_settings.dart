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
  FeatureSettings({
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
      crossRegionRestoreSettings: map['crossRegionRestoreSettings'] == null ? null : (CrossRegionRestoreSettings.fromMap((map['crossRegionRestoreSettings']! as Map).cast<String, dynamic>())).input(),
      crossSubscriptionRestoreSettings: map['crossSubscriptionRestoreSettings'] == null ? null : (CrossSubscriptionRestoreSettings.fromMap((map['crossSubscriptionRestoreSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

