// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The location of amazon S3 dataset.
class AmazonS3Location {
  /// Specify the bucketName of amazon S3. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? bucketName;

  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileName;

  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? folderPath;

  /// Type of dataset storage location.
  /// Expected value is 'AmazonS3Location'.
  final pulumi.Input<String> type;

  /// Specify the version of amazon S3. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? version;

  /// Creates a new [AmazonS3Location].
  /// [bucketName] Specify the bucketName of amazon S3. Type: string (or Expression with resultType string)
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  /// [version] Specify the version of amazon S3. Type: string (or Expression with resultType string).
  AmazonS3Location({
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

  factory AmazonS3Location.fromMap(Map<String, dynamic> map) {
    return AmazonS3Location(
      bucketName: (() {
        final guardedValue = map['bucketName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      fileName: (() {
        final guardedValue = map['fileName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      folderPath: (() {
        final guardedValue = map['folderPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
