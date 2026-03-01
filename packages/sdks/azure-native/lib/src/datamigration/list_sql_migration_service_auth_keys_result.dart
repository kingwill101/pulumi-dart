// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listSqlMigrationServiceAuthKeys.
class ListSqlMigrationServiceAuthKeysResult {
  /// The first authentication key.
  final String? authKey1;
  /// The second authentication key.
  final String? authKey2;

  /// Creates a new [ListSqlMigrationServiceAuthKeysResult].
  /// [authKey1] The first authentication key.
  /// [authKey2] The second authentication key.
  ListSqlMigrationServiceAuthKeysResult({
    this.authKey1,
    this.authKey2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authKey1': ?authKey1,
      'authKey2': ?authKey2,
    };
  }

  factory ListSqlMigrationServiceAuthKeysResult.fromMap(Map<String, dynamic> map) {
    return ListSqlMigrationServiceAuthKeysResult(
      authKey1: map['authKey1'] == null ? null : map['authKey1'] as String,
      authKey2: map['authKey2'] == null ? null : map['authKey2'] as String,
    );
  }
}

