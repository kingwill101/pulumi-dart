// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_v2_lifecycle_rule_expiration/bucket_v2_lifecycle_rule_expiration.dart';
import '../bucket_v2_lifecycle_rule_noncurrent_version_expiration/bucket_v2_lifecycle_rule_noncurrent_version_expiration.dart';
import '../bucket_v2_lifecycle_rule_noncurrent_version_transition/bucket_v2_lifecycle_rule_noncurrent_version_transition.dart';
import '../bucket_v2_lifecycle_rule_transition/bucket_v2_lifecycle_rule_transition.dart';

class BucketV2LifecycleRule {
  /// Specifies the number of days after initiating a multipart upload when the multipart upload must be completed.
  final int? abortIncompleteMultipartUploadDays;

  /// Specifies lifecycle rule status.
  final bool enabled;

  /// Specifies a period in the object's expire. See Expiration below for details.
  final List<BucketV2LifecycleRuleExpiration>? expirations;

  /// Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  final String? id;

  /// Specifies when noncurrent object versions expire. See Noncurrent Version Expiration below for details.
  final List<BucketV2LifecycleRuleNoncurrentVersionExpiration>?
      noncurrentVersionExpirations;

  /// Specifies when noncurrent object versions transitions. See Noncurrent Version Transition below for details.
  final List<BucketV2LifecycleRuleNoncurrentVersionTransition>?
      noncurrentVersionTransitions;

  /// Object key prefix identifying one or more objects to which the rule applies.
  final String? prefix;

  /// Specifies object tags key and value.
  final Map<String, String>? tags;

  /// Specifies a period in the object's transitions. See Transition below for details.
  final List<BucketV2LifecycleRuleTransition>? transitions;

  BucketV2LifecycleRule({
    this.abortIncompleteMultipartUploadDays,
    required this.enabled,
    this.expirations,
    this.id,
    this.noncurrentVersionExpirations,
    this.noncurrentVersionTransitions,
    this.prefix,
    this.tags,
    this.transitions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final abortIncompleteMultipartUploadDaysValue =
        abortIncompleteMultipartUploadDays;
    if (abortIncompleteMultipartUploadDaysValue != null) {
      map['abortIncompleteMultipartUploadDays'] =
          abortIncompleteMultipartUploadDaysValue;
    }
    map['enabled'] = enabled;
    final expirationsValue = expirations;
    if (expirationsValue != null) {
      map['expirations'] = Input.encodeList<BucketV2LifecycleRuleExpiration,
          Map<String, dynamic>>(expirationsValue, (value) => value.toMap());
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final noncurrentVersionExpirationsValue = noncurrentVersionExpirations;
    if (noncurrentVersionExpirationsValue != null) {
      map['noncurrentVersionExpirations'] = Input.encodeList<
              BucketV2LifecycleRuleNoncurrentVersionExpiration,
              Map<String, dynamic>>(
          noncurrentVersionExpirationsValue, (value) => value.toMap());
    }
    final noncurrentVersionTransitionsValue = noncurrentVersionTransitions;
    if (noncurrentVersionTransitionsValue != null) {
      map['noncurrentVersionTransitions'] = Input.encodeList<
              BucketV2LifecycleRuleNoncurrentVersionTransition,
              Map<String, dynamic>>(
          noncurrentVersionTransitionsValue, (value) => value.toMap());
    }
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitionsValue = transitions;
    if (transitionsValue != null) {
      map['transitions'] = Input.encodeList<BucketV2LifecycleRuleTransition,
          Map<String, dynamic>>(transitionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BucketV2LifecycleRule.fromMap(Map<String, dynamic> map) {
    return BucketV2LifecycleRule(
      abortIncompleteMultipartUploadDays:
          map['abortIncompleteMultipartUploadDays'] == null
              ? null
              : map['abortIncompleteMultipartUploadDays'] as int,
      enabled: map['enabled'] as bool,
      expirations: map['expirations'] == null
          ? null
          : Input.decodeList<BucketV2LifecycleRuleExpiration>(
              map['expirations'],
              (value) => BucketV2LifecycleRuleExpiration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      noncurrentVersionExpirations: map['noncurrentVersionExpirations'] == null
          ? null
          : Input.decodeList<BucketV2LifecycleRuleNoncurrentVersionExpiration>(
              map['noncurrentVersionExpirations'],
              (value) =>
                  BucketV2LifecycleRuleNoncurrentVersionExpiration.fromMap(
                      (value as Map).cast<String, dynamic>())),
      noncurrentVersionTransitions: map['noncurrentVersionTransitions'] == null
          ? null
          : Input.decodeList<BucketV2LifecycleRuleNoncurrentVersionTransition>(
              map['noncurrentVersionTransitions'],
              (value) =>
                  BucketV2LifecycleRuleNoncurrentVersionTransition.fromMap(
                      (value as Map).cast<String, dynamic>())),
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transitions: map['transitions'] == null
          ? null
          : Input.decodeList<BucketV2LifecycleRuleTransition>(
              map['transitions'],
              (value) => BucketV2LifecycleRuleTransition.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
