// ignore_for_file: unused_element, unnecessary_cast

/// SDK Information.
class SDKInfoResponse {
  /// The SDK Language.
  final String language;

  /// Optional. The SDK version.
  final String version;

  SDKInfoResponse({
    required this.language,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['language'] = language;
    map['version'] = version;
    return map;
  }

  factory SDKInfoResponse.fromMap(Map<String, dynamic> map) {
    return SDKInfoResponse(
      language: map['language'] as String,
      version: map['version'] as String,
    );
  }
}
