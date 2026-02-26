// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dialogflow_v2_voice_selection_params.dart';

/// Configuration of how speech should be synthesized.
class GoogleCloudDialogflowV2SynthesizeSpeechConfig {
  /// Optional. An identifier which selects 'audio effects' profiles that are applied on (post synthesized) text to speech. Effects are applied on top of each other in the order they are given.
  final List<String>? effectsProfileId;

  /// Optional. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20 semitones from the original pitch. -20 means decrease 20 semitones from the original pitch.
  final double? pitch;

  /// Optional. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is the normal native speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is half as fast. If unset(0.0), defaults to the native 1.0 speed. Any other values < 0.25 or > 4.0 will return an error.
  final double? speakingRate;

  /// Optional. The desired voice of the synthesized audio.
  final GoogleCloudDialogflowV2VoiceSelectionParams? voice;

  /// Optional. Volume gain (in dB) of the normal native volume supported by the specific voice, in the range [-96.0, 16.0]. If unset, or set to a value of 0.0 (dB), will play at normal native signal amplitude. A value of -6.0 (dB) will play at approximately half the amplitude of the normal native signal amplitude. A value of +6.0 (dB) will play at approximately twice the amplitude of the normal native signal amplitude. We strongly recommend not to exceed +10 (dB) as there's usually no effective increase in loudness for any value greater than that.
  final double? volumeGainDb;

  GoogleCloudDialogflowV2SynthesizeSpeechConfig({
    this.effectsProfileId,
    this.pitch,
    this.speakingRate,
    this.voice,
    this.volumeGainDb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final effectsProfileIdValue = effectsProfileId;
    if (effectsProfileIdValue != null) {
      map['effectsProfileId'] = effectsProfileIdValue;
    }
    final pitchValue = pitch;
    if (pitchValue != null) {
      map['pitch'] = pitchValue;
    }
    final speakingRateValue = speakingRate;
    if (speakingRateValue != null) {
      map['speakingRate'] = speakingRateValue;
    }
    final voiceValue = voice;
    if (voiceValue != null) {
      map['voice'] = voiceValue.toMap();
    }
    final volumeGainDbValue = volumeGainDb;
    if (volumeGainDbValue != null) {
      map['volumeGainDb'] = volumeGainDbValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowV2SynthesizeSpeechConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2SynthesizeSpeechConfig(
      effectsProfileId: map['effectsProfileId'] == null
          ? null
          : (map['effectsProfileId'] as List).cast<String>(),
      pitch: map['pitch'] == null ? null : map['pitch'] as double,
      speakingRate:
          map['speakingRate'] == null ? null : map['speakingRate'] as double,
      voice: map['voice'] == null
          ? null
          : GoogleCloudDialogflowV2VoiceSelectionParams.fromMap(
              (map['voice'] as Map).cast<String, dynamic>()),
      volumeGainDb:
          map['volumeGainDb'] == null ? null : map['volumeGainDb'] as double,
    );
  }
}
