// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'abort_incomplete_multipart_upload.dart';
import 'noncurrent_version_expiration.dart';
import 'noncurrent_version_transition.dart';
import 'tag_filter.dart';
import 'transition.dart';

/// Definition of Rule
class Rule {
  /// Specifies a lifecycle rule that stops incomplete multipart uploads to an Amazon S3 bucket. Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload. For more information, see [Stopping Incomplete Multipart Uploads Using a Bucket Lifecycle Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config) in the *Amazon S3 User Guide*.
  final AbortIncompleteMultipartUpload? abortIncompleteMultipartUpload;
  /// Indicates when objects are deleted from Amazon S3 and Amazon S3 Glacier. The date value must be in ISO 8601 format. The time is always midnight UTC. If you specify an expiration and transition time, you must use the same time unit for both properties (either in days or by date). The expiration time must also be later than the transition time. The date value in ISO 8601 format. The timezone is always UTC. (YYYY-MM-DDThh:mm:ssZ)
  final String? expirationDate;
  /// Indicates the number of days after creation when objects are deleted from Amazon S3 and Amazon S3 Glacier. If you specify an expiration and transition time, you must use the same time unit for both properties (either in days or by date). The expiration time must also be later than the transition time.
  final int? expirationInDays;
  /// Indicates whether Amazon S3 will remove a delete marker without any noncurrent versions. If set to true, the delete marker will be removed if there are no noncurrent versions. This cannot be specified with ``ExpirationInDays``, ``ExpirationDate``, or ``TagFilters``.
  final bool? expiredObjectDeleteMarker;
  /// Unique identifier for the rule. The value can't be longer than 255 characters.
  final String? id;
  /// Specifies when noncurrent object versions expire. Upon expiration, S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that S3 delete noncurrent object versions at a specific period in the object's lifetime. Specifies when noncurrent object versions expire. Upon expiration, S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that S3 delete noncurrent object versions at a specific period in the object's lifetime. For more information about setting a lifecycle rule configuration, see [AWS::S3::Bucket Rule](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html).
  final NoncurrentVersionExpiration? noncurrentVersionExpiration;
  /// (Deprecated.) For buckets with versioning enabled (or suspended), specifies the time, in days, between when a new version of the object is uploaded to the bucket and when old versions of the object expire. When object versions expire, Amazon S3 permanently deletes them. If you specify a transition and expiration time, the expiration time must be later than the transition time.
  final int? noncurrentVersionExpirationInDays;
  /// (Deprecated.) For buckets with versioning enabled (or suspended), specifies when non-current objects transition to a specified storage class. If you specify a transition and expiration time, the expiration time must be later than the transition time. If you specify this property, don't specify the ``NoncurrentVersionTransitions`` property. Container for the transition rule that describes when noncurrent objects transition to the ``STANDARD_IA``, ``ONEZONE_IA``, ``INTELLIGENT_TIERING``, ``GLACIER_IR``, ``GLACIER``, or ``DEEP_ARCHIVE`` storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to the ``STANDARD_IA``, ``ONEZONE_IA``, ``INTELLIGENT_TIERING``, ``GLACIER_IR``, ``GLACIER``, or ``DEEP_ARCHIVE`` storage class at a specific period in the object's lifetime. If you specify this property, don't specify the ``NoncurrentVersionTransitions`` property.
  final NoncurrentVersionTransition? noncurrentVersionTransition;
  /// For buckets with versioning enabled (or suspended), one or more transition rules that specify when non-current objects transition to a specified storage class. If you specify a transition and expiration time, the expiration time must be later than the transition time. If you specify this property, don't specify the ``NoncurrentVersionTransition`` property.
  final List<NoncurrentVersionTransition>? noncurrentVersionTransitions;
  /// Specifies the minimum object size in bytes for this rule to apply to. Objects must be larger than this value in bytes. For more information about size based rules, see [Lifecycle configuration using size-based rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-configuration-examples.html#lc-size-rules) in the *Amazon S3 User Guide*.
  final String? objectSizeGreaterThan;
  /// Specifies the maximum object size in bytes for this rule to apply to. Objects must be smaller than this value in bytes. For more information about sized based rules, see [Lifecycle configuration using size-based rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-configuration-examples.html#lc-size-rules) in the *Amazon S3 User Guide*.
  final String? objectSizeLessThan;
  /// Object key prefix that identifies one or more objects to which this rule applies.  Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  final String? prefix;
  /// If ``Enabled``, the rule is currently being applied. If ``Disabled``, the rule is not currently being applied.
  final String? status;
  /// Tags to use to identify a subset of objects to which the lifecycle rule applies.
  final List<TagFilter>? tagFilters;
  /// (Deprecated.) Specifies when an object transitions to a specified storage class. If you specify an expiration and transition time, you must use the same time unit for both properties (either in days or by date). The expiration time must also be later than the transition time. If you specify this property, don't specify the ``Transitions`` property. Specifies when an object transitions to a specified storage class. For more information about Amazon S3 lifecycle configuration rules, see [Transitioning Objects Using Amazon S3 Lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html) in the *Amazon S3 User Guide*.
  final Transition? transition;
  /// One or more transition rules that specify when an object transitions to a specified storage class. If you specify an expiration and transition time, you must use the same time unit for both properties (either in days or by date). The expiration time must also be later than the transition time. If you specify this property, don't specify the ``Transition`` property.
  final List<Transition>? transitions;

  /// Creates a new [Rule].
  /// [abortIncompleteMultipartUpload] Specifies a lifecycle rule that stops incomplete multipart uploads to an Amazon S3 bucket. Specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload. For more information, see [Stopping Incomplete Multipart Uploads Using a Bucket Lifecycle Policy](https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html#mpu-abort-incomplete-mpu-lifecycle-config) in the *Amazon S3 User Guide*.
  /// [expirationDate] Indicates when objects are deleted from Amazon S3 and Amazon S3 Glacier. The date value must be in ISO 8601 format. The time is always midnight UTC. If you specify an expiration and transition time, you must use the same time unit for both properties (either in days or by date). The expiration time must also be later than the transition time. The date value in ISO 8601 format. The timezone is always UTC. (YYYY-MM-DDThh:mm:ssZ)
  /// [expirationInDays] Indicates the number of days after creation when objects are deleted from Amazon S3 and Amazon S3 Glacier. If you specify an expiration and transition time, you must use the same time unit for both properties (either in days or by date). The expiration time must also be later than the transition time.
  /// [expiredObjectDeleteMarker] Indicates whether Amazon S3 will remove a delete marker without any noncurrent versions. If set to true, the delete marker will be removed if there are no noncurrent versions. This cannot be specified with ``ExpirationInDays``, ``ExpirationDate``, or ``TagFilters``.
  /// [id] Unique identifier for the rule. The value can't be longer than 255 characters.
  /// [noncurrentVersionExpiration] Specifies when noncurrent object versions expire. Upon expiration, S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that S3 delete noncurrent object versions at a specific period in the object's lifetime. Specifies when noncurrent object versions expire. Upon expiration, S3 permanently deletes the noncurrent object versions. You set this lifecycle configuration action on a bucket that has versioning enabled (or suspended) to request that S3 delete noncurrent object versions at a specific period in the object's lifetime. For more information about setting a lifecycle rule configuration, see [AWS::S3::Bucket Rule](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule.html).
  /// [noncurrentVersionExpirationInDays] (Deprecated.) For buckets with versioning enabled (or suspended), specifies the time, in days, between when a new version of the object is uploaded to the bucket and when old versions of the object expire. When object versions expire, Amazon S3 permanently deletes them. If you specify a transition and expiration time, the expiration time must be later than the transition time.
  /// [noncurrentVersionTransition] (Deprecated.) For buckets with versioning enabled (or suspended), specifies when non-current objects transition to a specified storage class. If you specify a transition and expiration time, the expiration time must be later than the transition time. If you specify this property, don't specify the ``NoncurrentVersionTransitions`` property. Container for the transition rule that describes when noncurrent objects transition to the ``STANDARD_IA``, ``ONEZONE_IA``, ``INTELLIGENT_TIERING``, ``GLACIER_IR``, ``GLACIER``, or ``DEEP_ARCHIVE`` storage class. If your bucket is versioning-enabled (or versioning is suspended), you can set this action to request that Amazon S3 transition noncurrent object versions to the ``STANDARD_IA``, ``ONEZONE_IA``, ``INTELLIGENT_TIERING``, ``GLACIER_IR``, ``GLACIER``, or ``DEEP_ARCHIVE`` storage class at a specific period in the object's lifetime. If you specify this property, don't specify the ``NoncurrentVersionTransitions`` property.
  /// [noncurrentVersionTransitions] For buckets with versioning enabled (or suspended), one or more transition rules that specify when non-current objects transition to a specified storage class. If you specify a transition and expiration time, the expiration time must be later than the transition time. If you specify this property, don't specify the ``NoncurrentVersionTransition`` property.
  /// [objectSizeGreaterThan] Specifies the minimum object size in bytes for this rule to apply to. Objects must be larger than this value in bytes. For more information about size based rules, see [Lifecycle configuration using size-based rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-configuration-examples.html#lc-size-rules) in the *Amazon S3 User Guide*.
  /// [objectSizeLessThan] Specifies the maximum object size in bytes for this rule to apply to. Objects must be smaller than this value in bytes. For more information about sized based rules, see [Lifecycle configuration using size-based rules](https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-configuration-examples.html#lc-size-rules) in the *Amazon S3 User Guide*.
  /// [prefix] Object key prefix that identifies one or more objects to which this rule applies.  Replacement must be made for object keys containing special characters (such as carriage returns) when using XML requests. For more information, see [XML related object key constraints](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-keys.html#object-key-xml-related-constraints).
  /// [status] If ``Enabled``, the rule is currently being applied. If ``Disabled``, the rule is not currently being applied.
  /// [tagFilters] Tags to use to identify a subset of objects to which the lifecycle rule applies.
  /// [transition] (Deprecated.) Specifies when an object transitions to a specified storage class. If you specify an expiration and transition time, you must use the same time unit for both properties (either in days or by date). The expiration time must also be later than the transition time. If you specify this property, don't specify the ``Transitions`` property. Specifies when an object transitions to a specified storage class. For more information about Amazon S3 lifecycle configuration rules, see [Transitioning Objects Using Amazon S3 Lifecycle](https://docs.aws.amazon.com/AmazonS3/latest/dev/lifecycle-transition-general-considerations.html) in the *Amazon S3 User Guide*.
  /// [transitions] One or more transition rules that specify when an object transitions to a specified storage class. If you specify an expiration and transition time, you must use the same time unit for both properties (either in days or by date). The expiration time must also be later than the transition time. If you specify this property, don't specify the ``Transition`` property.
  Rule({
    this.abortIncompleteMultipartUpload,
    this.expirationDate,
    this.expirationInDays,
    this.expiredObjectDeleteMarker,
    this.id,
    this.noncurrentVersionExpiration,
    this.noncurrentVersionExpirationInDays,
    this.noncurrentVersionTransition,
    this.noncurrentVersionTransitions,
    this.objectSizeGreaterThan,
    this.objectSizeLessThan,
    this.prefix,
    this.status,
    this.tagFilters,
    this.transition,
    this.transitions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abortIncompleteMultipartUpload': ?abortIncompleteMultipartUpload == null ? null : abortIncompleteMultipartUpload!.toMap(),
      'expirationDate': ?expirationDate,
      'expirationInDays': ?expirationInDays,
      'expiredObjectDeleteMarker': ?expiredObjectDeleteMarker,
      'id': ?id,
      'noncurrentVersionExpiration': ?noncurrentVersionExpiration == null ? null : noncurrentVersionExpiration!.toMap(),
      'noncurrentVersionExpirationInDays': ?noncurrentVersionExpirationInDays,
      'noncurrentVersionTransition': ?noncurrentVersionTransition == null ? null : noncurrentVersionTransition!.toMap(),
      'noncurrentVersionTransitions': ?noncurrentVersionTransitions == null ? null : pulumi.Input.encodeList<NoncurrentVersionTransition, Map<String, dynamic>>(noncurrentVersionTransitions!, (value) => value.toMap()),
      'objectSizeGreaterThan': ?objectSizeGreaterThan,
      'objectSizeLessThan': ?objectSizeLessThan,
      'prefix': ?prefix,
      'status': ?status,
      'tagFilters': ?tagFilters == null ? null : pulumi.Input.encodeList<TagFilter, Map<String, dynamic>>(tagFilters!, (value) => value.toMap()),
      'transition': ?transition == null ? null : transition!.toMap(),
      'transitions': ?transitions == null ? null : pulumi.Input.encodeList<Transition, Map<String, dynamic>>(transitions!, (value) => value.toMap()),
    };
  }

  factory Rule.fromMap(Map<String, dynamic> map) {
    return Rule(
      abortIncompleteMultipartUpload: map['abortIncompleteMultipartUpload'] == null ? null : AbortIncompleteMultipartUpload.fromMap((map['abortIncompleteMultipartUpload'] as Map).cast<String, dynamic>()),
      expirationDate: map['expirationDate'] == null ? null : map['expirationDate'] as String,
      expirationInDays: map['expirationInDays'] == null ? null : map['expirationInDays'] as int,
      expiredObjectDeleteMarker: map['expiredObjectDeleteMarker'] == null ? null : map['expiredObjectDeleteMarker'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      noncurrentVersionExpiration: map['noncurrentVersionExpiration'] == null ? null : NoncurrentVersionExpiration.fromMap((map['noncurrentVersionExpiration'] as Map).cast<String, dynamic>()),
      noncurrentVersionExpirationInDays: map['noncurrentVersionExpirationInDays'] == null ? null : map['noncurrentVersionExpirationInDays'] as int,
      noncurrentVersionTransition: map['noncurrentVersionTransition'] == null ? null : NoncurrentVersionTransition.fromMap((map['noncurrentVersionTransition'] as Map).cast<String, dynamic>()),
      noncurrentVersionTransitions: map['noncurrentVersionTransitions'] == null ? null : pulumi.Input.decodeList<NoncurrentVersionTransition>(map['noncurrentVersionTransitions'], (value) => NoncurrentVersionTransition.fromMap((value as Map).cast<String, dynamic>())),
      objectSizeGreaterThan: map['objectSizeGreaterThan'] == null ? null : map['objectSizeGreaterThan'] as String,
      objectSizeLessThan: map['objectSizeLessThan'] == null ? null : map['objectSizeLessThan'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tagFilters: map['tagFilters'] == null ? null : pulumi.Input.decodeList<TagFilter>(map['tagFilters'], (value) => TagFilter.fromMap((value as Map).cast<String, dynamic>())),
      transition: map['transition'] == null ? null : Transition.fromMap((map['transition'] as Map).cast<String, dynamic>()),
      transitions: map['transitions'] == null ? null : pulumi.Input.decodeList<Transition>(map['transitions'], (value) => Transition.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

