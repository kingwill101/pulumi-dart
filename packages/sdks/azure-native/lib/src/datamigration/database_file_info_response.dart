// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Database file specific information
class DatabaseFileInfoResponse {
  /// Name of the database
  final pulumi.Input<String?>? databaseName;
  /// Database file type
  final pulumi.Input<String?>? fileType;
  /// Unique identifier for database file
  final pulumi.Input<String?>? id;
  /// Logical name of the file
  final pulumi.Input<String?>? logicalName;
  /// Operating-system full path of the file
  final pulumi.Input<String?>? physicalFullName;
  /// Suggested full path of the file for restoring
  final pulumi.Input<String?>? restoreFullName;
  /// Size of the file in megabytes
  final pulumi.Input<double?>? sizeMB;

  /// Creates a new [DatabaseFileInfoResponse].
  /// [databaseName] Name of the database
  /// [fileType] Database file type
  /// [id] Unique identifier for database file
  /// [logicalName] Logical name of the file
  /// [physicalFullName] Operating-system full path of the file
  /// [restoreFullName] Suggested full path of the file for restoring
  /// [sizeMB] Size of the file in megabytes
  const DatabaseFileInfoResponse({
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
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileType: (() { final guardedValue = map['fileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logicalName: (() { final guardedValue = map['logicalName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      physicalFullName: (() { final guardedValue = map['physicalFullName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreFullName: (() { final guardedValue = map['restoreFullName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeMB: (() { final guardedValue = map['sizeMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
