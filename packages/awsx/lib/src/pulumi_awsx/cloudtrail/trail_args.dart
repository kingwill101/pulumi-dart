// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../awsx/optional_log_group.dart';
import '../awsx/required_bucket.dart';

/// The set of arguments for Trail.
class TrailArgs {
  /// Specifies an advanced event selector for enabling data event logging. Fields documented below. Conflicts with `event_selector`.
  final pulumi.Input<List<Map<String, dynamic>>>? advancedEventSelectors;

  /// Log group to which CloudTrail logs will be delivered.
  final pulumi.Input<OptionalLogGroup>? cloudWatchLogsGroup;

  /// Whether log file integrity validation is enabled. Defaults to `false`.
  final pulumi.Input<bool>? enableLogFileValidation;

  /// Enables logging for the trail. When set to `true`, logging is started by calling the [`StartLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StartLogging.html) API. When set to `false`, logging is stopped by calling the [`StopLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StopLogging.html) API. Defaults to `true`.
  final pulumi.Input<bool>? enableLogging;

  /// Specifies an event selector for enabling data event logging. Fields documented below. Please note the [CloudTrail limits](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html) when configuring these. Conflicts with `advanced_event_selector`.
  final pulumi.Input<List<Map<String, dynamic>>>? eventSelectors;

  /// Whether the trail is publishing events from global services such as IAM to the log files. Defaults to `true`.
  final pulumi.Input<bool>? includeGlobalServiceEvents;

  /// Configuration block for identifying unusual operational activity. See details below.
  final pulumi.Input<List<Map<String, dynamic>>>? insightSelectors;

  /// Whether the trail is created in the current region or in all regions. Defaults to `false`.
  final pulumi.Input<bool>? isMultiRegionTrail;

  /// Whether the trail is an AWS Organizations trail. Organization trails log events for the master account and all member accounts. Can only be created in the organization master account. Defaults to `false`.
  final pulumi.Input<bool>? isOrganizationTrail;

  /// KMS key ARN to use to encrypt the logs delivered by CloudTrail.
  final pulumi.Input<String>? kmsKeyId;

  /// Name of the trail.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// S3 bucket designated for publishing log files.
  final pulumi.Input<RequiredBucket>? s3Bucket;

  /// S3 key prefix that follows the name of the bucket you have designated for log file delivery.
  final pulumi.Input<String>? s3KeyPrefix;

  /// Name of the Amazon SNS topic defined for notification of log file delivery. Specify the SNS topic ARN if it resides in another region.
  final pulumi.Input<String>? snsTopicName;

  /// Map of tags to assign to the trail. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  TrailArgs({
    this.advancedEventSelectors,
    this.cloudWatchLogsGroup,
    this.enableLogFileValidation,
    this.enableLogging,
    this.eventSelectors,
    this.includeGlobalServiceEvents,
    this.insightSelectors,
    this.isMultiRegionTrail,
    this.isOrganizationTrail,
    this.kmsKeyId,
    this.name,
    this.region,
    this.s3Bucket,
    this.s3KeyPrefix,
    this.snsTopicName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedEventSelectorsValue = advancedEventSelectors;
    if (advancedEventSelectorsValue != null) {
      map['advancedEventSelectors'] = advancedEventSelectorsValue;
    }
    final cloudWatchLogsGroupValue = cloudWatchLogsGroup;
    if (cloudWatchLogsGroupValue != null) {
      map['cloudWatchLogsGroup'] = pulumi.Input.mapOptionalInputValue<
              OptionalLogGroup, Map<String, dynamic>>(
          cloudWatchLogsGroupValue, (value) => value.toMap());
    }
    final enableLogFileValidationValue = enableLogFileValidation;
    if (enableLogFileValidationValue != null) {
      map['enableLogFileValidation'] = enableLogFileValidationValue;
    }
    final enableLoggingValue = enableLogging;
    if (enableLoggingValue != null) {
      map['enableLogging'] = enableLoggingValue;
    }
    final eventSelectorsValue = eventSelectors;
    if (eventSelectorsValue != null) {
      map['eventSelectors'] = eventSelectorsValue;
    }
    final includeGlobalServiceEventsValue = includeGlobalServiceEvents;
    if (includeGlobalServiceEventsValue != null) {
      map['includeGlobalServiceEvents'] = includeGlobalServiceEventsValue;
    }
    final insightSelectorsValue = insightSelectors;
    if (insightSelectorsValue != null) {
      map['insightSelectors'] = insightSelectorsValue;
    }
    final isMultiRegionTrailValue = isMultiRegionTrail;
    if (isMultiRegionTrailValue != null) {
      map['isMultiRegionTrail'] = isMultiRegionTrailValue;
    }
    final isOrganizationTrailValue = isOrganizationTrail;
    if (isOrganizationTrailValue != null) {
      map['isOrganizationTrail'] = isOrganizationTrailValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final s3BucketValue = s3Bucket;
    if (s3BucketValue != null) {
      map['s3Bucket'] = pulumi.Input.mapOptionalInputValue<RequiredBucket,
          Map<String, dynamic>>(s3BucketValue, (value) => value.toMap());
    }
    final s3KeyPrefixValue = s3KeyPrefix;
    if (s3KeyPrefixValue != null) {
      map['s3KeyPrefix'] = s3KeyPrefixValue;
    }
    final snsTopicNameValue = snsTopicName;
    if (snsTopicNameValue != null) {
      map['snsTopicName'] = snsTopicNameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory TrailArgs.fromMap(Map<String, dynamic> map) {
    return TrailArgs(
      advancedEventSelectors:
          pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
              map['advancedEventSelectors']),
      cloudWatchLogsGroup: pulumi.Input.asOptionalInput<OptionalLogGroup>(
          map['cloudWatchLogsGroup']),
      enableLogFileValidation:
          pulumi.Input.asOptionalInput<bool>(map['enableLogFileValidation']),
      enableLogging: pulumi.Input.asOptionalInput<bool>(map['enableLogging']),
      eventSelectors: pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
          map['eventSelectors']),
      includeGlobalServiceEvents:
          pulumi.Input.asOptionalInput<bool>(map['includeGlobalServiceEvents']),
      insightSelectors:
          pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
              map['insightSelectors']),
      isMultiRegionTrail:
          pulumi.Input.asOptionalInput<bool>(map['isMultiRegionTrail']),
      isOrganizationTrail:
          pulumi.Input.asOptionalInput<bool>(map['isOrganizationTrail']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      s3Bucket: pulumi.Input.asOptionalInput<RequiredBucket>(map['s3Bucket']),
      s3KeyPrefix: pulumi.Input.asOptionalInput<String>(map['s3KeyPrefix']),
      snsTopicName: pulumi.Input.asOptionalInput<String>(map['snsTopicName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
