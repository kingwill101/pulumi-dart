// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../trail_advanced_event_selector/trail_advanced_event_selector.dart';
import '../trail_event_selector/trail_event_selector.dart';
import '../trail_insight_selector/trail_insight_selector.dart';

/// The set of arguments for Trail.
class TrailArgs {
  /// Specifies an advanced event selector for enabling data event logging. Fields documented below. Conflicts with `event_selector`.
  final Input<List<TrailAdvancedEventSelector>>? advancedEventSelectors;

  /// Log group name using an ARN that represents the log group to which CloudTrail logs will be delivered. Note that CloudTrail requires the Log Stream wildcard.
  final Input<String>? cloudWatchLogsGroupArn;

  /// Role for the CloudWatch Logs endpoint to assume to write to a user’s log group.
  final Input<String>? cloudWatchLogsRoleArn;

  /// Whether log file integrity validation is enabled. Defaults to `false`.
  final Input<bool>? enableLogFileValidation;

  /// Enables logging for the trail. When set to `true`, logging is started by calling the [`StartLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StartLogging.html) API. When set to `false`, logging is stopped by calling the [`StopLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StopLogging.html) API. Defaults to `true`.
  final Input<bool>? enableLogging;

  /// Specifies an event selector for enabling data event logging. Fields documented below. Please note the [CloudTrail limits](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html) when configuring these. Conflicts with `advanced_event_selector`.
  final Input<List<TrailEventSelector>>? eventSelectors;

  /// Whether the trail is publishing events from global services such as IAM to the log files. Defaults to `true`.
  final Input<bool>? includeGlobalServiceEvents;

  /// Configuration block for identifying unusual operational activity. See details below.
  final Input<List<TrailInsightSelector>>? insightSelectors;

  /// Whether the trail is created in the current region or in all regions. Defaults to `false`.
  final Input<bool>? isMultiRegionTrail;

  /// Whether the trail is an AWS Organizations trail. Organization trails log events for the master account and all member accounts. Can only be created in the organization master account. Defaults to `false`.
  final Input<bool>? isOrganizationTrail;

  /// KMS key ARN to use to encrypt the logs delivered by CloudTrail.
  final Input<String>? kmsKeyId;

  /// Name of the trail.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the S3 bucket designated for publishing log files.
  ///
  /// The following arguments are optional:
  final Input<String> s3BucketName;

  /// S3 key prefix that follows the name of the bucket you have designated for log file delivery.
  final Input<String>? s3KeyPrefix;

  /// Name of the Amazon SNS topic defined for notification of log file delivery. Specify the SNS topic ARN if it resides in another region.
  final Input<String>? snsTopicName;

  /// Map of tags to assign to the trail. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  TrailArgs({
    this.advancedEventSelectors,
    this.cloudWatchLogsGroupArn,
    this.cloudWatchLogsRoleArn,
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
    required this.s3BucketName,
    this.s3KeyPrefix,
    this.snsTopicName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedEventSelectorsValue = advancedEventSelectors;
    if (advancedEventSelectorsValue != null) {
      map['advancedEventSelectors'] = Input.mapOptionalInputValue<
              List<TrailAdvancedEventSelector>, List<Map<String, dynamic>>>(
          advancedEventSelectorsValue,
          (value) => Input.encodeList<TrailAdvancedEventSelector,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final cloudWatchLogsGroupArnValue = cloudWatchLogsGroupArn;
    if (cloudWatchLogsGroupArnValue != null) {
      map['cloudWatchLogsGroupArn'] = cloudWatchLogsGroupArnValue;
    }
    final cloudWatchLogsRoleArnValue = cloudWatchLogsRoleArn;
    if (cloudWatchLogsRoleArnValue != null) {
      map['cloudWatchLogsRoleArn'] = cloudWatchLogsRoleArnValue;
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
      map['eventSelectors'] = Input.mapOptionalInputValue<
              List<TrailEventSelector>, List<Map<String, dynamic>>>(
          eventSelectorsValue,
          (value) => Input.encodeList<TrailEventSelector, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final includeGlobalServiceEventsValue = includeGlobalServiceEvents;
    if (includeGlobalServiceEventsValue != null) {
      map['includeGlobalServiceEvents'] = includeGlobalServiceEventsValue;
    }
    final insightSelectorsValue = insightSelectors;
    if (insightSelectorsValue != null) {
      map['insightSelectors'] = Input.mapOptionalInputValue<
              List<TrailInsightSelector>, List<Map<String, dynamic>>>(
          insightSelectorsValue,
          (value) =>
              Input.encodeList<TrailInsightSelector, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
    map['s3BucketName'] = s3BucketName;
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
          Input.asOptionalInput<List<TrailAdvancedEventSelector>>(
              map['advancedEventSelectors']),
      cloudWatchLogsGroupArn:
          Input.asOptionalInput<String>(map['cloudWatchLogsGroupArn']),
      cloudWatchLogsRoleArn:
          Input.asOptionalInput<String>(map['cloudWatchLogsRoleArn']),
      enableLogFileValidation:
          Input.asOptionalInput<bool>(map['enableLogFileValidation']),
      enableLogging: Input.asOptionalInput<bool>(map['enableLogging']),
      eventSelectors: Input.asOptionalInput<List<TrailEventSelector>>(
          map['eventSelectors']),
      includeGlobalServiceEvents:
          Input.asOptionalInput<bool>(map['includeGlobalServiceEvents']),
      insightSelectors: Input.asOptionalInput<List<TrailInsightSelector>>(
          map['insightSelectors']),
      isMultiRegionTrail:
          Input.asOptionalInput<bool>(map['isMultiRegionTrail']),
      isOrganizationTrail:
          Input.asOptionalInput<bool>(map['isOrganizationTrail']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      s3BucketName: Input.asInput<String>(map['s3BucketName']),
      s3KeyPrefix: Input.asOptionalInput<String>(map['s3KeyPrefix']),
      snsTopicName: Input.asOptionalInput<String>(map['snsTopicName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
