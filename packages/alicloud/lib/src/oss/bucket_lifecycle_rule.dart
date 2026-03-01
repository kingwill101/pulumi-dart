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
  final List<BucketLifecycleRuleAbortMultipartUpload>? abortMultipartUploads;
  /// Specifies lifecycle rule status.
  final bool enabled;
  /// Specifies a period in the object's expire. See `expiration` below.
  final List<BucketLifecycleRuleExpiration>? expirations;
  /// Configuration block used to identify objects that a Lifecycle rule applies to. See `filter` below.
  ///
  /// `NOTE`: At least one of expiration, transitions, abort_multipart_upload, noncurrent_version_expiration and noncurrent_version_transition should be configured.
  final BucketLifecycleRuleFilter? filter;
  /// Unique identifier for the rule. If omitted, OSS bucket will assign a unique name.
  final String? id;
  /// Specifies when noncurrent object versions expire. See `noncurrent_version_expiration` below.
  final List<BucketLifecycleRuleNoncurrentVersionExpiration>? noncurrentVersionExpirations;
  /// Specifies when noncurrent object versions transitions. See `noncurrent_version_transition` below.
  final List<BucketLifecycleRuleNoncurrentVersionTransition>? noncurrentVersionTransitions;
  /// The prefix in the names of the objects to which the lifecycle rule does not apply.
  final String? prefix;
  /// Key-value map of resource tags. All of these tags must exist in the object's tag set in order for the rule to apply.
  final Map<String, String>? tags;
  /// Specifies the time when an object is converted to the IA or archive storage class during a valid life cycle. See `transitions` below.
  final List<BucketLifecycleRuleTransition>? transitions;

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
      'abortMultipartUploads': ?abortMultipartUploads == null ? null : pulumi.Input.encodeList<BucketLifecycleRuleAbortMultipartUpload, Map<String, dynamic>>(abortMultipartUploads!, (value) => value.toMap()),
      'enabled': enabled,
      'expirations': ?expirations == null ? null : pulumi.Input.encodeList<BucketLifecycleRuleExpiration, Map<String, dynamic>>(expirations!, (value) => value.toMap()),
      'filter': ?filter == null ? null : filter!.toMap(),
      'id': ?id,
      'noncurrentVersionExpirations': ?noncurrentVersionExpirations == null ? null : pulumi.Input.encodeList<BucketLifecycleRuleNoncurrentVersionExpiration, Map<String, dynamic>>(noncurrentVersionExpirations!, (value) => value.toMap()),
      'noncurrentVersionTransitions': ?noncurrentVersionTransitions == null ? null : pulumi.Input.encodeList<BucketLifecycleRuleNoncurrentVersionTransition, Map<String, dynamic>>(noncurrentVersionTransitions!, (value) => value.toMap()),
      'prefix': ?prefix,
      'tags': ?tags,
      'transitions': ?transitions == null ? null : pulumi.Input.encodeList<BucketLifecycleRuleTransition, Map<String, dynamic>>(transitions!, (value) => value.toMap()),
    };
  }

  factory BucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRule(
      abortMultipartUploads: map['abortMultipartUploads'] == null ? null : pulumi.Input.decodeList<BucketLifecycleRuleAbortMultipartUpload>(map['abortMultipartUploads'], (value) => BucketLifecycleRuleAbortMultipartUpload.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
      expirations: map['expirations'] == null ? null : pulumi.Input.decodeList<BucketLifecycleRuleExpiration>(map['expirations'], (value) => BucketLifecycleRuleExpiration.fromMap((value as Map).cast<String, dynamic>())),
      filter: map['filter'] == null ? null : BucketLifecycleRuleFilter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      noncurrentVersionExpirations: map['noncurrentVersionExpirations'] == null ? null : pulumi.Input.decodeList<BucketLifecycleRuleNoncurrentVersionExpiration>(map['noncurrentVersionExpirations'], (value) => BucketLifecycleRuleNoncurrentVersionExpiration.fromMap((value as Map).cast<String, dynamic>())),
      noncurrentVersionTransitions: map['noncurrentVersionTransitions'] == null ? null : pulumi.Input.decodeList<BucketLifecycleRuleNoncurrentVersionTransition>(map['noncurrentVersionTransitions'], (value) => BucketLifecycleRuleNoncurrentVersionTransition.fromMap((value as Map).cast<String, dynamic>())),
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      transitions: map['transitions'] == null ? null : pulumi.Input.decodeList<BucketLifecycleRuleTransition>(map['transitions'], (value) => BucketLifecycleRuleTransition.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

