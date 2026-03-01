// ignore_for_file: unused_element, unnecessary_cast


class BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3Control {
  /// Number of days after which Amazon S3 aborts an incomplete multipart upload.
  final int daysAfterInitiation;

  /// Creates a new [BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3Control].
  /// [daysAfterInitiation] Number of days after which Amazon S3 aborts an incomplete multipart upload.
  BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3Control({
    required this.daysAfterInitiation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysAfterInitiation': daysAfterInitiation,
    };
  }

  factory BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3Control.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3Control(
      daysAfterInitiation: map['daysAfterInitiation'] as int,
    );
  }
}

