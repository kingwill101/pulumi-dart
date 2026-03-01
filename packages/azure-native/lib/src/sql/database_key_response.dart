// ignore_for_file: unused_element, unnecessary_cast


/// Database level key used for encryption at rest.
class DatabaseKeyResponse {
  /// The database key creation date.
  final String creationDate;
  /// Subregion of the server key.
  final String subregion;
  /// Thumbprint of the database key.
  final String thumbprint;
  /// The database key type. Only supported value is 'AzureKeyVault'.
  final String type;

  /// Creates a new [DatabaseKeyResponse].
  /// [creationDate] The database key creation date.
  /// [subregion] Subregion of the server key.
  /// [thumbprint] Thumbprint of the database key.
  /// [type] The database key type. Only supported value is 'AzureKeyVault'.
  DatabaseKeyResponse({
    required this.creationDate,
    required this.subregion,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationDate': creationDate,
      'subregion': subregion,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory DatabaseKeyResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseKeyResponse(
      creationDate: map['creationDate'] as String,
      subregion: map['subregion'] as String,
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
    );
  }
}

