// ignore_for_file: unused_element, unnecessary_cast

class PresetAudioCodecOptions {
  /// The bit depth of a sample is how many bits of information are included in the audio samples. Valid values are `16` and `24`. (FLAC/PCM Only)
  final String? bitDepth;

  /// The order the bits of a PCM sample are stored in. The supported value is LittleEndian. (PCM Only)
  final String? bitOrder;

  /// If you specified AAC for Audio:Codec, choose the AAC profile for the output file.
  final String? profile;

  /// Whether audio samples are represented with negative and positive numbers (signed) or only positive numbers (unsigned). The supported value is Signed. (PCM Only)
  final String? signed;

  PresetAudioCodecOptions({
    this.bitDepth,
    this.bitOrder,
    this.profile,
    this.signed,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bitDepthValue = bitDepth;
    if (bitDepthValue != null) {
      map['bitDepth'] = bitDepthValue;
    }
    final bitOrderValue = bitOrder;
    if (bitOrderValue != null) {
      map['bitOrder'] = bitOrderValue;
    }
    final profileValue = profile;
    if (profileValue != null) {
      map['profile'] = profileValue;
    }
    final signedValue = signed;
    if (signedValue != null) {
      map['signed'] = signedValue;
    }
    return map;
  }

  factory PresetAudioCodecOptions.fromMap(Map<String, dynamic> map) {
    return PresetAudioCodecOptions(
      bitDepth: map['bitDepth'] == null ? null : map['bitDepth'] as String,
      bitOrder: map['bitOrder'] == null ? null : map['bitOrder'] as String,
      profile: map['profile'] == null ? null : map['profile'] as String,
      signed: map['signed'] == null ? null : map['signed'] as String,
    );
  }
}
