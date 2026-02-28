// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_lifecycle_configuration_rule_abort_incomplete_multipart_upload_s3_control.dart';
import 'bucket_lifecycle_configuration_rule_expiration_s3_control.dart';
import 'bucket_lifecycle_configuration_rule_filter_s3_control.dart';

class BucketLifecycleConfigurationRuleS3Control {
  /// Configuration block containing settings for abort incomplete multipart upload.
  final BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3Control?
      abortIncompleteMultipartUpload;

  /// Configuration block containing settings for expiration of objects.
  final BucketLifecycleConfigurationRuleExpirationS3Control? expiration;

  /// Configuration block containing settings for filtering.
  final BucketLifecycleConfigurationRuleFilterS3Control? filter;

  /// Unique identifier for the rule.
  final String id;

  /// Status of the rule. Valid values: `Enabled` and `Disabled`. Defaults to `Enabled`.
  final String? status;

  /// Creates a new [BucketLifecycleConfigurationRuleS3Control].
  /// [abortIncompleteMultipartUpload] Configuration block containing settings for abort incomplete multipart upload.
  /// [expiration] Configuration block containing settings for expiration of objects.
  /// [filter] Configuration block containing settings for filtering.
  /// [id] Unique identifier for the rule.
  /// [status] Status of the rule. Valid values: `Enabled` and `Disabled`. Defaults to `Enabled`.
  BucketLifecycleConfigurationRuleS3Control({
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

  factory BucketLifecycleConfigurationRuleS3Control.fromMap(
      Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRuleS3Control(
      abortIncompleteMultipartUpload: map['abortIncompleteMultipartUpload'] ==
              null
          ? null
          : BucketLifecycleConfigurationRuleAbortIncompleteMultipartUploadS3Control
              .fromMap((map['abortIncompleteMultipartUpload'] as Map)
                  .cast<String, dynamic>()),
      expiration: map['expiration'] == null
          ? null
          : BucketLifecycleConfigurationRuleExpirationS3Control.fromMap(
              (map['expiration'] as Map).cast<String, dynamic>()),
      filter: map['filter'] == null
          ? null
          : BucketLifecycleConfigurationRuleFilterS3Control.fromMap(
              (map['filter'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
