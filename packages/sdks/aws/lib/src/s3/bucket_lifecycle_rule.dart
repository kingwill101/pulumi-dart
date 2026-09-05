// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_rule_expiration.dart';
import 'bucket_lifecycle_rule_noncurrent_version_expiration.dart';
import 'bucket_lifecycle_rule_noncurrent_version_transition.dart';
import 'bucket_lifecycle_rule_transition.dart';

class BucketLifecycleRule {
  /// Number of days after initiating a multipart upload when the multipart upload must be completed.
  final pulumi.Input<int?>? abortIncompleteMultipartUploadDays;
  /// Lifecycle rule status.
  final pulumi.Input<bool> enabled;
  /// Configuration of the object expiration. See `expiration` Block below for details.
  final pulumi.Input<BucketLifecycleRuleExpiration?>? expiration;
  /// Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  final pulumi.Input<String?>? id;
  /// When noncurrent object versions expire. See `noncurrentVersionExpiration` Block below for details.
  final pulumi.Input<BucketLifecycleRuleNoncurrentVersionExpiration?>? noncurrentVersionExpiration;
  /// When noncurrent object versions transition. See `noncurrentVersionTransition` Block below for details.
  final pulumi.Input<List<BucketLifecycleRuleNoncurrentVersionTransition>?>? noncurrentVersionTransitions;
  /// Object key prefix identifying one or more objects to which the rule applies.
  final pulumi.Input<String?>? prefix;
  /// Object tags key and value.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Configuration of the object transition. See `transition` Block below for details.
  final pulumi.Input<List<BucketLifecycleRuleTransition>?>? transitions;

  /// Creates a new [BucketLifecycleRule].
  /// [abortIncompleteMultipartUploadDays] Number of days after initiating a multipart upload when the multipart upload must be completed.
  /// [enabled] Lifecycle rule status.
  /// [expiration] Configuration of the object expiration. See `expiration` Block below for details.
  /// [id] Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  /// [noncurrentVersionExpiration] When noncurrent object versions expire. See `noncurrentVersionExpiration` Block below for details.
  /// [noncurrentVersionTransitions] When noncurrent object versions transition. See `noncurrentVersionTransition` Block below for details.
  /// [prefix] Object key prefix identifying one or more objects to which the rule applies.
  /// [tags] Object tags key and value.
  /// [transitions] Configuration of the object transition. See `transition` Block below for details.
  const BucketLifecycleRule({
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
      abortIncompleteMultipartUploadDays: (() { final guardedValue = map['abortIncompleteMultipartUploadDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleRuleExpiration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      noncurrentVersionExpiration: (() { final guardedValue = map['noncurrentVersionExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketLifecycleRuleNoncurrentVersionExpiration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      noncurrentVersionTransitions: (() { final guardedValue = map['noncurrentVersionTransitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketLifecycleRuleNoncurrentVersionTransition>(guardedValue, (value) => BucketLifecycleRuleNoncurrentVersionTransition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitions: (() { final guardedValue = map['transitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BucketLifecycleRuleTransition>(guardedValue, (value) => BucketLifecycleRuleTransition.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
