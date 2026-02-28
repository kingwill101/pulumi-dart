// ignore_for_file: unused_element, unnecessary_cast


class ChannelEncoderSettingsAudioDescriptionCodecSettingsEac3AtmosSettings {
  /// Average bitrate in bits/second.
  final double? bitrate;
  /// Dolby Digital Plus with Dolby Atmos coding mode.
  final String? codingMode;
  /// Sets the dialnorm for the output.
  final double? dialnorm;
  /// Sets the Dolby dynamic range compression profile.
  final String? drcLine;
  /// Sets the profile for heavy Dolby dynamic range compression.
  final String? drcRf;
  /// Height dimensional trim.
  final double? heightTrim;
  /// Surround dimensional trim.
  final double? surroundTrim;

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
      bitrate: map['bitrate'] == null ? null : map['bitrate'] as double,
      codingMode: map['codingMode'] == null ? null : map['codingMode'] as String,
      dialnorm: map['dialnorm'] == null ? null : map['dialnorm'] as double,
      drcLine: map['drcLine'] == null ? null : map['drcLine'] as String,
      drcRf: map['drcRf'] == null ? null : map['drcRf'] as String,
      heightTrim: map['heightTrim'] == null ? null : map['heightTrim'] as double,
      surroundTrim: map['surroundTrim'] == null ? null : map['surroundTrim'] as double,
    );
  }
}

