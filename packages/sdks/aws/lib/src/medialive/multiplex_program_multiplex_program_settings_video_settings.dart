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
  const MultiplexProgramMultiplexProgramSettingsVideoSettings({
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
      constantBitrate: (() { final guardedValue = map['constantBitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      statmuxSettings: (() { final guardedValue = map['statmuxSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiplexProgramMultiplexProgramSettingsVideoSettingsStatmuxSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

