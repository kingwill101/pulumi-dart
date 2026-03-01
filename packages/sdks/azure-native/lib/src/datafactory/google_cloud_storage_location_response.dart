// ignore_for_file: unused_element, unnecessary_cast


/// The location of Google Cloud Storage dataset.
class GoogleCloudStorageLocationResponse {
  /// Specify the bucketName of Google Cloud Storage. Type: string (or Expression with resultType string)
  final dynamic bucketName;
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final dynamic fileName;
  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final dynamic folderPath;
  /// Type of dataset storage location.
  /// Expected value is 'GoogleCloudStorageLocation'.
  final String type;
  /// Specify the version of Google Cloud Storage. Type: string (or Expression with resultType string).
  final dynamic version;

  /// Creates a new [GoogleCloudStorageLocationResponse].
  /// [bucketName] Specify the bucketName of Google Cloud Storage. Type: string (or Expression with resultType string)
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  /// [version] Specify the version of Google Cloud Storage. Type: string (or Expression with resultType string).
  GoogleCloudStorageLocationResponse({
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

  factory GoogleCloudStorageLocationResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudStorageLocationResponse(
      bucketName: map['bucketName'] == null ? null : map['bucketName'],
      fileName: map['fileName'] == null ? null : map['fileName'],
      folderPath: map['folderPath'] == null ? null : map['folderPath'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'],
    );
  }
}

