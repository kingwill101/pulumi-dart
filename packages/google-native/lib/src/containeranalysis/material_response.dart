// ignore_for_file: unused_element, unnecessary_cast

class MaterialResponse {
  final Map<String, String> digest;
  final String uri;

  /// Creates a new [MaterialResponse].
  /// [digest] Required.
  /// [uri] Required.
  MaterialResponse({
    required this.digest,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['digest'] = digest;
    map['uri'] = uri;
    return map;
  }

  factory MaterialResponse.fromMap(Map<String, dynamic> map) {
    return MaterialResponse(
      digest: (map['digest'] as Map).cast<String, String>(),
      uri: map['uri'] as String,
    );
  }
}
