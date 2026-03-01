// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listBatchEndpointKeys.
class ListBatchEndpointKeysResult {
  /// The primary key.
  final String? primaryKey;
  /// The secondary key.
  final String? secondaryKey;

  /// Creates a new [ListBatchEndpointKeysResult].
  /// [primaryKey] The primary key.
  /// [secondaryKey] The secondary key.
  ListBatchEndpointKeysResult({
    this.primaryKey,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': ?primaryKey,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory ListBatchEndpointKeysResult.fromMap(Map<String, dynamic> map) {
    return ListBatchEndpointKeysResult(
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey'] as String,
    );
  }
}

