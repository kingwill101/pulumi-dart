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

  AssociationOutputLocation({
    required this.s3BucketName,
    this.s3KeyPrefix,
    this.s3Region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3BucketName'] = s3BucketName;
    final s3KeyPrefixValue = s3KeyPrefix;
    if (s3KeyPrefixValue != null) {
      map['s3KeyPrefix'] = s3KeyPrefixValue;
    }
    final s3RegionValue = s3Region;
    if (s3RegionValue != null) {
      map['s3Region'] = s3RegionValue;
    }
    return map;
  }

  factory AssociationOutputLocation.fromMap(Map<String, dynamic> map) {
    return AssociationOutputLocation(
      s3BucketName: map['s3BucketName'] as String,
      s3KeyPrefix:
          map['s3KeyPrefix'] == null ? null : map['s3KeyPrefix'] as String,
      s3Region: map['s3Region'] == null ? null : map['s3Region'] as String,
    );
  }
}
