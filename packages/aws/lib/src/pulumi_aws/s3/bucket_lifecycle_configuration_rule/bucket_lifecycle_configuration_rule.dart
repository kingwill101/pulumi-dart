// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_lifecycle_configuration_rule_abort_incomplete_multipart_upload/bucket_lifecycle_configuration_rule_abort_incomplete_multipart_upload.dart';
import '../bucket_lifecycle_configuration_rule_expiration/bucket_lifecycle_configuration_rule_expiration.dart';
import '../bucket_lifecycle_configuration_rule_filter/bucket_lifecycle_configuration_rule_filter.dart';
import '../bucket_lifecycle_configuration_rule_noncurrent_version_expiration/bucket_lifecycle_configuration_rule_noncurrent_version_expiration.dart';
import '../bucket_lifecycle_configuration_rule_noncurrent_version_transition/bucket_lifecycle_configuration_rule_noncurrent_version_transition.dart';
import '../bucket_lifecycle_configuration_rule_transition/bucket_lifecycle_configuration_rule_transition.dart';

class BucketLifecycleConfigurationRule {
  /// Configuration block that specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload. See below.
  final BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload?
      abortIncompleteMultipartUpload;

  /// Configuration block that specifies the expiration for the lifecycle of the object in the form of date, days and, whether the object has a delete marker. See below.
  final BucketLifecycleConfigurationRuleExpiration? expiration;

  /// Configuration block used to identify objects that a Lifecycle Rule applies to.
  /// See below.
  final BucketLifecycleConfigurationRuleFilter? filter;

  /// Unique identifier for the rule. The value cannot be longer than 255 characters.
  final String id;

  /// Configuration block that specifies when noncurrent object versions expire. See below.
  final BucketLifecycleConfigurationRuleNoncurrentVersionExpiration?
      noncurrentVersionExpiration;

  /// Set of configuration blocks that specify the transition rule for the lifecycle rule that describes when noncurrent objects transition to a specific storage class. See below.
  final List<BucketLifecycleConfigurationRuleNoncurrentVersionTransition>?
      noncurrentVersionTransitions;

  /// **DEPRECATED** Use `filter` instead.
  /// This has been deprecated by Amazon S3.
  /// Prefix identifying one or more objects to which the rule applies.
  final String? prefix;

  /// Whether the rule is currently being applied. Valid values: `Enabled` or `Disabled`.
  final String status;

  /// Set of configuration blocks that specify when an Amazon S3 object transitions to a specified storage class. See below.
  final List<BucketLifecycleConfigurationRuleTransition>? transitions;

  BucketLifecycleConfigurationRule({
    this.abortIncompleteMultipartUpload,
    this.expiration,
    this.filter,
    required this.id,
    this.noncurrentVersionExpiration,
    this.noncurrentVersionTransitions,
    this.prefix,
    required this.status,
    this.transitions,
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
    final noncurrentVersionExpirationValue = noncurrentVersionExpiration;
    if (noncurrentVersionExpirationValue != null) {
      map['noncurrentVersionExpiration'] =
          noncurrentVersionExpirationValue.toMap();
    }
    final noncurrentVersionTransitionsValue = noncurrentVersionTransitions;
    if (noncurrentVersionTransitionsValue != null) {
      map['noncurrentVersionTransitions'] = Input.encodeList<
              BucketLifecycleConfigurationRuleNoncurrentVersionTransition,
              Map<String, dynamic>>(
          noncurrentVersionTransitionsValue, (value) => value.toMap());
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    map['status'] = status;
    final transitionsValue = transitions;
    if (transitionsValue != null) {
      map['transitions'] = Input.encodeList<
          BucketLifecycleConfigurationRuleTransition,
          Map<String, dynamic>>(transitionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BucketLifecycleConfigurationRule.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationRule(
      abortIncompleteMultipartUpload:
          map['abortIncompleteMultipartUpload'] == null
              ? null
              : BucketLifecycleConfigurationRuleAbortIncompleteMultipartUpload
                  .fromMap((map['abortIncompleteMultipartUpload'] as Map)
                      .cast<String, dynamic>()),
      expiration: map['expiration'] == null
          ? null
          : BucketLifecycleConfigurationRuleExpiration.fromMap(
              (map['expiration'] as Map).cast<String, dynamic>()),
      filter: map['filter'] == null
          ? null
          : BucketLifecycleConfigurationRuleFilter.fromMap(
              (map['filter'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      noncurrentVersionExpiration: map['noncurrentVersionExpiration'] == null
          ? null
          : BucketLifecycleConfigurationRuleNoncurrentVersionExpiration.fromMap(
              (map['noncurrentVersionExpiration'] as Map)
                  .cast<String, dynamic>()),
      noncurrentVersionTransitions: map['noncurrentVersionTransitions'] == null
          ? null
          : Input.decodeList<
                  BucketLifecycleConfigurationRuleNoncurrentVersionTransition>(
              map['noncurrentVersionTransitions'],
              (value) =>
                  BucketLifecycleConfigurationRuleNoncurrentVersionTransition
                      .fromMap((value as Map).cast<String, dynamic>())),
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      status: map['status'] as String,
      transitions: map['transitions'] == null
          ? null
          : Input.decodeList<BucketLifecycleConfigurationRuleTransition>(
              map['transitions'],
              (value) => BucketLifecycleConfigurationRuleTransition.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
