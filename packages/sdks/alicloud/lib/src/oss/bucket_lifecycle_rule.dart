// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_rule_abort_multipart_upload.dart';
import 'bucket_lifecycle_rule_expiration.dart';
import 'bucket_lifecycle_rule_filter.dart';
import 'bucket_lifecycle_rule_noncurrent_version_expiration.dart';
import 'bucket_lifecycle_rule_noncurrent_version_transition.dart';
import 'bucket_lifecycle_rule_transition.dart';

class BucketLifecycleRule {
  /// Specifies the number of days after initiating a multipart upload when the multipart upload must be completed. See `abort_multipart_upload` below.
  final pulumi.Input<List<BucketLifecycleRuleAbortMultipartUpload>>? abortMultipartUploads;
  /// Specifies lifecycle rule status.
  final pulumi.Input<bool> enabled;
  /// Specifies a period in the object's expire. See `expiration` below.
  final pulumi.Input<List<BucketLifecycleRuleExpiration>>? expirations;
  /// Configuration block used to identify objects that a Lifecycle rule applies to. See `filter` below.
  ///
  /// `NOTE`: At least one of expiration, transitions, abort_multipart_upload, noncurrent_version_expiration and noncurrent_version_transition should be configured.
  final pulumi.Input<BucketLifecycleRuleFilter>? filter;
  /// Unique identifier for the rule. If omitted, OSS bucket will assign a unique name.
  final pulumi.Input<String>? id;
  /// Specifies when noncurrent object versions expire. See `noncurrent_version_expiration` below.
  final pulumi.Input<List<BucketLifecycleRuleNoncurrentVersionExpiration>>? noncurrentVersionExpirations;
  /// Specifies when noncurrent object versions transitions. See `noncurrent_version_transition` below.
  final pulumi.Input<List<BucketLifecycleRuleNoncurrentVersionTransition>>? noncurrentVersionTransitions;
  /// The prefix in the names of the objects to which the lifecycle rule does not apply.
  final pulumi.Input<String>? prefix;
  /// Key-value map of resource tags. All of these tags must exist in the object's tag set in order for the rule to apply.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the time when an object is converted to the IA or archive storage class during a valid life cycle. See `transitions` below.
  final pulumi.Input<List<BucketLifecycleRuleTransition>>? transitions;

  /// Creates a new [BucketLifecycleRule].
  /// [abortMultipartUploads] Specifies the number of days after initiating a multipart upload when the multipart upload must be completed. See `abort_multipart_upload` below.
  /// [enabled] Specifies lifecycle rule status.
  /// [expirations] Specifies a period in the object's expire. See `expiration` below.
  /// [filter] Configuration block used to identify objects that a Lifecycle rule applies to. See `filter` below.
  /// [id] Unique identifier for the rule. If omitted, OSS bucket will assign a unique name.
  /// [noncurrentVersionExpirations] Specifies when noncurrent object versions expire. See `noncurrent_version_expiration` below.
  /// [noncurrentVersionTransitions] Specifies when noncurrent object versions transitions. See `noncurrent_version_transition` below.
  /// [prefix] The prefix in the names of the objects to which the lifecycle rule does not apply.
  /// [tags] Key-value map of resource tags. All of these tags must exist in the object's tag set in order for the rule to apply.
  /// [transitions] Specifies the time when an object is converted to the IA or archive storage class during a valid life cycle. See `transitions` below.
  BucketLifecycleRule({
    this.abortMultipartUploads,
    required this.enabled,
    this.expirations,
    this.filter,
    this.id,
    this.noncurrentVersionExpirations,
    this.noncurrentVersionTransitions,
    this.prefix,
    this.tags,
    this.transitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abortMultipartUploads': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleRuleAbortMultipartUpload>, List<Map<String, dynamic>>>(abortMultipartUploads, (value) => pulumi.Input.encodeList<BucketLifecycleRuleAbortMultipartUpload, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': enabled,
      'expirations': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleRuleExpiration>, List<Map<String, dynamic>>>(expirations, (value) => pulumi.Input.encodeList<BucketLifecycleRuleExpiration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'filter': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleRuleFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': ?id,
      'noncurrentVersionExpirations': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleRuleNoncurrentVersionExpiration>, List<Map<String, dynamic>>>(noncurrentVersionExpirations, (value) => pulumi.Input.encodeList<BucketLifecycleRuleNoncurrentVersionExpiration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'noncurrentVersionTransitions': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleRuleNoncurrentVersionTransition>, List<Map<String, dynamic>>>(noncurrentVersionTransitions, (value) => pulumi.Input.encodeList<BucketLifecycleRuleNoncurrentVersionTransition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefix': ?prefix,
      'tags': ?tags,
      'transitions': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleRuleTransition>, List<Map<String, dynamic>>>(transitions, (value) => pulumi.Input.encodeList<BucketLifecycleRuleTransition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRule(
      abortMultipartUploads: (() { final guardedValue = map['abortMultipartUploads']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketLifecycleRuleAbortMultipartUpload>(guardedValue, (value) => BucketLifecycleRuleAbortMultipartUpload.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expirations: (() { final guardedValue = map['expirations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketLifecycleRuleExpiration>(guardedValue, (value) => BucketLifecycleRuleExpiration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleRuleFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noncurrentVersionExpirations: (() { final guardedValue = map['noncurrentVersionExpirations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketLifecycleRuleNoncurrentVersionExpiration>(guardedValue, (value) => BucketLifecycleRuleNoncurrentVersionExpiration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      noncurrentVersionTransitions: (() { final guardedValue = map['noncurrentVersionTransitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketLifecycleRuleNoncurrentVersionTransition>(guardedValue, (value) => BucketLifecycleRuleNoncurrentVersionTransition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitions: (() { final guardedValue = map['transitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketLifecycleRuleTransition>(guardedValue, (value) => BucketLifecycleRuleTransition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

