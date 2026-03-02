// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multiplex_program_multiplex_program_settings_video_settings_statmux_settings.dart';

class MultiplexProgramMultiplexProgramSettingsVideoSettings {
  /// Constant bitrate value.
  final pulumi.Input<int>? constantBitrate;
  /// Statmux settings. See Statmux Settings for more details.
  final pulumi.Input<MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings>? statmuxSettings;

  /// Creates a new [MultiplexProgramMultiplexProgramSettingsVideoSettings].
  /// [constantBitrate] Constant bitrate value.
  /// [statmuxSettings] Statmux settings. See Statmux Settings for more details.
  MultiplexProgramMultiplexProgramSettingsVideoSettings({
    this.constantBitrate,
    this.statmuxSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'constantBitrate': ?constantBitrate,
      'statmuxSettings': ?pulumi.Input.mapOptionalInputValue<MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings, Map<String, dynamic>>(statmuxSettings, (value) => value.toMap()),
    };
  }

  factory MultiplexProgramMultiplexProgramSettingsVideoSettings.fromMap(Map<String, dynamic> map) {
    return MultiplexProgramMultiplexProgramSettingsVideoSettings(
      constantBitrate: map['constantBitrate'] == null ? null : (map['constantBitrate'] as int).input(),
      statmuxSettings: map['statmuxSettings'] == null ? null : (MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings.fromMap((map['statmuxSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

