// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_mode_settings_exclusion.dart';

/// Properties that define the scope private link mode settings.
class AccessModeSettings {
  /// List of exclusions that override the default access mode settings for specific private endpoint connections.
  final pulumi.Input<List<AccessModeSettingsExclusion>?>? exclusions;
  /// Specifies the default access mode of ingestion through associated private endpoints in scope. If not specified default value is 'Open'. You can override this default setting for a specific private endpoint connection by adding an exclusion in the 'exclusions' array.
  final pulumi.Input<dynamic> ingestionAccessMode;
  /// Specifies the default access mode of queries through associated private endpoints in scope. If not specified default value is 'Open'. You can override this default setting for a specific private endpoint connection by adding an exclusion in the 'exclusions' array.
  final pulumi.Input<dynamic> queryAccessMode;

  /// Creates a new [AccessModeSettings].
  /// [exclusions] List of exclusions that override the default access mode settings for specific private endpoint connections.
  /// [ingestionAccessMode] Specifies the default access mode of ingestion through associated private endpoints in scope. If not specified default value is 'Open'. You can override this default setting for a specific private endpoint connection by adding an exclusion in the 'exclusions' array.
  /// [queryAccessMode] Specifies the default access mode of queries through associated private endpoints in scope. If not specified default value is 'Open'. You can override this default setting for a specific private endpoint connection by adding an exclusion in the 'exclusions' array.
  const AccessModeSettings({
    this.exclusions,
    required this.ingestionAccessMode,
    required this.queryAccessMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exclusions': ?pulumi.Input.mapOptionalInputValue<List<AccessModeSettingsExclusion>, List<Map<String, dynamic>>>(exclusions, (value) => pulumi.Input.encodeList<AccessModeSettingsExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingestionAccessMode': ingestionAccessMode,
      'queryAccessMode': queryAccessMode,
    };
  }

  factory AccessModeSettings.fromMap(Map<String, dynamic> map) {
    return AccessModeSettings(
      exclusions: (() { final guardedValue = map['exclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AccessModeSettingsExclusion>(guardedValue, (value) => AccessModeSettingsExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ingestionAccessMode: pulumi.Input.fromValue(map['ingestionAccessMode']),
      queryAccessMode: pulumi.Input.fromValue(map['queryAccessMode']),
    );
  }
}
