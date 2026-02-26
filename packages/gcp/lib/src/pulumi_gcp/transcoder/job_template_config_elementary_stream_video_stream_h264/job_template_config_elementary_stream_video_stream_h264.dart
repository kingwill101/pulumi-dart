// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigElementaryStreamVideoStreamH264 {
  /// The video bitrate in bits per second.
  final int bitrateBps;

  /// Target CRF level. The default is '21'.
  final int? crfLevel;

  /// The entropy coder to use. The default is 'cabac'.
  final String? entropyCoder;

  /// The target video frame rate in frames per second (FPS).
  final int frameRate;

  /// Select the GOP size based on the specified duration. The default is '3s'.
  final String? gopDuration;

  /// The height of the video in pixels.
  final int? heightPixels;

  /// HLG color format setting for H264.
  final Map<String, dynamic>? hlg;

  /// Pixel format to use. The default is 'yuv420p'.
  final String? pixelFormat;

  /// Enforces the specified codec preset. The default is 'veryfast'.
  final String? preset;

  /// Enforces the specified codec profile.
  final String? profile;

  /// Specify the mode. The default is 'vbr'.
  final String? rateControlMode;

  /// SDR color format setting for H264.
  final Map<String, dynamic>? sdr;

  /// Initial fullness of the Video Buffering Verifier (VBV) buffer in bits.
  final int? vbvFullnessBits;

  /// Size of the Video Buffering Verifier (VBV) buffer in bits.
  final int? vbvSizeBits;

  /// The width of the video in pixels.
  final int? widthPixels;

  JobTemplateConfigElementaryStreamVideoStreamH264({
    required this.bitrateBps,
    this.crfLevel,
    this.entropyCoder,
    required this.frameRate,
    this.gopDuration,
    this.heightPixels,
    this.hlg,
    this.pixelFormat,
    this.preset,
    this.profile,
    this.rateControlMode,
    this.sdr,
    this.vbvFullnessBits,
    this.vbvSizeBits,
    this.widthPixels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bitrateBps'] = bitrateBps;
    final crfLevelValue = crfLevel;
    if (crfLevelValue != null) {
      map['crfLevel'] = crfLevelValue;
    }
    final entropyCoderValue = entropyCoder;
    if (entropyCoderValue != null) {
      map['entropyCoder'] = entropyCoderValue;
    }
    map['frameRate'] = frameRate;
    final gopDurationValue = gopDuration;
    if (gopDurationValue != null) {
      map['gopDuration'] = gopDurationValue;
    }
    final heightPixelsValue = heightPixels;
    if (heightPixelsValue != null) {
      map['heightPixels'] = heightPixelsValue;
    }
    final hlgValue = hlg;
    if (hlgValue != null) {
      map['hlg'] = hlgValue;
    }
    final pixelFormatValue = pixelFormat;
    if (pixelFormatValue != null) {
      map['pixelFormat'] = pixelFormatValue;
    }
    final presetValue = preset;
    if (presetValue != null) {
      map['preset'] = presetValue;
    }
    final profileValue = profile;
    if (profileValue != null) {
      map['profile'] = profileValue;
    }
    final rateControlModeValue = rateControlMode;
    if (rateControlModeValue != null) {
      map['rateControlMode'] = rateControlModeValue;
    }
    final sdrValue = sdr;
    if (sdrValue != null) {
      map['sdr'] = sdrValue;
    }
    final vbvFullnessBitsValue = vbvFullnessBits;
    if (vbvFullnessBitsValue != null) {
      map['vbvFullnessBits'] = vbvFullnessBitsValue;
    }
    final vbvSizeBitsValue = vbvSizeBits;
    if (vbvSizeBitsValue != null) {
      map['vbvSizeBits'] = vbvSizeBitsValue;
    }
    final widthPixelsValue = widthPixels;
    if (widthPixelsValue != null) {
      map['widthPixels'] = widthPixelsValue;
    }
    return map;
  }

  factory JobTemplateConfigElementaryStreamVideoStreamH264.fromMap(
      Map<String, dynamic> map) {
    return JobTemplateConfigElementaryStreamVideoStreamH264(
      bitrateBps: map['bitrateBps'] as int,
      crfLevel: map['crfLevel'] == null ? null : map['crfLevel'] as int,
      entropyCoder:
          map['entropyCoder'] == null ? null : map['entropyCoder'] as String,
      frameRate: map['frameRate'] as int,
      gopDuration:
          map['gopDuration'] == null ? null : map['gopDuration'] as String,
      heightPixels:
          map['heightPixels'] == null ? null : map['heightPixels'] as int,
      hlg: map['hlg'] == null
          ? null
          : (map['hlg'] as Map).cast<String, dynamic>(),
      pixelFormat:
          map['pixelFormat'] == null ? null : map['pixelFormat'] as String,
      preset: map['preset'] == null ? null : map['preset'] as String,
      profile: map['profile'] == null ? null : map['profile'] as String,
      rateControlMode: map['rateControlMode'] == null
          ? null
          : map['rateControlMode'] as String,
      sdr: map['sdr'] == null
          ? null
          : (map['sdr'] as Map).cast<String, dynamic>(),
      vbvFullnessBits:
          map['vbvFullnessBits'] == null ? null : map['vbvFullnessBits'] as int,
      vbvSizeBits:
          map['vbvSizeBits'] == null ? null : map['vbvSizeBits'] as int,
      widthPixels:
          map['widthPixels'] == null ? null : map['widthPixels'] as int,
    );
  }
}
