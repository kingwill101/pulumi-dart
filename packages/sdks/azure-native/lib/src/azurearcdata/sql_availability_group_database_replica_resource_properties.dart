// ignore_for_file: unused_element, unnecessary_cast


/// The properties of Arc Sql availability group database replica resource
class SqlAvailabilityGroupDatabaseReplicaResourceProperties {
  /// the database name.
  final String? databaseName;

  /// Creates a new [SqlAvailabilityGroupDatabaseReplicaResourceProperties].
  /// [databaseName] the database name.
  SqlAvailabilityGroupDatabaseReplicaResourceProperties({
    this.databaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
    };
  }

  factory SqlAvailabilityGroupDatabaseReplicaResourceProperties.fromMap(Map<String, dynamic> map) {
    return SqlAvailabilityGroupDatabaseReplicaResourceProperties(
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
    );
  }
}

