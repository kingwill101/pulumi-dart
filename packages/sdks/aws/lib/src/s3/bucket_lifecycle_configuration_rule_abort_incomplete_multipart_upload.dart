// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload {
  /// Number of days after which Amazon S3 aborts an incomplete multipart upload.
  final pulumi.Input<int?>? daysAfterInitiation;

  /// Creates a new [BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload].
  /// [daysAfterInitiation] Number of days after which Amazon S3 aborts an incomplete multipart upload.
  const BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload({
    this.daysAfterInitiation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysAfterInitiation': ?daysAfterInitiation,
    };
  }

  factory BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload(
      daysAfterInitiation: (() { final guardedValue = map['daysAfterInitiation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
