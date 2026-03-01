// ignore_for_file: unused_element, unnecessary_cast


/// Azure quantum workspace Api key details.
class ApiKeyResponse {
  /// The creation time of the api key.
  final String? createdAt;
  /// The Api key.
  final String key;

  /// Creates a new [ApiKeyResponse].
  /// [createdAt] The creation time of the api key.
  /// [key] The Api key.
  ApiKeyResponse({
    this.createdAt,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'key': key,
    };
  }

  factory ApiKeyResponse.fromMap(Map<String, dynamic> map) {
    return ApiKeyResponse(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      key: map['key'] as String,
    );
  }
}

