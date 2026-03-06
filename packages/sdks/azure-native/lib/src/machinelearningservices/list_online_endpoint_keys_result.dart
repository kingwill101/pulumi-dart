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
  const ListOnlineEndpointKeysResult({
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
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

