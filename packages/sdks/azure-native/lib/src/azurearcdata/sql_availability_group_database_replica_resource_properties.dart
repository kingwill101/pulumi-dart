// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of Arc Sql availability group database replica resource
class SqlAvailabilityGroupDatabaseReplicaResourceProperties {
  /// the database name.
  final pulumi.Input<String>? databaseName;

  /// Creates a new [SqlAvailabilityGroupDatabaseReplicaResourceProperties].
  /// [databaseName] the database name.
  SqlAvailabilityGroupDatabaseReplicaResourceProperties({this.databaseName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'databaseName': ?databaseName};
  }

  factory SqlAvailabilityGroupDatabaseReplicaResourceProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return SqlAvailabilityGroupDatabaseReplicaResourceProperties(
      databaseName: (() {
        final guardedValue = map['databaseName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
