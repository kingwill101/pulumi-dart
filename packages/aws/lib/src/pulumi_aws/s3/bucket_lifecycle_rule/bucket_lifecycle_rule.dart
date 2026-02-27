// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_lifecycle_rule_expiration/bucket_lifecycle_rule_expiration.dart';
import '../bucket_lifecycle_rule_noncurrent_version_expiration/bucket_lifecycle_rule_noncurrent_version_expiration.dart';
import '../bucket_lifecycle_rule_noncurrent_version_transition/bucket_lifecycle_rule_noncurrent_version_transition.dart';
import '../bucket_lifecycle_rule_transition/bucket_lifecycle_rule_transition.dart';

class BucketLifecycleRule {
  /// Specifies the number of days after initiating a multipart upload when the multipart upload must be completed.
  final int? abortIncompleteMultipartUploadDays;

  /// Specifies lifecycle rule status.
  final bool enabled;

  /// Specifies a period in the object's expire. See Expiration below for details.
  final BucketLifecycleRuleExpiration? expiration;

  /// Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  final String? id;

  /// Specifies when noncurrent object versions expire. See Noncurrent Version Expiration below for details.
  final BucketLifecycleRuleNoncurrentVersionExpiration?
      noncurrentVersionExpiration;

  /// Specifies when noncurrent object versions transitions. See Noncurrent Version Transition below for details.
  final List<BucketLifecycleRuleNoncurrentVersionTransition>?
      noncurrentVersionTransitions;

  /// Object key prefix identifying one or more objects to which the rule applies.
  final String? prefix;

  /// Specifies object tags key and value.
  final Map<String, String>? tags;

  /// Specifies a period in the object's transitions. See Transition below for details.
  final List<BucketLifecycleRuleTransition>? transitions;

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
    final map = <String, dynamic>{};
    final abortIncompleteMultipartUploadDaysValue =
        abortIncompleteMultipartUploadDays;
    if (abortIncompleteMultipartUploadDaysValue != null) {
      map['abortIncompleteMultipartUploadDays'] =
          abortIncompleteMultipartUploadDaysValue;
    }
    map['enabled'] = enabled;
    final expirationValue = expiration;
    if (expirationValue != null) {
      map['expiration'] = expirationValue.toMap();
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final noncurrentVersionExpirationValue = noncurrentVersionExpiration;
    if (noncurrentVersionExpirationValue != null) {
      map['noncurrentVersionExpiration'] =
          noncurrentVersionExpirationValue.toMap();
    }
    final noncurrentVersionTransitionsValue = noncurrentVersionTransitions;
    if (noncurrentVersionTransitionsValue != null) {
      map['noncurrentVersionTransitions'] = pulumi.Input.encodeList<
              BucketLifecycleRuleNoncurrentVersionTransition,
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
      map['transitions'] = pulumi.Input.encodeList<
          BucketLifecycleRuleTransition,
          Map<String, dynamic>>(transitionsValue, (value) => value.toMap());
    }
    return map;
  }

  factory BucketLifecycleRule.fromMap(Map<String, dynamic> map) {
    return BucketLifecycleRule(
      abortIncompleteMultipartUploadDays:
          map['abortIncompleteMultipartUploadDays'] == null
              ? null
              : map['abortIncompleteMultipartUploadDays'] as int,
      enabled: map['enabled'] as bool,
      expiration: map['expiration'] == null
          ? null
          : BucketLifecycleRuleExpiration.fromMap(
              (map['expiration'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      noncurrentVersionExpiration: map['noncurrentVersionExpiration'] == null
          ? null
          : BucketLifecycleRuleNoncurrentVersionExpiration.fromMap(
              (map['noncurrentVersionExpiration'] as Map)
                  .cast<String, dynamic>()),
      noncurrentVersionTransitions: map['noncurrentVersionTransitions'] == null
          ? null
          : pulumi.Input.decodeList<
                  BucketLifecycleRuleNoncurrentVersionTransition>(
              map['noncurrentVersionTransitions'],
              (value) => BucketLifecycleRuleNoncurrentVersionTransition.fromMap(
                  (value as Map).cast<String, dynamic>())),
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      transitions: map['transitions'] == null
          ? null
          : pulumi.Input.decodeList<BucketLifecycleRuleTransition>(
              map['transitions'],
              (value) => BucketLifecycleRuleTransition.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
