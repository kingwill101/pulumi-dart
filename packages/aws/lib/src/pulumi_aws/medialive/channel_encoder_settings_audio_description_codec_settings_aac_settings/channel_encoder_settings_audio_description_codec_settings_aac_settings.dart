// ignore_for_file: unused_element, unnecessary_cast

class ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings {
  /// Average bitrate in bits/second.
  final double? bitrate;

  /// Mono, Stereo, or 5.1 channel layout.
  final String? codingMode;

  /// Set to "broadcasterMixedAd" when input contains pre-mixed main audio + AD (narration) as a stereo pair.
  final String? inputType;

  /// AAC profile.
  final String? profile;

  /// The rate control mode.
  final String? rateControlMode;

  /// Sets LATM/LOAS AAC output for raw containers.
  final String? rawFormat;

  /// Sample rate in Hz.
  final double? sampleRate;

  /// Use MPEG-2 AAC audio instead of MPEG-4 AAC audio for raw or MPEG-2 Transport Stream containers.
  final String? spec;

  /// VBR Quality Level - Only used if rateControlMode is VBR.
  final String? vbrQuality;

  ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings({
    this.bitrate,
    this.codingMode,
    this.inputType,
    this.profile,
    this.rateControlMode,
    this.rawFormat,
    this.sampleRate,
    this.spec,
    this.vbrQuality,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bitrateValue = bitrate;
    if (bitrateValue != null) {
      map['bitrate'] = bitrateValue;
    }
    final codingModeValue = codingMode;
    if (codingModeValue != null) {
      map['codingMode'] = codingModeValue;
    }
    final inputTypeValue = inputType;
    if (inputTypeValue != null) {
      map['inputType'] = inputTypeValue;
    }
    final profileValue = profile;
    if (profileValue != null) {
      map['profile'] = profileValue;
    }
    final rateControlModeValue = rateControlMode;
    if (rateControlModeValue != null) {
      map['rateControlMode'] = rateControlModeValue;
    }
    final rawFormatValue = rawFormat;
    if (rawFormatValue != null) {
      map['rawFormat'] = rawFormatValue;
    }
    final sampleRateValue = sampleRate;
    if (sampleRateValue != null) {
      map['sampleRate'] = sampleRateValue;
    }
    final specValue = spec;
    if (specValue != null) {
      map['spec'] = specValue;
    }
    final vbrQualityValue = vbrQuality;
    if (vbrQualityValue != null) {
      map['vbrQuality'] = vbrQualityValue;
    }
    return map;
  }

  factory ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings.fromMap(
      Map<String, dynamic> map) {
    return ChannelEncoderSettingsAudioDescriptionCodecSettingsAacSettings(
      bitrate: map['bitrate'] == null ? null : map['bitrate'] as double,
      codingMode:
          map['codingMode'] == null ? null : map['codingMode'] as String,
      inputType: map['inputType'] == null ? null : map['inputType'] as String,
      profile: map['profile'] == null ? null : map['profile'] as String,
      rateControlMode: map['rateControlMode'] == null
          ? null
          : map['rateControlMode'] as String,
      rawFormat: map['rawFormat'] == null ? null : map['rawFormat'] as String,
      sampleRate:
          map['sampleRate'] == null ? null : map['sampleRate'] as double,
      spec: map['spec'] == null ? null : map['spec'] as String,
      vbrQuality:
          map['vbrQuality'] == null ? null : map['vbrQuality'] as String,
    );
  }
}
