// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_mode_settings_exclusion_response.dart';

/// Properties that define the scope private link mode settings.
class AccessModeSettingsResponse {
  /// List of exclusions that override the default access mode settings for specific private endpoint connections.
  final pulumi.Input<List<AccessModeSettingsExclusionResponse>>? exclusions;
  /// Specifies the default access mode of ingestion through associated private endpoints in scope. If not specified default value is 'Open'. You can override this default setting for a specific private endpoint connection by adding an exclusion in the 'exclusions' array.
  final pulumi.Input<String> ingestionAccessMode;
  /// Specifies the default access mode of queries through associated private endpoints in scope. If not specified default value is 'Open'. You can override this default setting for a specific private endpoint connection by adding an exclusion in the 'exclusions' array.
  final pulumi.Input<String> queryAccessMode;

  /// Creates a new [AccessModeSettingsResponse].
  /// [exclusions] List of exclusions that override the default access mode settings for specific private endpoint connections.
  /// [ingestionAccessMode] Specifies the default access mode of ingestion through associated private endpoints in scope. If not specified default value is 'Open'. You can override this default setting for a specific private endpoint connection by adding an exclusion in the 'exclusions' array.
  /// [queryAccessMode] Specifies the default access mode of queries through associated private endpoints in scope. If not specified default value is 'Open'. You can override this default setting for a specific private endpoint connection by adding an exclusion in the 'exclusions' array.
  AccessModeSettingsResponse({
    this.exclusions,
    required this.ingestionAccessMode,
    required this.queryAccessMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<AccessModeSettingsExclusionResponse>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<AccessModeSettingsExclusionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingestionAccessMode': ingestionAccessMode,
      'queryAccessMode': queryAccessMode,
    };
  }

  factory AccessModeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AccessModeSettingsResponse(
      exclusions: map['exclusions'] == null ? null : (pulumi.Input.decodeList<AccessModeSettingsExclusionResponse>(map['exclusions']!, (value) => AccessModeSettingsExclusionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingestionAccessMode: (map['ingestionAccessMode'] as String).input(),
      queryAccessMode: (map['queryAccessMode'] as String).input(),
    );
  }
}

