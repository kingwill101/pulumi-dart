// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_rule_expiration.dart';
import 'bucket_lifecycle_rule_noncurrent_version_expiration.dart';
import 'bucket_lifecycle_rule_noncurrent_version_transition.dart';
import 'bucket_lifecycle_rule_transition.dart';

class BucketLifecycleRule {
  /// Specifies the number of days after initiating a multipart upload when the multipart upload must be completed.
  final pulumi.Input<int>? abortIncompleteMultipartUploadDays;
  /// Specifies lifecycle rule status.
  final pulumi.Input<bool> enabled;
  /// Specifies a period in the object's expire. See Expiration below for details.
  final pulumi.Input<BucketLifecycleRuleExpiration>? expiration;
  /// Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  final pulumi.Input<String>? id;
  /// Specifies when noncurrent object versions expire. See Noncurrent Version Expiration below for details.
  final pulumi.Input<BucketLifecycleRuleNoncurrentVersionExpiration>? noncurrentVersionExpiration;
  /// Specifies when noncurrent object versions transitions. See Noncurrent Version Transition below for details.
  final pulumi.Input<List<BucketLifecycleRuleNoncurrentVersionTransition>>? noncurrentVersionTransitions;
  /// Object key prefix identifying one or more objects to which the rule applies.
  final pulumi.Input<String>? prefix;
  /// Specifies object tags key and value.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies a period in the object's transitions. See Transition below for details.
  final pulumi.Input<List<BucketLifecycleRuleTransition>>? transitions;

  /// Creates a new [BucketLifecycleRule].
  /// [abortIncompleteMultipartUploadDays] Specifies the number of days after initiating a multipart upload when the multipart upload must be completed.
  /// [enabled] Specifies lifecycle rule status.
  /// [expiration] Specifies a period in the object's expire. See Expiration below for details.
  /// [id] Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  /// [noncurrentVersionExpiration] Specifies when noncurrent object versions expire. See Noncurrent Version Expiration below for details.
  /// [noncurrentVersionTransitions] Specifies when noncurrent object versions transitions. See Noncurrent Version Transition below for details.
  /// [prefix] Object key prefix identifying one or more objects to which the rule applies.
  /// [tags] Specifies object tags key and value.
  /// [transitions] Specifies a period in the object's transitions. See Transition below for details.
  BucketLifecycleRule({
    this.abortIncompleteMultipartUploadDays,
    required this.enabled,
    this.expiration,
    this.id,
    this.noncurrentVersionExpiration,
    this.noncurrentVersionTransitions,
    this.prefix,
    this.tags,
    this.transitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abortIncompleteMultipartUploadDays': ?abortIncompleteMultipartUploadDays,
      'enabled': enabled,
      'expiration': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleRuleExpiration, Map<String, dynamic>>(expiration, (value) => value.toMap()),
      'id': ?id,
      'noncurrentVersionExpiration': ?pulumi.Input.mapOptionalInputValue<BucketLifecycleRuleNoncurrentVersionExpiration, Map<String, dynamic>>(noncurrentVersionExpiration, (value) => value.toMap()),
      'noncurrentVersionTransitions': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleRuleNoncurrentVersionTransition>, List<Map<String, dynamic>>>(noncurrentVersionTransitions, (value) => pulumi.Input.encodeList<BucketLifecycleRuleNoncurrentVersionTransition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefix': ?prefix,
      'tags': ?tags,
      'transitions': ?pulumi.Input.mapOptionalInputValue<List<BucketLifecycleRuleTransition>, List<Map<String, dynamic>>>(transitions, (value) => pulumi.Input.encodeList<BucketLifecycleRuleTransition, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRule(
      abortIncompleteMultipartUploadDays: map['abortIncompleteMultipartUploadDays'] == null ? null : ((map['abortIncompleteMultipartUploadDays'] as int).input()).input(),
      enabled: (map['enabled'] as bool).input(),
      expiration: map['expiration'] == null ? null : ((BucketLifecycleRuleExpiration.fromMap((map['expiration']! as Map).cast<String, dynamic>())).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      noncurrentVersionExpiration: map['noncurrentVersionExpiration'] == null ? null : ((BucketLifecycleRuleNoncurrentVersionExpiration.fromMap((map['noncurrentVersionExpiration']! as Map).cast<String, dynamic>())).input()).input(),
      noncurrentVersionTransitions: map['noncurrentVersionTransitions'] == null ? null : ((pulumi.Input.decodeList<BucketLifecycleRuleNoncurrentVersionTransition>(map['noncurrentVersionTransitions']!, (value) => BucketLifecycleRuleNoncurrentVersionTransition.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      prefix: map['prefix'] == null ? null : ((map['prefix'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      transitions: map['transitions'] == null ? null : ((pulumi.Input.decodeList<BucketLifecycleRuleTransition>(map['transitions']!, (value) => BucketLifecycleRuleTransition.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

