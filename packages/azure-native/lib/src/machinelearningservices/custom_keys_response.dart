// ignore_for_file: unused_element, unnecessary_cast


/// Custom Keys credential object
class CustomKeysResponse {
  final Map<String, String>? keys;

  /// Creates a new [CustomKeysResponse].
  /// [keys] Optional.
  CustomKeysResponse({
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keys': ?keys,
    };
  }

  factory CustomKeysResponse.fromMap(Map<String, dynamic> map) {
    return CustomKeysResponse(
      keys: map['keys'] == null ? null : (map['keys'] as Map).cast<String, String>(),
    );
  }
}

