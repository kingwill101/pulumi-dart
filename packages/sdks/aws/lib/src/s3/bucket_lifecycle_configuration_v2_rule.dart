// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_configuration_v2_rule_abort_incomplete_multipart_upload.dart';
import 'bucket_lifecycle_configuration_v2_rule_expiration.dart';
import 'bucket_lifecycle_configuration_v2_rule_filter.dart';
import 'bucket_lifecycle_configuration_v2_rule_noncurrent_version_expiration.dart';
import 'bucket_lifecycle_configuration_v2_rule_noncurrent_version_transition.dart';
import 'bucket_lifecycle_configuration_v2_rule_transition.dart';

class BucketLifecycleConfigurationV2Rule {
  /// Configuration block that specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload. See below.
  final pulumi.Input<BucketLifecycleConfigurationV2RuleAbortIncompleteMultipartUpload>? abortIncompleteMultipartUpload;
  /// Configuration block that specifies the expiration for the lifecycle of the object in the form of date, days and, whether the object has a delete marker. See below.
  final pulumi.Input<BucketLifecycleConfigurationV2RuleExpiration>? expiration;
  /// Configuration block used to identify objects that a Lifecycle Rule applies to.
  /// See below.
  final pulumi.Input<BucketLifecycleConfigurationV2RuleFilter>? filter;
  /// Unique identifier for the rule. The value cannot be longer than 255 characters.
  final pulumi.Input<String> id;
  /// Configuration block that specifies when noncurrent object versions expire. See below.
  final pulumi.Input<BucketLifecycleConfigurationV2RuleNoncurrentVersionExpiration>? noncurrentVersionExpiration;
  /// Set of configuration blocks that specify the transition rule for the lifecycle rule that describes when noncurrent objects transition to a specific storage class. See below.
  final pulumi.Input<List<BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition>>? noncurrentVersionTransitions;
  /// **DEPRECATED** Use `filter` instead.
  /// This has been deprecated by Amazon S3.
  /// Prefix identifying one or more objects to which the rule applies.
  final pulumi.Input<String>? prefix;
  /// Whether the rule is currently being applied. Valid values: `Enabled` or `Disabled`.
  final pulumi.Input<String> status;
  /// Set of configuration blocks that specify when an Amazon S3 object transitions to a specified storage class. See below.
  final pulumi.Input<List<BucketLifecycleConfigurationV2RuleTransition>>? transitions;

  /// Creates a new [BucketLifecycleConfigurationV2Rule].
  /// [abortIncompleteMultipartUpload] Configuration block that specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload. See below.
  /// [expiration] Configuration block that specifies the expiration for the lifecycle of the object in the form of date, days and, whether the object has a delete marker. See below.
  /// [filter] Configuration block used to identify objects that a Lifecycle Rule applies to.
  /// [id] Unique identifier for the rule. The value cannot be longer than 255 characters.
  /// [noncurrentVersionExpiration] Configuration block that specifies when noncurrent object versions expire. See below.
  /// [noncurrentVersionTransitions] Set of configuration blocks that specify the transition rule for the lifecycle rule that describes when noncurrent objects transition to a specific storage class. See below.
  /// [prefix] **DEPRECATED** Use `filter` instead.
  /// [status] Whether the rule is currently being applied. Valid values: `Enabled` or `Disabled`.
  /// [transitions] Set of configuration blocks that specify when an Amazon S3 object transitions to a specified storage class. See below.
  BucketLifecycleConfigurationV2Rule({
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
    return <String, dynamic>{
      'abortIncompleteMultipartUpload': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleConfigurationV2RuleAbortIncompleteMultipartUpload, Map<String, dynamic>>(abortIncompleteMultipartUpload, (value) => value.toMap()),
      'expiration': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleConfigurationV2RuleExpiration, Map<String, dynamic>>(expiration, (value) => value.toMap()),
      'filter': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleConfigurationV2RuleFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': id,
      'noncurrentVersionExpiration': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleConfigurationV2RuleNoncurrentVersionExpiration, Map<String, dynamic>>(noncurrentVersionExpiration, (value) => value.toMap()),
      'noncurrentVersionTransitions': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition>, List<Map<String, dynamic>>>(noncurrentVersionTransitions, (value) => pulumi.Input.encodeList<BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefix': ?prefix,
      'status': status,
      'transitions': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleConfigurationV2RuleTransition>, List<Map<String, dynamic>>>(transitions, (value) => pulumi.Input.encodeList<BucketLifecycleConfigurationV2RuleTransition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketLifecycleConfigurationV2Rule.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleConfigurationV2Rule(
      abortIncompleteMultipartUpload: map['abortIncompleteMultipartUpload'] == null ? null : ((BucketLifecycleConfigurationV2RuleAbortIncompleteMultipartUpload.fromMap((map['abortIncompleteMultipartUpload']! as Map).cast<String, dynamic>())).input()).input(),
      expiration: map['expiration'] == null ? null : ((BucketLifecycleConfigurationV2RuleExpiration.fromMap((map['expiration']! as Map).cast<String, dynamic>())).input()).input(),
      filter: map['filter'] == null ? null : ((BucketLifecycleConfigurationV2RuleFilter.fromMap((map['filter']! as Map).cast<String, dynamic>())).input()).input(),
      id: (map['id'] as String).input(),
      noncurrentVersionExpiration: map['noncurrentVersionExpiration'] == null ? null : ((BucketLifecycleConfigurationV2RuleNoncurrentVersionExpiration.fromMap((map['noncurrentVersionExpiration']! as Map).cast<String, dynamic>())).input()).input(),
      noncurrentVersionTransitions: map['noncurrentVersionTransitions'] == null ? null : ((pulumi.Input.decodeList<BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition>(map['noncurrentVersionTransitions']!, (value) => BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      prefix: map['prefix'] == null ? null : ((map['prefix'] as String).input()).input(),
      status: (map['status'] as String).input(),
      transitions: map['transitions'] == null ? null : ((pulumi.Input.decodeList<BucketLifecycleConfigurationV2RuleTransition>(map['transitions']!, (value) => BucketLifecycleConfigurationV2RuleTransition.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

