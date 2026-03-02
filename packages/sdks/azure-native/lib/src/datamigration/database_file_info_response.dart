// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database file specific information
class DatabaseFileInfoResponse {
  /// Name of the database
  final pulumi.Input<String>? databaseName;
  /// Database file type
  final pulumi.Input<String>? fileType;
  /// Unique identifier for database file
  final pulumi.Input<String>? id;
  /// Logical name of the file
  final pulumi.Input<String>? logicalName;
  /// Operating-system full path of the file
  final pulumi.Input<String>? physicalFullName;
  /// Suggested full path of the file for restoring
  final pulumi.Input<String>? restoreFullName;
  /// Size of the file in megabytes
  final pulumi.Input<double>? sizeMB;

  /// Creates a new [DatabaseFileInfoResponse].
  /// [databaseName] Name of the database
  /// [fileType] Database file type
  /// [id] Unique identifier for database file
  /// [logicalName] Logical name of the file
  /// [physicalFullName] Operating-system full path of the file
  /// [restoreFullName] Suggested full path of the file for restoring
  /// [sizeMB] Size of the file in megabytes
  DatabaseFileInfoResponse({
    this.databaseName,
    this.fileType,
    this.id,
    this.logicalName,
    this.physicalFullName,
    this.restoreFullName,
    this.sizeMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseName': ?databaseName,
      'fileType': ?fileType,
      'id': ?id,
      'logicalName': ?logicalName,
      'physicalFullName': ?physicalFullName,
      'restoreFullName': ?restoreFullName,
      'sizeMB': ?sizeMB,
    };
  }

  factory DatabaseFileInfoResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseFileInfoResponse(
      databaseName: map['databaseName'] == null ? null : (map['databaseName'] as String).input(),
      fileType: map['fileType'] == null ? null : (map['fileType'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      logicalName: map['logicalName'] == null ? null : (map['logicalName'] as String).input(),
      physicalFullName: map['physicalFullName'] == null ? null : (map['physicalFullName'] as String).input(),
      restoreFullName: map['restoreFullName'] == null ? null : (map['restoreFullName'] as String).input(),
      sizeMB: map['sizeMB'] == null ? null : (map['sizeMB'] as double).input(),
    );
  }
}

