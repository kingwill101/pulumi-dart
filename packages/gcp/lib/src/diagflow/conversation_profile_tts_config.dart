// ignore_for_file: unused_element, unnecessary_cast

import 'conversation_profile_tts_config_voice.dart';

class ConversationProfileTtsConfig {
  /// An identifier which selects 'audio effects' profiles that are applied on (post synthesized) text to speech. Effects are applied on top of each other in the order they are given.
  final List<String>? effectsProfileIds;

  /// Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20 semitones from the original pitch. -20 means decrease 20 semitones from the original pitch.
  final double? pitch;

  /// Speaking rate/speed, in the range [0.25, 4.0].
  final double? speakingRate;

  /// The desired voice of the synthesized audio.
  /// Structure is documented below.
  final ConversationProfileTtsConfigVoice? voice;

  /// Volume gain (in dB) of the normal native volume supported by the specific voice.
  final double? volumeGainDb;

  /// Creates a new [ConversationProfileTtsConfig].
  /// [effectsProfileIds] An identifier which selects 'audio effects' profiles that are applied on (post synthesized) text to speech. Effects are applied on top of each other in the order they are given.
  /// [pitch] Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20 semitones from the original pitch. -20 means decrease 20 semitones from the original pitch.
  /// [speakingRate] Speaking rate/speed, in the range [0.25, 4.0].
  /// [voice] The desired voice of the synthesized audio.
  /// [volumeGainDb] Volume gain (in dB) of the normal native volume supported by the specific voice.
  ConversationProfileTtsConfig({
    this.effectsProfileIds,
    this.pitch,
    this.speakingRate,
    this.voice,
    this.volumeGainDb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectsProfileIds': ?effectsProfileIds,
      'pitch': ?pitch,
      'speakingRate': ?speakingRate,
      'voice': ?voice == null ? null : voice!.toMap(),
      'volumeGainDb': ?volumeGainDb,
    };
  }

  factory ConversationProfileTtsConfig.fromMap(Map<String, dynamic> map) {
    return ConversationProfileTtsConfig(
      effectsProfileIds: map['effectsProfileIds'] == null
          ? null
          : (map['effectsProfileIds'] as List).cast<String>(),
      pitch: map['pitch'] == null ? null : map['pitch'] as double,
      speakingRate: map['speakingRate'] == null
          ? null
          : map['speakingRate'] as double,
      voice: map['voice'] == null
          ? null
          : ConversationProfileTtsConfigVoice.fromMap(
              (map['voice'] as Map).cast<String, dynamic>(),
            ),
      volumeGainDb: map['volumeGainDb'] == null
          ? null
          : map['volumeGainDb'] as double,
    );
  }
}
