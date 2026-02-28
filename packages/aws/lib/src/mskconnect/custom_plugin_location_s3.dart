// ignore_for_file: unused_element, unnecessary_cast

class CustomPluginLocationS3 {
  /// The Amazon Resource Name (ARN) of an S3 bucket.
  final String bucketArn;

  /// The file key for an object in an S3 bucket.
  final String fileKey;

  /// The version of an object in an S3 bucket.
  final String? objectVersion;

  /// Creates a new [CustomPluginLocationS3].
  /// [bucketArn] The Amazon Resource Name (ARN) of an S3 bucket.
  /// [fileKey] The file key for an object in an S3 bucket.
  /// [objectVersion] The version of an object in an S3 bucket.
  CustomPluginLocationS3({
    required this.bucketArn,
    required this.fileKey,
    this.objectVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketArn'] = bucketArn;
    map['fileKey'] = fileKey;
    final objectVersionValue = objectVersion;
    if (objectVersionValue != null) {
      map['objectVersion'] = objectVersionValue;
    }
    return map;
  }

  factory CustomPluginLocationS3.fromMap(Map<String, dynamic> map) {
    return CustomPluginLocationS3(
      bucketArn: map['bucketArn'] as String,
      fileKey: map['fileKey'] as String,
      objectVersion:
          map['objectVersion'] == null ? null : map['objectVersion'] as String,
    );
  }
}
