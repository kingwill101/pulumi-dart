// ignore_for_file: unused_element, unnecessary_cast

import '../multiplex_program_multiplex_program_settings_video_settings_statmux_settings/multiplex_program_multiplex_program_settings_video_settings_statmux_settings.dart';

class MultiplexProgramMultiplexProgramSettingsVideoSettings {
  /// Constant bitrate value.
  final int? constantBitrate;

  /// Statmux settings. See Statmux Settings for more details.
  final MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings?
      statmuxSettings;

  MultiplexProgramMultiplexProgramSettingsVideoSettings({
    this.constantBitrate,
    this.statmuxSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final constantBitrateValue = constantBitrate;
    if (constantBitrateValue != null) {
      map['constantBitrate'] = constantBitrateValue;
    }
    final statmuxSettingsValue = statmuxSettings;
    if (statmuxSettingsValue != null) {
      map['statmuxSettings'] = statmuxSettingsValue.toMap();
    }
    return map;
  }

  factory MultiplexProgramMultiplexProgramSettingsVideoSettings.fromMap(
      Map<String, dynamic> map) {
    return MultiplexProgramMultiplexProgramSettingsVideoSettings(
      constantBitrate:
          map['constantBitrate'] == null ? null : map['constantBitrate'] as int,
      statmuxSettings: map['statmuxSettings'] == null
          ? null
          : MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings
              .fromMap((map['statmuxSettings'] as Map).cast<String, dynamic>()),
    );
  }
}
