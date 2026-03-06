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
  const BucketLifecycleConfigurationV2Rule({
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
      abortIncompleteMultipartUpload: (() { final guardedValue = map['abortIncompleteMultipartUpload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleConfigurationV2RuleAbortIncompleteMultipartUpload.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleConfigurationV2RuleExpiration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleConfigurationV2RuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      noncurrentVersionExpiration: (() { final guardedValue = map['noncurrentVersionExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleConfigurationV2RuleNoncurrentVersionExpiration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      noncurrentVersionTransitions: (() { final guardedValue = map['noncurrentVersionTransitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition>(guardedValue, (value) => BucketLifecycleConfigurationV2RuleNoncurrentVersionTransition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      transitions: (() { final guardedValue = map['transitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketLifecycleConfigurationV2RuleTransition>(guardedValue, (value) => BucketLifecycleConfigurationV2RuleTransition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

