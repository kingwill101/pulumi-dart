// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Project Database Details
class DatabaseInfo {
  /// Name of the database
  final pulumi.Input<String> sourceDatabaseName;

  /// Creates a new [DatabaseInfo].
  /// [sourceDatabaseName] Name of the database
  DatabaseInfo({required this.sourceDatabaseName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sourceDatabaseName': sourceDatabaseName};
  }

  factory DatabaseInfo.fromMap(Map<String, dynamic> map) {
    return DatabaseInfo(
      sourceDatabaseName: pulumi.Input.fromValue(
        map['sourceDatabaseName'] as String,
      ),
    );
  }
}
