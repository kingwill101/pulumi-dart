// ignore_for_file: unused_element, unnecessary_cast


/// Information of orphaned users on the SQL server database.
class OrphanedUserInfoResponse {
  /// Parent database of the user
  final String? databaseName;
  /// Name of the orphaned user
  final String? name;

  /// Creates a new [OrphanedUserInfoResponse].
  /// [databaseName] Parent database of the user
  /// [name] Name of the orphaned user
  OrphanedUserInfoResponse({
    this.databaseName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'name': ?name,
    };
  }

  factory OrphanedUserInfoResponse.fromMap(Map<String, dynamic> map) {
    return OrphanedUserInfoResponse(
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

