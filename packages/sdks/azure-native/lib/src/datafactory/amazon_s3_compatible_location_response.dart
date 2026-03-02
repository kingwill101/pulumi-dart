// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The location of Amazon S3 Compatible dataset.
class AmazonS3CompatibleLocationResponse {
  /// Specify the bucketName of Amazon S3 Compatible. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? bucketName;
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileName;
  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? folderPath;
  /// Type of dataset storage location.
  /// Expected value is 'AmazonS3CompatibleLocation'.
  final pulumi.Input<String> type;
  /// Specify the version of Amazon S3 Compatible. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? version;

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
      bucketName: map['bucketName'] == null ? null : (map['bucketName']!).input(),
      fileName: map['fileName'] == null ? null : (map['fileName']!).input(),
      folderPath: map['folderPath'] == null ? null : (map['folderPath']!).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version']!).input(),
    );
  }
}

