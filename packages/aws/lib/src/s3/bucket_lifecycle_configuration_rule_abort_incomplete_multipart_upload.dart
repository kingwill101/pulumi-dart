// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload {
  /// Number of days after which Amazon S3 aborts an incomplete multipart upload.
  final int? daysAfterInitiation;

  /// Creates a new [BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload].
  /// [daysAfterInitiation] Number of days after which Amazon S3 aborts an incomplete multipart upload.
  BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload({
    this.daysAfterInitiation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysAfterInitiationValue = daysAfterInitiation;
    if (daysAfterInitiationValue != null) {
      map['daysAfterInitiation'] = daysAfterInitiationValue;
    }
    return map;
  }

  factory BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload(
      daysAfterInitiation: map['daysAfterInitiation'] == null
          ? null
          : map['daysAfterInitiation'] as int,
    );
  }
}
