// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_setting_response.dart';

/// The multiregion settings Cognitive Services account.
class MultiRegionSettingsResponse {
  final pulumi.Input<List<RegionSettingResponse>>? regions;

  /// Multiregion routing methods.
  final pulumi.Input<String>? routingMethod;

  /// Creates a new [MultiRegionSettingsResponse].
  /// [regions] Optional.
  /// [routingMethod] Multiregion routing methods.
  MultiRegionSettingsResponse({this.regions, this.routingMethod});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regions':
          ?pulumi.Input.mapOptionalInputValue<
            List<RegionSettingResponse>,
            List<Map<String, dynamic>>
          >(
            regions,
            (value) =>
                pulumi.Input.encodeList<
                  RegionSettingResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'routingMethod': ?routingMethod,
    };
  }

  factory MultiRegionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return MultiRegionSettingsResponse(
      regions: (() {
        final guardedValue = map['regions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RegionSettingResponse>(
            guardedValue,
            (value) => RegionSettingResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      routingMethod: (() {
        final guardedValue = map['routingMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
