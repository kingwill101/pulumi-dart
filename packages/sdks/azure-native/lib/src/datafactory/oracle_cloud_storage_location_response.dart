// ignore_for_file: unused_element, unnecessary_cast


/// The location of Oracle Cloud Storage dataset.
class OracleCloudStorageLocationResponse {
  /// Specify the bucketName of Oracle Cloud Storage. Type: string (or Expression with resultType string)
  final dynamic bucketName;
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final dynamic fileName;
  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final dynamic folderPath;
  /// Type of dataset storage location.
  /// Expected value is 'OracleCloudStorageLocation'.
  final String type;
  /// Specify the version of Oracle Cloud Storage. Type: string (or Expression with resultType string).
  final dynamic version;

  /// Creates a new [OracleCloudStorageLocationResponse].
  /// [bucketName] Specify the bucketName of Oracle Cloud Storage. Type: string (or Expression with resultType string)
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  /// [version] Specify the version of Oracle Cloud Storage. Type: string (or Expression with resultType string).
  OracleCloudStorageLocationResponse({
    this.bucketName,
    this.fileName,
    this.folderPath,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'fileName': ?fileName,
      'folderPath': ?folderPath,
      'type': type,
      'version': ?version,
    };
  }

  factory OracleCloudStorageLocationResponse.fromMap(Map<String, dynamic> map) {
    return OracleCloudStorageLocationResponse(
      bucketName: map['bucketName'] == null ? null : map['bucketName'],
      fileName: map['fileName'] == null ? null : map['fileName'],
      folderPath: map['folderPath'] == null ? null : map['folderPath'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'],
    );
  }
}

