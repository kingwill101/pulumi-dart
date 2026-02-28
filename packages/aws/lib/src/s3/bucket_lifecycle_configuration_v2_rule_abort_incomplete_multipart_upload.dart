// ignore_for_file: unused_element, unnecessary_cast

class BucketLifecycleConfigurationV2RuleAbortIncompleteMultipartUpload {
  /// Number of days after which Amazon S3 aborts an incomplete multipart upload.
  final int? daysAfterInitiation;

  /// Creates a new [BucketLifecycleConfigurationV2RuleAbortIncompleteMultipartUpload].
  /// [daysAfterInitiation] Number of days after which Amazon S3 aborts an incomplete multipart upload.
  BucketLifecycleConfigurationV2RuleAbortIncompleteMultipartUpload({
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

  factory BucketLifecycleConfigurationV2RuleAbortIncompleteMultipartUpload.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationV2RuleAbortIncompleteMultipartUpload(
      daysAfterInitiation: map['daysAfterInitiation'] == null
          ? null
          : map['daysAfterInitiation'] as int,
    );
  }
}
