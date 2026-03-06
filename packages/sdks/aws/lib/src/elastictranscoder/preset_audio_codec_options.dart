// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PresetAudioCodecOptions {
  /// The bit depth of a sample is how many bits of information are included in the audio samples. Valid values are `16` and `24`. (FLAC/PCM Only)
  final pulumi.Input<String>? bitDepth;
  /// The order the bits of a PCM sample are stored in. The supported value is LittleEndian. (PCM Only)
  final pulumi.Input<String>? bitOrder;
  /// If you specified AAC for Audio:Codec, choose the AAC profile for the output file.
  final pulumi.Input<String>? profile;
  /// Whether audio samples are represented with negative and positive numbers (signed) or only positive numbers (unsigned). The supported value is Signed. (PCM Only)
  final pulumi.Input<String>? signed;

  /// Creates a new [PresetAudioCodecOptions].
  /// [bitDepth] The bit depth of a sample is how many bits of information are included in the audio samples. Valid values are `16` and `24`. (FLAC/PCM Only)
  /// [bitOrder] The order the bits of a PCM sample are stored in. The supported value is LittleEndian. (PCM Only)
  /// [profile] If you specified AAC for Audio:Codec, choose the AAC profile for the output file.
  /// [signed] Whether audio samples are represented with negative and positive numbers (signed) or only positive numbers (unsigned). The supported value is Signed. (PCM Only)
  const PresetAudioCodecOptions({
    this.bitDepth,
    this.bitOrder,
    this.profile,
    this.signed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitDepth': ?bitDepth,
      'bitOrder': ?bitOrder,
      'profile': ?profile,
      'signed': ?signed,
    };
  }

  factory PresetAudioCodecOptions.fromMap(Map<String, dynamic> map) {
    return PresetAudioCodecOptions(
      bitDepth: (() { final guardedValue = map['bitDepth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bitOrder: (() { final guardedValue = map['bitOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      profile: (() { final guardedValue = map['profile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signed: (() { final guardedValue = map['signed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

