// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for MPEG Common Encryption (MPEG-CENC).
class MpegCommonEncryptionResponse {
  /// Specify the encryption scheme. Supported encryption schemes: - `cenc` - `cbcs`
  final String scheme;

  /// Creates a new [MpegCommonEncryptionResponse].
  /// [scheme] Specify the encryption scheme. Supported encryption schemes: - `cenc` - `cbcs`
  MpegCommonEncryptionResponse({required this.scheme});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'scheme': scheme};
  }

  factory MpegCommonEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return MpegCommonEncryptionResponse(scheme: map['scheme'] as String);
  }
}
