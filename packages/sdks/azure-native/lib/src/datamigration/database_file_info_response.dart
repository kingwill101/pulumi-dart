// ignore_for_file: unused_element, unnecessary_cast


/// Database file specific information
class DatabaseFileInfoResponse {
  /// Name of the database
  final String? databaseName;
  /// Database file type
  final String? fileType;
  /// Unique identifier for database file
  final String? id;
  /// Logical name of the file
  final String? logicalName;
  /// Operating-system full path of the file
  final String? physicalFullName;
  /// Suggested full path of the file for restoring
  final String? restoreFullName;
  /// Size of the file in megabytes
  final double? sizeMB;

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
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      fileType: map['fileType'] == null ? null : map['fileType'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      logicalName: map['logicalName'] == null ? null : map['logicalName'] as String,
      physicalFullName: map['physicalFullName'] == null ? null : map['physicalFullName'] as String,
      restoreFullName: map['restoreFullName'] == null ? null : map['restoreFullName'] as String,
      sizeMB: map['sizeMB'] == null ? null : map['sizeMB'] as double,
    );
  }
}

