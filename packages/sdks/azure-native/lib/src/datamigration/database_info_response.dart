// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Project Database Details
class DatabaseInfoResponse {
  /// Name of the database
  final pulumi.Input<String> sourceDatabaseName;

  /// Creates a new [DatabaseInfoResponse].
  /// [sourceDatabaseName] Name of the database
  DatabaseInfoResponse({
    required this.sourceDatabaseName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceDatabaseName': sourceDatabaseName,
    };
  }

  factory DatabaseInfoResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseInfoResponse(
      sourceDatabaseName: (map['sourceDatabaseName'] as String).input(),
    );
  }
}

