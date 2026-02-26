// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload2 {
  /// Number of days after which Amazon S3 aborts an incomplete multipart upload.
  final int daysAfterInitiation;

  BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload2({
    required this.daysAfterInitiation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['daysAfterInitiation'] = daysAfterInitiation;
    return map;
  }

  factory BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload2.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload2(
      daysAfterInitiation: map['daysAfterInitiation'] as int,
    );
  }
}
