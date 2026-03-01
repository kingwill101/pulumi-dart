// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listOnlineEndpointKeys.
class ListOnlineEndpointKeysResult {
  /// The primary key.
  final String? primaryKey;
  /// The secondary key.
  final String? secondaryKey;

  /// Creates a new [ListOnlineEndpointKeysResult].
  /// [primaryKey] The primary key.
  /// [secondaryKey] The secondary key.
  ListOnlineEndpointKeysResult({
    this.primaryKey,
    this.secondaryKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': ?primaryKey,
      'secondaryKey': ?secondaryKey,
    };
  }

  factory ListOnlineEndpointKeysResult.fromMap(Map<String, dynamic> map) {
    return ListOnlineEndpointKeysResult(
      primaryKey: map['primaryKey'] == null ? null : map['primaryKey'] as String,
      secondaryKey: map['secondaryKey'] == null ? null : map['secondaryKey'] as String,
    );
  }
}

