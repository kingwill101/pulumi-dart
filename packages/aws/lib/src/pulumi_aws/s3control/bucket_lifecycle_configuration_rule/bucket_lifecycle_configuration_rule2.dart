// ignore_for_file: unused_element, unnecessary_cast

import '../bucket_lifecycle_configuration_rule_abort_incomplete_multipart_upload/bucket_lifecycle_configuration_rule_abort_incomplete_multipart_upload2.dart';
import '../bucket_lifecycle_configuration_rule_expiration/bucket_lifecycle_configuration_rule_expiration2.dart';
import '../bucket_lifecycle_configuration_rule_filter/bucket_lifecycle_configuration_rule_filter2.dart';

class BucketLifecycleConfigurationRule2 {
  /// Configuration block containing settings for abort incomplete multipart upload.
  final BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload2?
      abortIncompleteMultipartUpload;

  /// Configuration block containing settings for expiration of objects.
  final BucketLifecycleConfigurationRuleExpiration2? expiration;

  /// Configuration block containing settings for filtering.
  final BucketLifecycleConfigurationRuleFilter2? filter;

  /// Unique identifier for the rule.
  final String id;

  /// Status of the rule. Valid values: `Enabled` and `Disabled`. Defaults to `Enabled`.
  final String? status;

  BucketLifecycleConfigurationRule2({
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

  factory BucketLifecycleConfigurationRule2.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRule2(
      abortIncompleteMultipartUpload:
          map['abortIncompleteMultipartUpload'] == null
              ? null
              : BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload2
                  .fromMap((map['abortIncompleteMultipartUpload'] as Map)
                      .cast<String, dynamic>()),
      expiration: map['expiration'] == null
          ? null
          : BucketLifecycleConfigurationRuleExpiration2.fromMap(
              (map['expiration'] as Map).cast<String, dynamic>()),
      filter: map['filter'] == null
          ? null
          : BucketLifecycleConfigurationRuleFilter2.fromMap(
              (map['filter'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
