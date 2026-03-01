// ignore_for_file: unused_element, unnecessary_cast


/// The location of Amazon S3 Compatible dataset.
class AmazonS3CompatibleLocationResponse {
  /// Specify the bucketName of Amazon S3 Compatible. Type: string (or Expression with resultType string)
  final dynamic bucketName;
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final dynamic fileName;
  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final dynamic folderPath;
  /// Type of dataset storage location.
  /// Expected value is 'AmazonS3CompatibleLocation'.
  final String type;
  /// Specify the version of Amazon S3 Compatible. Type: string (or Expression with resultType string).
  final dynamic version;

  /// Creates a new [AmazonS3CompatibleLocationResponse].
  /// [bucketName] Specify the bucketName of Amazon S3 Compatible. Type: string (or Expression with resultType string)
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  /// [version] Specify the version of Amazon S3 Compatible. Type: string (or Expression with resultType string).
  AmazonS3CompatibleLocationResponse({
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

  factory AmazonS3CompatibleLocationResponse.fromMap(Map<String, dynamic> map) {
    return AmazonS3CompatibleLocationResponse(
      bucketName: map['bucketName'] == null ? null : map['bucketName'],
      fileName: map['fileName'] == null ? null : map['fileName'],
      folderPath: map['folderPath'] == null ? null : map['folderPath'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'],
    );
  }
}

