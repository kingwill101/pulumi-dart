// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listAccountKeys.
class ListAccountKeysResult {
  /// The primary key for accessing the Maps REST APIs.
  final String primaryKey;
  /// The last updated date and time of the primary key.
  final String primaryKeyLastUpdated;
  /// The secondary key for accessing the Maps REST APIs.
  final String secondaryKey;
  /// The last updated date and time of the secondary key.
  final String secondaryKeyLastUpdated;

  /// Creates a new [ListAccountKeysResult].
  /// [primaryKey] The primary key for accessing the Maps REST APIs.
  /// [primaryKeyLastUpdated] The last updated date and time of the primary key.
  /// [secondaryKey] The secondary key for accessing the Maps REST APIs.
  /// [secondaryKeyLastUpdated] The last updated date and time of the secondary key.
  const ListAccountKeysResult({
    required this.primaryKey,
    required this.primaryKeyLastUpdated,
    required this.secondaryKey,
    required this.secondaryKeyLastUpdated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryKey': primaryKey,
      'primaryKeyLastUpdated': primaryKeyLastUpdated,
      'secondaryKey': secondaryKey,
      'secondaryKeyLastUpdated': secondaryKeyLastUpdated,
    };
  }

  factory ListAccountKeysResult.fromMap(Map<String, dynamic> map) {
    return ListAccountKeysResult(
      primaryKey: map['primaryKey'] as String,
      primaryKeyLastUpdated: map['primaryKeyLastUpdated'] as String,
      secondaryKey: map['secondaryKey'] as String,
      secondaryKeyLastUpdated: map['secondaryKeyLastUpdated'] as String,
    );
  }
}
