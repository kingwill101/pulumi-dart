// ignore_for_file: unused_element, unnecessary_cast


/// An API key used for authenticating with a configuration store endpoint.
class ApiKeyResponse {
  /// A connection string that can be used by supporting clients for authentication.
  final String connectionString;
  /// The key ID.
  final String id;
  /// The last time any of the key's properties were modified.
  final String lastModified;
  /// A name for the key describing its usage.
  final String name;
  /// Whether this key can only be used for read operations.
  final bool readOnly;
  /// The value of the key that is used for authentication purposes.
  final String value;

  /// Creates a new [ApiKeyResponse].
  /// [connectionString] A connection string that can be used by supporting clients for authentication.
  /// [id] The key ID.
  /// [lastModified] The last time any of the key's properties were modified.
  /// [name] A name for the key describing its usage.
  /// [readOnly] Whether this key can only be used for read operations.
  /// [value] The value of the key that is used for authentication purposes.
  ApiKeyResponse({
    required this.connectionString,
    required this.id,
    required this.lastModified,
    required this.name,
    required this.readOnly,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'id': id,
      'lastModified': lastModified,
      'name': name,
      'readOnly': readOnly,
      'value': value,
    };
  }

  factory ApiKeyResponse.fromMap(Map<String, dynamic> map) {
    return ApiKeyResponse(
      connectionString: map['connectionString'] as String,
      id: map['id'] as String,
      lastModified: map['lastModified'] as String,
      name: map['name'] as String,
      readOnly: map['readOnly'] as bool,
      value: map['value'] as String,
    );
  }
}

