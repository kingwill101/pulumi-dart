// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trail_advanced_event_selector.dart';
import 'trail_event_selector.dart';
import 'trail_insight_selector.dart';

/// Input properties used for looking up and filtering Trail resources.
class TrailState {
  /// Specifies an advanced event selector for enabling data event logging. Fields documented below. Conflicts with `event_selector`.
  final pulumi.Input<List<TrailAdvancedEventSelector>>? advancedEventSelectors;
  /// ARN of the trail.
  final pulumi.Input<String>? arn;
  /// Log group name using an ARN that represents the log group to which CloudTrail logs will be delivered. Note that CloudTrail requires the Log Stream wildcard.
  final pulumi.Input<String>? cloudWatchLogsGroupArn;
  /// Role for the CloudWatch Logs endpoint to assume to write to a user’s log group.
  final pulumi.Input<String>? cloudWatchLogsRoleArn;
  /// Whether log file integrity validation is enabled. Defaults to `false`.
  final pulumi.Input<bool>? enableLogFileValidation;
  /// Enables logging for the trail. When set to `true`, logging is started by calling the [`StartLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StartLogging.html) API. When set to `false`, logging is stopped by calling the [`StopLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StopLogging.html) API. Defaults to `true`.
  final pulumi.Input<bool>? enableLogging;
  /// Specifies an event selector for enabling data event logging. Fields documented below. Please note the [CloudTrail limits](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html) when configuring these. Conflicts with `advanced_event_selector`.
  final pulumi.Input<List<TrailEventSelector>>? eventSelectors;
  /// Region in which the trail was created.
  final pulumi.Input<String>? homeRegion;
  /// Whether the trail is publishing events from global services such as IAM to the log files. Defaults to `true`.
  final pulumi.Input<bool>? includeGlobalServiceEvents;
  /// Configuration block for identifying unusual operational activity. See details below.
  final pulumi.Input<List<TrailInsightSelector>>? insightSelectors;
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
  /// Name of the S3 bucket designated for publishing log files.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? s3BucketName;
  /// S3 key prefix that follows the name of the bucket you have designated for log file delivery.
  final pulumi.Input<String>? s3KeyPrefix;
  /// ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered.
  final pulumi.Input<String>? snsTopicArn;
  /// Name of the Amazon SNS topic defined for notification of log file delivery. Specify the SNS topic ARN if it resides in another region.
  final pulumi.Input<String>? snsTopicName;
  /// Map of tags to assign to the trail. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [TrailState].
  /// [advancedEventSelectors] Specifies an advanced event selector for enabling data event logging. Fields documented below. Conflicts with `event_selector`.
  /// [arn] ARN of the trail.
  /// [cloudWatchLogsGroupArn] Log group name using an ARN that represents the log group to which CloudTrail logs will be delivered. Note that CloudTrail requires the Log Stream wildcard.
  /// [cloudWatchLogsRoleArn] Role for the CloudWatch Logs endpoint to assume to write to a user’s log group.
  /// [enableLogFileValidation] Whether log file integrity validation is enabled. Defaults to `false`.
  /// [enableLogging] Enables logging for the trail. When set to `true`, logging is started by calling the [`StartLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StartLogging.html) API. When set to `false`, logging is stopped by calling the [`StopLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StopLogging.html) API. Defaults to `true`.
  /// [eventSelectors] Specifies an event selector for enabling data event logging. Fields documented below. Please note the [CloudTrail limits](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html) when configuring these. Conflicts with `advanced_event_selector`.
  /// [homeRegion] Region in which the trail was created.
  /// [includeGlobalServiceEvents] Whether the trail is publishing events from global services such as IAM to the log files. Defaults to `true`.
  /// [insightSelectors] Configuration block for identifying unusual operational activity. See details below.
  /// [isMultiRegionTrail] Whether the trail is created in the current region or in all regions. Defaults to `false`.
  /// [isOrganizationTrail] Whether the trail is an AWS Organizations trail. Organization trails log events for the master account and all member accounts. Can only be created in the organization master account. Defaults to `false`.
  /// [kmsKeyId] KMS key ARN to use to encrypt the logs delivered by CloudTrail.
  /// [name] Name of the trail.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3BucketName] Name of the S3 bucket designated for publishing log files.
  /// [s3KeyPrefix] S3 key prefix that follows the name of the bucket you have designated for log file delivery.
  /// [snsTopicArn] ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered.
  /// [snsTopicName] Name of the Amazon SNS topic defined for notification of log file delivery. Specify the SNS topic ARN if it resides in another region.
  /// [tags] Map of tags to assign to the trail. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  TrailState({
    this.advancedEventSelectors,
    this.arn,
    this.cloudWatchLogsGroupArn,
    this.cloudWatchLogsRoleArn,
    this.enableLogFileValidation,
    this.enableLogging,
    this.eventSelectors,
    this.homeRegion,
    this.includeGlobalServiceEvents,
    this.insightSelectors,
    this.isMultiRegionTrail,
    this.isOrganizationTrail,
    this.kmsKeyId,
    this.name,
    this.region,
    this.s3BucketName,
    this.s3KeyPrefix,
    this.snsTopicArn,
    this.snsTopicName,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedEventSelectors': ?pulumi.Input.mapOptionalInputValue<List<TrailAdvancedEventSelector>, List<Map<String, dynamic>>>(advancedEventSelectors, (value) => pulumi.Input.encodeList<TrailAdvancedEventSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'cloudWatchLogsGroupArn': ?cloudWatchLogsGroupArn,
      'cloudWatchLogsRoleArn': ?cloudWatchLogsRoleArn,
      'enableLogFileValidation': ?enableLogFileValidation,
      'enableLogging': ?enableLogging,
      'eventSelectors': ?pulumi.Input.mapOptionalInputValue<List<TrailEventSelector>, List<Map<String, dynamic>>>(eventSelectors, (value) => pulumi.Input.encodeList<TrailEventSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'homeRegion': ?homeRegion,
      'includeGlobalServiceEvents': ?includeGlobalServiceEvents,
      'insightSelectors': ?pulumi.Input.mapOptionalInputValue<List<TrailInsightSelector>, List<Map<String, dynamic>>>(insightSelectors, (value) => pulumi.Input.encodeList<TrailInsightSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isMultiRegionTrail': ?isMultiRegionTrail,
      'isOrganizationTrail': ?isOrganizationTrail,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'region': ?region,
      's3BucketName': ?s3BucketName,
      's3KeyPrefix': ?s3KeyPrefix,
      'snsTopicArn': ?snsTopicArn,
      'snsTopicName': ?snsTopicName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory TrailState.fromMap(Map<String, dynamic> map) {
    return TrailState(
      advancedEventSelectors: map['advancedEventSelectors'] == null ? null : ((pulumi.Input.decodeList<TrailAdvancedEventSelector>(map['advancedEventSelectors']!, (value) => TrailAdvancedEventSelector.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      cloudWatchLogsGroupArn: map['cloudWatchLogsGroupArn'] == null ? null : ((map['cloudWatchLogsGroupArn'] as String).input()).input(),
      cloudWatchLogsRoleArn: map['cloudWatchLogsRoleArn'] == null ? null : ((map['cloudWatchLogsRoleArn'] as String).input()).input(),
      enableLogFileValidation: map['enableLogFileValidation'] == null ? null : ((map['enableLogFileValidation'] as bool).input()).input(),
      enableLogging: map['enableLogging'] == null ? null : ((map['enableLogging'] as bool).input()).input(),
      eventSelectors: map['eventSelectors'] == null ? null : ((pulumi.Input.decodeList<TrailEventSelector>(map['eventSelectors']!, (value) => TrailEventSelector.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      homeRegion: map['homeRegion'] == null ? null : ((map['homeRegion'] as String).input()).input(),
      includeGlobalServiceEvents: map['includeGlobalServiceEvents'] == null ? null : ((map['includeGlobalServiceEvents'] as bool).input()).input(),
      insightSelectors: map['insightSelectors'] == null ? null : ((pulumi.Input.decodeList<TrailInsightSelector>(map['insightSelectors']!, (value) => TrailInsightSelector.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      isMultiRegionTrail: map['isMultiRegionTrail'] == null ? null : ((map['isMultiRegionTrail'] as bool).input()).input(),
      isOrganizationTrail: map['isOrganizationTrail'] == null ? null : ((map['isOrganizationTrail'] as bool).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      s3BucketName: map['s3BucketName'] == null ? null : ((map['s3BucketName'] as String).input()).input(),
      s3KeyPrefix: map['s3KeyPrefix'] == null ? null : ((map['s3KeyPrefix'] as String).input()).input(),
      snsTopicArn: map['snsTopicArn'] == null ? null : ((map['snsTopicArn'] as String).input()).input(),
      snsTopicName: map['snsTopicName'] == null ? null : ((map['snsTopicName'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

