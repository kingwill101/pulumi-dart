// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_lifecycle_rule_expiration.dart';
import 'bucket_v2_lifecycle_rule_noncurrent_version_expiration.dart';
import 'bucket_v2_lifecycle_rule_noncurrent_version_transition.dart';
import 'bucket_v2_lifecycle_rule_transition.dart';

class BucketV2LifecycleRule {
  /// Specifies the number of days after initiating a multipart upload when the multipart upload must be completed.
  final pulumi.Input<int>? abortIncompleteMultipartUploadDays;

  /// Specifies lifecycle rule status.
  final pulumi.Input<bool> enabled;

  /// Specifies a period in the object's expire. See Expiration below for details.
  final pulumi.Input<List<BucketV2LifecycleRuleExpiration>>? expirations;

  /// Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  final pulumi.Input<String>? id;

  /// Specifies when noncurrent object versions expire. See Noncurrent Version Expiration below for details.
  final pulumi.Input<List<BucketV2LifecycleRuleNoncurrentVersionExpiration>>?
  noncurrentVersionExpirations;

  /// Specifies when noncurrent object versions transitions. See Noncurrent Version Transition below for details.
  final pulumi.Input<List<BucketV2LifecycleRuleNoncurrentVersionTransition>>?
  noncurrentVersionTransitions;

  /// Object key prefix identifying one or more objects to which the rule applies.
  final pulumi.Input<String>? prefix;

  /// Specifies object tags key and value.
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies a period in the object's transitions. See Transition below for details.
  final pulumi.Input<List<BucketV2LifecycleRuleTransition>>? transitions;

  /// Creates a new [BucketV2LifecycleRule].
  /// [abortIncompleteMultipartUploadDays] Specifies the number of days after initiating a multipart upload when the multipart upload must be completed.
  /// [enabled] Specifies lifecycle rule status.
  /// [expirations] Specifies a period in the object's expire. See Expiration below for details.
  /// [id] Unique identifier for the rule. Must be less than or equal to 255 characters in length.
  /// [noncurrentVersionExpirations] Specifies when noncurrent object versions expire. See Noncurrent Version Expiration below for details.
  /// [noncurrentVersionTransitions] Specifies when noncurrent object versions transitions. See Noncurrent Version Transition below for details.
  /// [prefix] Object key prefix identifying one or more objects to which the rule applies.
  /// [tags] Specifies object tags key and value.
  /// [transitions] Specifies a period in the object's transitions. See Transition below for details.
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
    return <String, dynamic>{
      'abortIncompleteMultipartUploadDays': ?abortIncompleteMultipartUploadDays,
      'enabled': enabled,
      'expirations':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketV2LifecycleRuleExpiration>,
            List<Map<String, dynamic>>
          >(
            expirations,
            (value) =>
                pulumi.Input.encodeList<
                  BucketV2LifecycleRuleExpiration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': ?id,
      'noncurrentVersionExpirations':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketV2LifecycleRuleNoncurrentVersionExpiration>,
            List<Map<String, dynamic>>
          >(
            noncurrentVersionExpirations,
            (value) =>
                pulumi.Input.encodeList<
                  BucketV2LifecycleRuleNoncurrentVersionExpiration,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'noncurrentVersionTransitions':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketV2LifecycleRuleNoncurrentVersionTransition>,
            List<Map<String, dynamic>>
          >(
            noncurrentVersionTransitions,
            (value) =>
                pulumi.Input.encodeList<
                  BucketV2LifecycleRuleNoncurrentVersionTransition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'prefix': ?prefix,
      'tags': ?tags,
      'transitions':
          ?pulumi.Input.mapOptionalInputValue<
            List<BucketV2LifecycleRuleTransition>,
            List<Map<String, dynamic>>
          >(
            transitions,
            (value) =>
                pulumi.Input.encodeList<
                  BucketV2LifecycleRuleTransition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory BucketV2LifecycleRule.fromMap(Map<String, dynamic> map) {
    return BucketV2LifecycleRule(
      abortIncompleteMultipartUploadDays: (() {
        final guardedValue = map['abortIncompleteMultipartUploadDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      expirations: (() {
        final guardedValue = map['expirations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BucketV2LifecycleRuleExpiration>(
            guardedValue,
            (value) => BucketV2LifecycleRuleExpiration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      noncurrentVersionExpirations: (() {
        final guardedValue = map['noncurrentVersionExpirations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            BucketV2LifecycleRuleNoncurrentVersionExpiration
          >(
            guardedValue,
            (value) => BucketV2LifecycleRuleNoncurrentVersionExpiration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      noncurrentVersionTransitions: (() {
        final guardedValue = map['noncurrentVersionTransitions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            BucketV2LifecycleRuleNoncurrentVersionTransition
          >(
            guardedValue,
            (value) => BucketV2LifecycleRuleNoncurrentVersionTransition.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      prefix: (() {
        final guardedValue = map['prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      transitions: (() {
        final guardedValue = map['transitions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<BucketV2LifecycleRuleTransition>(
            guardedValue,
            (value) => BucketV2LifecycleRuleTransition.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
