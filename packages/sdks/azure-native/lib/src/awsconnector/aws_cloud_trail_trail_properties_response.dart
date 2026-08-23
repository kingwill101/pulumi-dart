// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_event_selector_response.dart';
import 'event_selector_response.dart';
import 'insight_selector_response.dart';
import 'tag_response.dart';

/// Definition of awsCloudTrailTrail
class AwsCloudTrailTrailPropertiesResponse {
  /// The advanced event selectors that were used to select events for the data store.
  final pulumi.Input<List<AdvancedEventSelectorResponse>>? advancedEventSelectors;
  /// Property arn
  final pulumi.Input<String>? arn;
  /// Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.
  final pulumi.Input<String>? cloudWatchLogsLogGroupArn;
  /// Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.
  final pulumi.Input<String>? cloudWatchLogsRoleArn;
  /// Specifies whether log file validation is enabled. The default is false.
  final pulumi.Input<bool>? enableLogFileValidation;
  /// Use event selectors to further specify the management and data event settings for your trail. By default, trails created without specific event selectors will be configured to log all read and write management events, and no data events. When an event occurs in your account, CloudTrail evaluates the event selector for all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event. You can configure up to five event selectors for a trail.
  final pulumi.Input<List<EventSelectorResponse>>? eventSelectors;
  /// Specifies whether the trail is publishing events from global services such as IAM to the log files.
  final pulumi.Input<bool>? includeGlobalServiceEvents;
  /// Lets you enable Insights event logging by specifying the Insights selectors that you want to enable on an existing trail.
  final pulumi.Input<List<InsightSelectorResponse>>? insightSelectors;
  /// Whether the CloudTrail is currently logging AWS API calls.
  final pulumi.Input<bool>? isLogging;
  /// Specifies whether the trail applies only to the current region or to all regions. The default is false. If the trail exists only in the current region and this value is set to true, shadow trails (replications of the trail) will be created in the other regions. If the trail exists in all regions and this value is set to false, the trail will remain in the region where it was created, and its shadow trails in other regions will be deleted. As a best practice, consider using trails that log events in all regions.
  final pulumi.Input<bool>? isMultiRegionTrail;
  /// Specifies whether the trail is created for all accounts in an organization in AWS Organizations, or only for the current AWS account. The default is false, and cannot be true unless the call is made on behalf of an AWS account that is the master account for an organization in AWS Organizations.
  final pulumi.Input<bool>? isOrganizationTrail;
  /// Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by 'alias/', a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.
  final pulumi.Input<String>? kmsKeyId;
  /// Specifies the name of the Amazon S3 bucket designated for publishing log files. See Amazon S3 Bucket Naming Requirements.
  final pulumi.Input<String>? s3BucketName;
  /// Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see Finding Your CloudTrail Log Files. The maximum length is 200 characters.
  final pulumi.Input<String>? s3KeyPrefix;
  /// Property snsTopicArn
  final pulumi.Input<String>? snsTopicArn;
  /// Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.
  final pulumi.Input<String>? snsTopicName;
  /// Property tags
  final pulumi.Input<List<TagResponse>>? tags;
  /// Property trailName
  final pulumi.Input<String>? trailName;

  /// Creates a new [AwsCloudTrailTrailPropertiesResponse].
  /// [advancedEventSelectors] The advanced event selectors that were used to select events for the data store.
  /// [arn] Property arn
  /// [cloudWatchLogsLogGroupArn] Specifies a log group name using an Amazon Resource Name (ARN), a unique identifier that represents the log group to which CloudTrail logs will be delivered. Not required unless you specify CloudWatchLogsRoleArn.
  /// [cloudWatchLogsRoleArn] Specifies the role for the CloudWatch Logs endpoint to assume to write to a user's log group.
  /// [enableLogFileValidation] Specifies whether log file validation is enabled. The default is false.
  /// [eventSelectors] Use event selectors to further specify the management and data event settings for your trail. By default, trails created without specific event selectors will be configured to log all read and write management events, and no data events. When an event occurs in your account, CloudTrail evaluates the event selector for all trails. For each trail, if the event matches any event selector, the trail processes and logs the event. If the event doesn't match any event selector, the trail doesn't log the event. You can configure up to five event selectors for a trail.
  /// [includeGlobalServiceEvents] Specifies whether the trail is publishing events from global services such as IAM to the log files.
  /// [insightSelectors] Lets you enable Insights event logging by specifying the Insights selectors that you want to enable on an existing trail.
  /// [isLogging] Whether the CloudTrail is currently logging AWS API calls.
  /// [isMultiRegionTrail] Specifies whether the trail applies only to the current region or to all regions. The default is false. If the trail exists only in the current region and this value is set to true, shadow trails (replications of the trail) will be created in the other regions. If the trail exists in all regions and this value is set to false, the trail will remain in the region where it was created, and its shadow trails in other regions will be deleted. As a best practice, consider using trails that log events in all regions.
  /// [isOrganizationTrail] Specifies whether the trail is created for all accounts in an organization in AWS Organizations, or only for the current AWS account. The default is false, and cannot be true unless the call is made on behalf of an AWS account that is the master account for an organization in AWS Organizations.
  /// [kmsKeyId] Specifies the KMS key ID to use to encrypt the logs delivered by CloudTrail. The value can be an alias name prefixed by 'alias/', a fully specified ARN to an alias, a fully specified ARN to a key, or a globally unique identifier.
  /// [s3BucketName] Specifies the name of the Amazon S3 bucket designated for publishing log files. See Amazon S3 Bucket Naming Requirements.
  /// [s3KeyPrefix] Specifies the Amazon S3 key prefix that comes after the name of the bucket you have designated for log file delivery. For more information, see Finding Your CloudTrail Log Files. The maximum length is 200 characters.
  /// [snsTopicArn] Property snsTopicArn
  /// [snsTopicName] Specifies the name of the Amazon SNS topic defined for notification of log file delivery. The maximum length is 256 characters.
  /// [tags] Property tags
  /// [trailName] Property trailName
  const AwsCloudTrailTrailPropertiesResponse({
    this.advancedEventSelectors,
    this.arn,
    this.cloudWatchLogsLogGroupArn,
    this.cloudWatchLogsRoleArn,
    this.enableLogFileValidation,
    this.eventSelectors,
    this.includeGlobalServiceEvents,
    this.insightSelectors,
    this.isLogging,
    this.isMultiRegionTrail,
    this.isOrganizationTrail,
    this.kmsKeyId,
    this.s3BucketName,
    this.s3KeyPrefix,
    this.snsTopicArn,
    this.snsTopicName,
    this.tags,
    this.trailName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advancedEventSelectors': ?pulumi.Input.mapOptionalInputValue<List<AdvancedEventSelectorResponse>, List<Map<String, dynamic>>>(advancedEventSelectors, (value) => pulumi.Input.encodeList<AdvancedEventSelectorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'cloudWatchLogsLogGroupArn': ?cloudWatchLogsLogGroupArn,
      'cloudWatchLogsRoleArn': ?cloudWatchLogsRoleArn,
      'enableLogFileValidation': ?enableLogFileValidation,
      'eventSelectors': ?pulumi.Input.mapOptionalInputValue<List<EventSelectorResponse>, List<Map<String, dynamic>>>(eventSelectors, (value) => pulumi.Input.encodeList<EventSelectorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'includeGlobalServiceEvents': ?includeGlobalServiceEvents,
      'insightSelectors': ?pulumi.Input.mapOptionalInputValue<List<InsightSelectorResponse>, List<Map<String, dynamic>>>(insightSelectors, (value) => pulumi.Input.encodeList<InsightSelectorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isLogging': ?isLogging,
      'isMultiRegionTrail': ?isMultiRegionTrail,
      'isOrganizationTrail': ?isOrganizationTrail,
      'kmsKeyId': ?kmsKeyId,
      's3BucketName': ?s3BucketName,
      's3KeyPrefix': ?s3KeyPrefix,
      'snsTopicArn': ?snsTopicArn,
      'snsTopicName': ?snsTopicName,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trailName': ?trailName,
    };
  }

  factory AwsCloudTrailTrailPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsCloudTrailTrailPropertiesResponse(
      advancedEventSelectors: (() { final guardedValue = map['advancedEventSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AdvancedEventSelectorResponse>(guardedValue, (value) => AdvancedEventSelectorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudWatchLogsLogGroupArn: (() { final guardedValue = map['cloudWatchLogsLogGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cloudWatchLogsRoleArn: (() { final guardedValue = map['cloudWatchLogsRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableLogFileValidation: (() { final guardedValue = map['enableLogFileValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventSelectors: (() { final guardedValue = map['eventSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventSelectorResponse>(guardedValue, (value) => EventSelectorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      includeGlobalServiceEvents: (() { final guardedValue = map['includeGlobalServiceEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      insightSelectors: (() { final guardedValue = map['insightSelectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InsightSelectorResponse>(guardedValue, (value) => InsightSelectorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isLogging: (() { final guardedValue = map['isLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isMultiRegionTrail: (() { final guardedValue = map['isMultiRegionTrail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isOrganizationTrail: (() { final guardedValue = map['isOrganizationTrail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3BucketName: (() { final guardedValue = map['s3BucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3KeyPrefix: (() { final guardedValue = map['s3KeyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snsTopicArn: (() { final guardedValue = map['snsTopicArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      snsTopicName: (() { final guardedValue = map['snsTopicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagResponse>(guardedValue, (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trailName: (() { final guardedValue = map['trailName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
