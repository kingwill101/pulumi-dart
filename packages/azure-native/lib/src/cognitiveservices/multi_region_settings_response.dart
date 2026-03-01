// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_setting_response.dart';

/// The multiregion settings Cognitive Services account.
class MultiRegionSettingsResponse {
  final List<RegionSettingResponse>? regions;
  /// Multiregion routing methods.
  final String? routingMethod;

  /// Creates a new [MultiRegionSettingsResponse].
  /// [regions] Optional.
  /// [routingMethod] Multiregion routing methods.
  MultiRegionSettingsResponse({
    this.regions,
    this.routingMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions': ?regions == null ? null : pulumi.Input.encodeList<RegionSettingResponse, Map<String, dynamic>>(regions!, (value) => value.toMap()),
      'routingMethod': ?routingMethod,
    };
  }

  factory MultiRegionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MultiRegionSettingsResponse(
      regions: map['regions'] == null ? null : pulumi.Input.decodeList<RegionSettingResponse>(map['regions'], (value) => RegionSettingResponse.fromMap((value as Map).cast<String, dynamic>())),
      routingMethod: map['routingMethod'] == null ? null : map['routingMethod'] as String,
    );
  }
}

