// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trail_advanced_event_selector.dart';
import 'trail_event_selector.dart';
import 'trail_insight_selector.dart';

/// {@template pulumi_cloudtrail_trail_trail_args_doc}
/// The set of arguments for Trail.
/// {@endtemplate}
/// {@macro pulumi_cloudtrail_trail_trail_args_doc}
class TrailArgs {
  /// Specifies an advanced event selector for enabling data event logging. Fields documented below. Conflicts with `event_selector`.
  final pulumi.Input<List<TrailAdvancedEventSelector>>? advancedEventSelectors;
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
  final pulumi.Input<String> s3BucketName;
  /// S3 key prefix that follows the name of the bucket you have designated for log file delivery.
  final pulumi.Input<String>? s3KeyPrefix;
  /// Name of the Amazon SNS topic defined for notification of log file delivery. Specify the SNS topic ARN if it resides in another region.
  final pulumi.Input<String>? snsTopicName;
  /// Map of tags to assign to the trail. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TrailArgs].
  /// [advancedEventSelectors] Specifies an advanced event selector for enabling data event logging. Fields documented below. Conflicts with `event_selector`.
  /// [cloudWatchLogsGroupArn] Log group name using an ARN that represents the log group to which CloudTrail logs will be delivered. Note that CloudTrail requires the Log Stream wildcard.
  /// [cloudWatchLogsRoleArn] Role for the CloudWatch Logs endpoint to assume to write to a user’s log group.
  /// [enableLogFileValidation] Whether log file integrity validation is enabled. Defaults to `false`.
  /// [enableLogging] Enables logging for the trail. When set to `true`, logging is started by calling the [`StartLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StartLogging.html) API. When set to `false`, logging is stopped by calling the [`StopLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StopLogging.html) API. Defaults to `true`.
  /// [eventSelectors] Specifies an event selector for enabling data event logging. Fields documented below. Please note the [CloudTrail limits](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html) when configuring these. Conflicts with `advanced_event_selector`.
  /// [includeGlobalServiceEvents] Whether the trail is publishing events from global services such as IAM to the log files. Defaults to `true`.
  /// [insightSelectors] Configuration block for identifying unusual operational activity. See details below.
  /// [isMultiRegionTrail] Whether the trail is created in the current region or in all regions. Defaults to `false`.
  /// [isOrganizationTrail] Whether the trail is an AWS Organizations trail. Organization trails log events for the master account and all member accounts. Can only be created in the organization master account. Defaults to `false`.
  /// [kmsKeyId] KMS key ARN to use to encrypt the logs delivered by CloudTrail.
  /// [name] Name of the trail.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3BucketName] Name of the S3 bucket designated for publishing log files.
  /// [s3KeyPrefix] S3 key prefix that follows the name of the bucket you have designated for log file delivery.
  /// [snsTopicName] Name of the Amazon SNS topic defined for notification of log file delivery. Specify the SNS topic ARN if it resides in another region.
  /// [tags] Map of tags to assign to the trail. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
    return <String, dynamic>{
      'advancedEventSelectors': ?pulumi.Input.mapOptionalInputValue<List<TrailAdvancedEventSelector>, List<Map<String, dynamic>>>(advancedEventSelectors, (value) => pulumi.Input.encodeList<TrailAdvancedEventSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cloudWatchLogsGroupArn': ?cloudWatchLogsGroupArn,
      'cloudWatchLogsRoleArn': ?cloudWatchLogsRoleArn,
      'enableLogFileValidation': ?enableLogFileValidation,
      'enableLogging': ?enableLogging,
      'eventSelectors': ?pulumi.Input.mapOptionalInputValue<List<TrailEventSelector>, List<Map<String, dynamic>>>(eventSelectors, (value) => pulumi.Input.encodeList<TrailEventSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includeGlobalServiceEvents': ?includeGlobalServiceEvents,
      'insightSelectors': ?pulumi.Input.mapOptionalInputValue<List<TrailInsightSelector>, List<Map<String, dynamic>>>(insightSelectors, (value) => pulumi.Input.encodeList<TrailInsightSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isMultiRegionTrail': ?isMultiRegionTrail,
      'isOrganizationTrail': ?isOrganizationTrail,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'region': ?region,
      's3BucketName': s3BucketName,
      's3KeyPrefix': ?s3KeyPrefix,
      'snsTopicName': ?snsTopicName,
      'tags': ?tags,
    };
  }

  factory TrailArgs.fromMap(Map<String, dynamic> map) {
    return TrailArgs(
      advancedEventSelectors: map['advancedEventSelectors'] == null ? null : (pulumi.Input.decodeList<TrailAdvancedEventSelector>(map['advancedEventSelectors'], (value) => TrailAdvancedEventSelector.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cloudWatchLogsGroupArn: map['cloudWatchLogsGroupArn'] == null ? null : (map['cloudWatchLogsGroupArn'] as String).input(),
      cloudWatchLogsRoleArn: map['cloudWatchLogsRoleArn'] == null ? null : (map['cloudWatchLogsRoleArn'] as String).input(),
      enableLogFileValidation: map['enableLogFileValidation'] == null ? null : (map['enableLogFileValidation'] as bool).input(),
      enableLogging: map['enableLogging'] == null ? null : (map['enableLogging'] as bool).input(),
      eventSelectors: map['eventSelectors'] == null ? null : (pulumi.Input.decodeList<TrailEventSelector>(map['eventSelectors'], (value) => TrailEventSelector.fromMap((value as Map).cast<String, dynamic>()))).input(),
      includeGlobalServiceEvents: map['includeGlobalServiceEvents'] == null ? null : (map['includeGlobalServiceEvents'] as bool).input(),
      insightSelectors: map['insightSelectors'] == null ? null : (pulumi.Input.decodeList<TrailInsightSelector>(map['insightSelectors'], (value) => TrailInsightSelector.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isMultiRegionTrail: map['isMultiRegionTrail'] == null ? null : (map['isMultiRegionTrail'] as bool).input(),
      isOrganizationTrail: map['isOrganizationTrail'] == null ? null : (map['isOrganizationTrail'] as bool).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      s3BucketName: (map['s3BucketName'] as String).input(),
      s3KeyPrefix: map['s3KeyPrefix'] == null ? null : (map['s3KeyPrefix'] as String).input(),
      snsTopicName: map['snsTopicName'] == null ? null : (map['snsTopicName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

