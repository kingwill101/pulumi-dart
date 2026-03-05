// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3AtmosSettings {
  /// Average bitrate in bits/second.
  final pulumi.Input<double>? bitrate;
  /// Dolby Digital Plus with Dolby Atmos coding mode.
  final pulumi.Input<String>? codingMode;
  /// Sets the dialnorm for the output.
  final pulumi.Input<double>? dialnorm;
  /// Sets the Dolby dynamic range compression profile.
  final pulumi.Input<String>? drcLine;
  /// Sets the profile for heavy Dolby dynamic range compression.
  final pulumi.Input<String>? drcRf;
  /// Height dimensional trim.
  final pulumi.Input<double>? heightTrim;
  /// Surround dimensional trim.
  final pulumi.Input<double>? surroundTrim;

  /// Creates a new [ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3AtmosSettings].
  /// [bitrate] Average bitrate in bits/second.
  /// [codingMode] Dolby Digital Plus with Dolby Atmos coding mode.
  /// [dialnorm] Sets the dialnorm for the output.
  /// [drcLine] Sets the Dolby dynamic range compression profile.
  /// [drcRf] Sets the profile for heavy Dolby dynamic range compression.
  /// [heightTrim] Height dimensional trim.
  /// [surroundTrim] Surround dimensional trim.
  ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3AtmosSettings({
    this.bitrate,
    this.codingMode,
    this.dialnorm,
    this.drcLine,
    this.drcRf,
    this.heightTrim,
    this.surroundTrim,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitrate': ?bitrate,
      'codingMode': ?codingMode,
      'dialnorm': ?dialnorm,
      'drcLine': ?drcLine,
      'drcRf': ?drcRf,
      'heightTrim': ?heightTrim,
      'surroundTrim': ?surroundTrim,
    };
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3AtmosSettings.fromMap(Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3AtmosSettings(
      bitrate: (() { final guardedValue = map['bitrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      codingMode: (() { final guardedValue = map['codingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dialnorm: (() { final guardedValue = map['dialnorm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      drcLine: (() { final guardedValue = map['drcLine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      drcRf: (() { final guardedValue = map['drcRf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      heightTrim: (() { final guardedValue = map['heightTrim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      surroundTrim: (() { final guardedValue = map['surroundTrim']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

