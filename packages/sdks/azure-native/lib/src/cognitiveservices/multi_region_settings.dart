// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_setting.dart';

/// The multiregion settings Cognitive Services account.
class MultiRegionSettings {
  final pulumi.Input<List<RegionSetting>>? regions;
  /// Multiregion routing methods.
  final pulumi.Input<String>? routingMethod;

  /// Creates a new [MultiRegionSettings].
  /// [regions] Optional.
  /// [routingMethod] Multiregion routing methods.
  MultiRegionSettings({
    this.regions,
    this.routingMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?pulumi.Input.mapOptionalInputValue<List<RegionSetting>, List<Map<String, dynamic>>>(regions, (value) => pulumi.Input.encodeList<RegionSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'routingMethod': ?routingMethod,
    };
  }

  factory MultiRegionSettings.fromMap(Map<String, dynamic> map) {
    return MultiRegionSettings(
      regions: map['regions'] == null ? null : (pulumi.Input.decodeList<RegionSetting>(map['regions'], (value) => RegionSetting.fromMap((value as Map).cast<String, dynamic>()))).input(),
      routingMethod: map['routingMethod'] == null ? null : (map['routingMethod'] as String).input(),
    );
  }
}

