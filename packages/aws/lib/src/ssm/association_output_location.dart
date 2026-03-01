// ignore_for_file: unused_element, unnecessary_cast

class AssociationOutputLocation {
  /// The S3 bucket name.
  final String s3BucketName;

  /// The S3 bucket prefix. Results stored in the root if not configured.
  final String? s3KeyPrefix;

  /// The S3 bucket region.
  ///
  /// Targets specify what instance IDs or tags to apply the document to and has these keys:
  final String? s3Region;

  /// Creates a new [AssociationOutputLocation].
  /// [s3BucketName] The S3 bucket name.
  /// [s3KeyPrefix] The S3 bucket prefix. Results stored in the root if not configured.
  /// [s3Region] The S3 bucket region.
  AssociationOutputLocation({
    required this.s3BucketName,
    this.s3KeyPrefix,
    this.s3Region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3BucketName': s3BucketName,
      's3KeyPrefix': ?s3KeyPrefix,
      's3Region': ?s3Region,
    };
  }

  factory AssociationOutputLocation.fromMap(Map<String, dynamic> map) {
    return AssociationOutputLocation(
      s3BucketName: map['s3BucketName'] as String,
      s3KeyPrefix: map['s3KeyPrefix'] == null
          ? null
          : map['s3KeyPrefix'] as String,
      s3Region: map['s3Region'] == null ? null : map['s3Region'] as String,
    );
  }
}
