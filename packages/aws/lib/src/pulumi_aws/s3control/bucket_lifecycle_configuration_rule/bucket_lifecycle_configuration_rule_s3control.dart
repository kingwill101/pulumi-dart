// ignore_for_file: unused_element, unnecessary_cast

import '../bucket_lifecycle_configuration_rule_abort_incomplete_multipart_upload/bucket_lifecycle_configuration_rule_abort_incomplete_multipart_upload_s3control.dart';
import '../bucket_lifecycle_configuration_rule_expiration/bucket_lifecycle_configuration_rule_expiration_s3control.dart';
import '../bucket_lifecycle_configuration_rule_filter/bucket_lifecycle_configuration_rule_filter_s3control.dart';

class BucketLifecycleConfigurationRuleS3control {
  /// Configuration block containing settings for abort incomplete multipart upload.
  final BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3control?
      abortIncompleteMultipartUpload;

  /// Configuration block containing settings for expiration of objects.
  final BucketLifecycleConfigurationRuleExpirationS3control? expiration;

  /// Configuration block containing settings for filtering.
  final BucketLifecycleConfigurationRuleFilterS3control? filter;

  /// Unique identifier for the rule.
  final String id;

  /// Status of the rule. Valid values: `Enabled` and `Disabled`. Defaults to `Enabled`.
  final String? status;

  BucketLifecycleConfigurationRuleS3control({
    this.abortIncompleteMultipartUpload,
    this.expiration,
    this.filter,
    required this.id,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final abortIncompleteMultipartUploadValue = abortIncompleteMultipartUpload;
    if (abortIncompleteMultipartUploadValue != null) {
      map['abortIncompleteMultipartUpload'] =
          abortIncompleteMultipartUploadValue.toMap();
    }
    final expirationValue = expiration;
    if (expirationValue != null) {
      map['expiration'] = expirationValue.toMap();
    }
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue.toMap();
    }
    map['id'] = id;
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory BucketLifecycleConfigurationRuleS3control.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleS3control(
      abortIncompleteMultipartUpload: map['abortIncompleteMultipartUpload'] ==
              null
          ? null
          : BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3control
              .fromMap((map['abortIncompleteMultipartUpload'] as Map)
                  .cast<String, dynamic>()),
      expiration: map['expiration'] == null
          ? null
          : BucketLifecycleConfigurationRuleExpirationS3control.fromMap(
              (map['expiration'] as Map).cast<String, dynamic>()),
      filter: map['filter'] == null
          ? null
          : BucketLifecycleConfigurationRuleFilterS3control.fromMap(
              (map['filter'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
