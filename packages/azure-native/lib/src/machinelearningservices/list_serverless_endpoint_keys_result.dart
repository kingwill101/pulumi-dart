// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listServerlessEndpointKeys.
class ListServerlessEndpointKeysResult {
  /// The primary key.
  final String? primaryKey;
  /// The secondary key.
  final String? secondaryKey;

  /// Creates a new [ListServerlessEndpointKeysResult].
  /// [primaryKey] The primary key.
  /// [secondaryKey] The secondary key.
  ListServerlessEndpointKeysResult({
    this.primaryKey,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': ?primaryKey,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory ListServerlessEndpointKeysResult.fromMap(Map<String, dynamic> map) {
    return ListServerlessEndpointKeysResult(
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey'] as String,
    );
  }
}

