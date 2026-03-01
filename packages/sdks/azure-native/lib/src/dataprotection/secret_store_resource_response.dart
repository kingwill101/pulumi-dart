// ignore_for_file: unused_element, unnecessary_cast


/// Class representing a secret store resource.
class SecretStoreResourceResponse {
  /// Gets or sets the type of secret store
  final String secretStoreType;
  /// Uri to get to the resource
  final String? uri;
  /// Gets or sets value stored in secret store resource
  final String? value;

  /// Creates a new [SecretStoreResourceResponse].
  /// [secretStoreType] Gets or sets the type of secret store
  /// [uri] Uri to get to the resource
  /// [value] Gets or sets value stored in secret store resource
  SecretStoreResourceResponse({
    required this.secretStoreType,
    this.uri,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretStoreType': secretStoreType,
      'uri': ?uri,
      'value': ?value,
    };
  }

  factory SecretStoreResourceResponse.fromMap(Map<String, dynamic> map) {
    return SecretStoreResourceResponse(
      secretStoreType: map['secretStoreType'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

