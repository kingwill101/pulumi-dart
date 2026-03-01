// ignore_for_file: unused_element, unnecessary_cast


class DatadogApiKeyResponse {
  /// The time of creation of the API key.
  final String? created;
  /// The user that created the API key.
  final String? createdBy;
  /// The value of the API key.
  final String key;
  /// The name of the API key.
  final String? name;

  /// Creates a new [DatadogApiKeyResponse].
  /// [created] The time of creation of the API key.
  /// [createdBy] The user that created the API key.
  /// [key] The value of the API key.
  /// [name] The name of the API key.
  DatadogApiKeyResponse({
    this.created,
    this.createdBy,
    required this.key,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'createdBy': ?createdBy,
      'key': key,
      'name': ?name,
    };
  }

  factory DatadogApiKeyResponse.fromMap(Map<String, dynamic> map) {
    return DatadogApiKeyResponse(
      created: map['created'] == null ? null : map['created'] as String,
      createdBy: map['createdBy'] == null ? null : map['createdBy'] as String,
      key: map['key'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

