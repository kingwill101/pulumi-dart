// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation {
  /// The ARN for the S3 bucket containing the application code.
  final String bucketArn;

  /// The file key for the object containing the application code.
  final String fileKey;

  /// The version of the object containing the application code.
  final String? objectVersion;

  /// Creates a new [ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation].
  /// [bucketArn] The ARN for the S3 bucket containing the application code.
  /// [fileKey] The file key for the object containing the application code.
  /// [objectVersion] The version of the object containing the application code.
  ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation({
    required this.bucketArn,
    required this.fileKey,
    this.objectVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'fileKey': fileKey,
      'objectVersion': ?objectVersion,
    };
  }

  factory ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return ApplicationApplicationConfigurationApplicationCodeConfigurationCodeContentS3ContentLocation(
      bucketArn: map['bucketArn'] as String,
      fileKey: map['fileKey'] as String,
      objectVersion: map['objectVersion'] == null
          ? null
          : map['objectVersion'] as String,
    );
  }
}
