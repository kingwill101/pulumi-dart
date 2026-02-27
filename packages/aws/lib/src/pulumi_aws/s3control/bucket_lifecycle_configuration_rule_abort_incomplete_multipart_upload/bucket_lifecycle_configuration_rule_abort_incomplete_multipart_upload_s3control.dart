// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3control {
  /// Number of days after which Amazon S3 aborts an incomplete multipart upload.
  final int daysAfterInitiation;

  BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3control({
    required this.daysAfterInitiation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['daysAfterInitiation'] = daysAfterInitiation;
    return map;
  }

  factory BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3control.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3control(
      daysAfterInitiation: map['daysAfterInitiation'] as int,
    );
  }
}
