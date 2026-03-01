// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for MPEG Common Encryption (MPEG-CENC).
class MpegCommonEncryption {
  /// Specify the encryption scheme. Supported encryption schemes: - `cenc` - `cbcs`
  final String scheme;

  /// Creates a new [MpegCommonEncryption].
  /// [scheme] Specify the encryption scheme. Supported encryption schemes: - `cenc` - `cbcs`
  MpegCommonEncryption({required this.scheme});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scheme': scheme};
  }

  factory MpegCommonEncryption.fromMap(Map<String, dynamic> map) {
    return MpegCommonEncryption(scheme: map['scheme'] as String);
  }
}
