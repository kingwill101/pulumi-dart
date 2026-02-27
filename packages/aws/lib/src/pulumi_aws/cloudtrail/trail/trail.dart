import 'package:pulumi/pulumi.dart';
import '../trail_advanced_event_selector/trail_advanced_event_selector.dart';
import '../trail_event_selector/trail_event_selector.dart';
import '../trail_insight_selector/trail_insight_selector.dart';
import 'trail_args.dart';

/// Provides a CloudTrail resource.
///
/// > **Tip:** For a multi-region trail, this resource must be in the home region of the trail.
///
/// > **Tip:** For an organization trail, this resource must be in the master account of the organization.
///
/// ## Example Usage
///
/// ### Basic
///
/// Enable CloudTrail to capture all compatible management events in region.
/// For capturing events from services like IAM, `include_global_service_events` must be enabled.
///
///
///
/// ### Data Event Logging
///
/// CloudTrail can log [Data Events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html) for certain services such as S3 objects and Lambda function invocations. Additional information about data event configuration can be found in the following links:
///
/// * [CloudTrail API DataResource documentation](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_DataResource.html) (for basic event selector).
/// * [CloudTrail API AdvancedFieldSelector documentation](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedFieldSelector.html) (for advanced event selector).
///
/// ### Logging All Lambda Function Invocations By Using Basic Event Selectors
///
///
///
/// ### Logging All S3 Object Events By Using Basic Event Selectors
///
///
///
/// ### Logging Individual S3 Bucket Events By Using Basic Event Selectors
///
///
///
/// ### Logging All S3 Object Events Except For Two S3 Buckets By Using Advanced Event Selectors
///
///
///
/// ### Logging Individual S3 Buckets And Specific Event Names By Using Advanced Event Selectors
///
///
///
/// ### Sending Events to CloudWatch Logs
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudtrails using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudtrail/trail:Trail sample arn:aws:cloudtrail:us-east-1:123456789012:trail/my-sample-trail
/// ```
class Trail extends CustomResource {
  /// Specifies an advanced event selector for enabling data event logging. Fields documented below. Conflicts with `event_selector`.
  late final Output<List<TrailAdvancedEventSelector>?> advancedEventSelectors;

  /// ARN of the trail.
  late final Output<String> arn;

  /// Log group name using an ARN that represents the log group to which CloudTrail logs will be delivered. Note that CloudTrail requires the Log Stream wildcard.
  late final Output<String?> cloudWatchLogsGroupArn;

  /// Role for the CloudWatch Logs endpoint to assume to write to a user’s log group.
  late final Output<String?> cloudWatchLogsRoleArn;

  /// Whether log file integrity validation is enabled. Defaults to `false`.
  late final Output<bool?> enableLogFileValidation;

  /// Enables logging for the trail. When set to `true`, logging is started by calling the [`StartLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StartLogging.html) API. When set to `false`, logging is stopped by calling the [`StopLogging`](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_StopLogging.html) API. Defaults to `true`.
  late final Output<bool?> enableLogging;

  /// Specifies an event selector for enabling data event logging. Fields documented below. Please note the [CloudTrail limits](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html) when configuring these. Conflicts with `advanced_event_selector`.
  late final Output<List<TrailEventSelector>?> eventSelectors;

  /// Region in which the trail was created.
  late final Output<String> homeRegion;

  /// Whether the trail is publishing events from global services such as IAM to the log files. Defaults to `true`.
  late final Output<bool?> includeGlobalServiceEvents;

  /// Configuration block for identifying unusual operational activity. See details below.
  late final Output<List<TrailInsightSelector>?> insightSelectors;

  /// Whether the trail is created in the current region or in all regions. Defaults to `false`.
  late final Output<bool?> isMultiRegionTrail;

  /// Whether the trail is an AWS Organizations trail. Organization trails log events for the master account and all member accounts. Can only be created in the organization master account. Defaults to `false`.
  late final Output<bool?> isOrganizationTrail;

  /// KMS key ARN to use to encrypt the logs delivered by CloudTrail.
  late final Output<String?> kmsKeyId;

  /// Name of the trail.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Name of the S3 bucket designated for publishing log files.
  ///
  /// The following arguments are optional:
  late final Output<String> s3BucketName;

  /// S3 key prefix that follows the name of the bucket you have designated for log file delivery.
  late final Output<String?> s3KeyPrefix;

  /// ARN of the Amazon SNS topic that CloudTrail uses to send notifications when log files are delivered.
  late final Output<String> snsTopicArn;

  /// Name of the Amazon SNS topic defined for notification of log file delivery. Specify the SNS topic ARN if it resides in another region.
  late final Output<String?> snsTopicName;

  /// Map of tags to assign to the trail. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  Trail(
    String name, {
    TrailArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudtrail/trail:Trail',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.advancedEventSelectors =
        registerOutput<List<TrailAdvancedEventSelector>?>(
            'advancedEventSelectors');
    this.arn = registerOutput<String>('arn');
    this.cloudWatchLogsGroupArn =
        registerOutput<String?>('cloudWatchLogsGroupArn');
    this.cloudWatchLogsRoleArn =
        registerOutput<String?>('cloudWatchLogsRoleArn');
    this.enableLogFileValidation =
        registerOutput<bool?>('enableLogFileValidation');
    this.enableLogging = registerOutput<bool?>('enableLogging');
    this.eventSelectors =
        registerOutput<List<TrailEventSelector>?>('eventSelectors');
    this.homeRegion = registerOutput<String>('homeRegion');
    this.includeGlobalServiceEvents =
        registerOutput<bool?>('includeGlobalServiceEvents');
    this.insightSelectors =
        registerOutput<List<TrailInsightSelector>?>('insightSelectors');
    this.isMultiRegionTrail = registerOutput<bool?>('isMultiRegionTrail');
    this.isOrganizationTrail = registerOutput<bool?>('isOrganizationTrail');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.s3BucketName = registerOutput<String>('s3BucketName');
    this.s3KeyPrefix = registerOutput<String?>('s3KeyPrefix');
    this.snsTopicArn = registerOutput<String>('snsTopicArn');
    this.snsTopicName = registerOutput<String?>('snsTopicName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
