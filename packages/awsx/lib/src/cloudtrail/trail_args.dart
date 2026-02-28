// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../awsx/optional_log_group.dart';
import '../awsx/required_bucket.dart';

/// {@template pulumi_cloudtrail_trail_args_doc}
/// The set of arguments for Trail.
/// {@endtemplate}
/// {@macro pulumi_cloudtrail_trail_args_doc}
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

  /// Creates a new [TrailArgs].
  /// [advancedEventSelectors] Specifies an advanced event selector for enabling data event logging. Fields documented below. Conflicts with `event_selector`.
  /// [cloudWatchLogsGroup] Log group to which CloudTrail logs will be delivered.
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
  /// [s3Bucket] S3 bucket designated for publishing log files.
  /// [s3KeyPrefix] S3 key prefix that follows the name of the bucket you have designated for log file delivery.
  /// [snsTopicName] Name of the Amazon SNS topic defined for notification of log file delivery. Specify the SNS topic ARN if it resides in another region.
  /// [tags] Map of tags to assign to the trail. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  TrailArgs({
    List<Map<String, dynamic>>? advancedEventSelectors,
    OptionalLogGroup? cloudWatchLogsGroup,
    bool? enableLogFileValidation,
    bool? enableLogging,
    List<Map<String, dynamic>>? eventSelectors,
    bool? includeGlobalServiceEvents,
    List<Map<String, dynamic>>? insightSelectors,
    bool? isMultiRegionTrail,
    bool? isOrganizationTrail,
    String? kmsKeyId,
    String? name,
    String? region,
    RequiredBucket? s3Bucket,
    String? s3KeyPrefix,
    String? snsTopicName,
    Map<String, String>? tags,
  }) : advancedEventSelectors =
           pulumi.Input.asOptionalInput<List<Map<String, dynamic>>>(
             advancedEventSelectors,
           ),
       cloudWatchLogsGroup = pulumi.Input.asOptionalInput<OptionalLogGroup>(
         cloudWatchLogsGroup,
       ),
       enableLogFileValidation = pulumi.Input.asOptionalInput<bool>(
         enableLogFileValidation,
       ),
       enableLogging = pulumi.Input.asOptionalInput<bool>(enableLogging),
       eventSelectors = pulumi
           .Input.asOptionalInput<List<Map<String, dynamic>>>(eventSelectors),
       includeGlobalServiceEvents = pulumi.Input.asOptionalInput<bool>(
         includeGlobalServiceEvents,
       ),
       insightSelectors = pulumi
           .Input.asOptionalInput<List<Map<String, dynamic>>>(insightSelectors),
       isMultiRegionTrail = pulumi.Input.asOptionalInput<bool>(
         isMultiRegionTrail,
       ),
       isOrganizationTrail = pulumi.Input.asOptionalInput<bool>(
         isOrganizationTrail,
       ),
       kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       s3Bucket = pulumi.Input.asOptionalInput<RequiredBucket>(s3Bucket),
       s3KeyPrefix = pulumi.Input.asOptionalInput<String>(s3KeyPrefix),
       snsTopicName = pulumi.Input.asOptionalInput<String>(snsTopicName),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advancedEventSelectorsValue = advancedEventSelectors;
    if (advancedEventSelectorsValue != null) {
      map['advancedEventSelectors'] = advancedEventSelectorsValue;
    }
    final cloudWatchLogsGroupValue = cloudWatchLogsGroup;
    if (cloudWatchLogsGroupValue != null) {
      map['cloudWatchLogsGroup'] =
          pulumi.Input.mapOptionalInputValue<
            OptionalLogGroup,
            Map<String, dynamic>
          >(cloudWatchLogsGroupValue, (value) => value.toMap());
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
      map['s3Bucket'] =
          pulumi.Input.mapOptionalInputValue<
            RequiredBucket,
            Map<String, dynamic>
          >(s3BucketValue, (value) => value.toMap());
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
      advancedEventSelectors: map['advancedEventSelectors'] == null
          ? null
          : (map['advancedEventSelectors'] as List)
                .cast<Map<String, dynamic>>(),
      cloudWatchLogsGroup: map['cloudWatchLogsGroup'] == null
          ? null
          : OptionalLogGroup.fromMap(
              (map['cloudWatchLogsGroup'] as Map).cast<String, dynamic>(),
            ),
      enableLogFileValidation: map['enableLogFileValidation'] == null
          ? null
          : map['enableLogFileValidation'] as bool,
      enableLogging: map['enableLogging'] == null
          ? null
          : map['enableLogging'] as bool,
      eventSelectors: map['eventSelectors'] == null
          ? null
          : (map['eventSelectors'] as List).cast<Map<String, dynamic>>(),
      includeGlobalServiceEvents: map['includeGlobalServiceEvents'] == null
          ? null
          : map['includeGlobalServiceEvents'] as bool,
      insightSelectors: map['insightSelectors'] == null
          ? null
          : (map['insightSelectors'] as List).cast<Map<String, dynamic>>(),
      isMultiRegionTrail: map['isMultiRegionTrail'] == null
          ? null
          : map['isMultiRegionTrail'] as bool,
      isOrganizationTrail: map['isOrganizationTrail'] == null
          ? null
          : map['isOrganizationTrail'] as bool,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      s3Bucket: map['s3Bucket'] == null
          ? null
          : RequiredBucket.fromMap(
              (map['s3Bucket'] as Map).cast<String, dynamic>(),
            ),
      s3KeyPrefix: map['s3KeyPrefix'] == null
          ? null
          : map['s3KeyPrefix'] as String,
      snsTopicName: map['snsTopicName'] == null
          ? null
          : map['snsTopicName'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
