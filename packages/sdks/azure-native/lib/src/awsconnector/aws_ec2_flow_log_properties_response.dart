// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination_options_model_properties_response.dart';
import 'tag_response.dart';

/// Definition of awsEc2FlowLog
class AwsEc2FlowLogPropertiesResponse {
  /// The ARN of the IAM role that allows Amazon EC2 to publish flow logs across accounts.
  final String? deliverCrossAccountRole;
  /// The ARN for the IAM role that permits Amazon EC2 to publish flow logs to a CloudWatch Logs log group in your account. If you specify LogDestinationType as s3 or kinesis-data-firehose, do not specify DeliverLogsPermissionArn or LogGroupName.
  final String? deliverLogsPermissionArn;
  /// Property destinationOptions
  final DestinationOptionsModelPropertiesResponse? destinationOptions;
  /// The Flow Log ID
  final String? id;
  /// Specifies the destination to which the flow log data is to be published. Flow log data can be published to a CloudWatch Logs log group, an Amazon S3 bucket, or a Kinesis Firehose stream. The value specified for this parameter depends on the value specified for LogDestinationType.
  final String? logDestination;
  /// Specifies the type of destination to which the flow log data is to be published. Flow log data can be published to CloudWatch Logs or Amazon S3.
  final String? logDestinationType;
  /// The fields to include in the flow log record, in the order in which they should appear.
  final String? logFormat;
  /// The name of a new or existing CloudWatch Logs log group where Amazon EC2 publishes your flow logs. If you specify LogDestinationType as s3 or kinesis-data-firehose, do not specify DeliverLogsPermissionArn or LogGroupName.
  final String? logGroupName;
  /// The maximum interval of time during which a flow of packets is captured and aggregated into a flow log record. You can specify 60 seconds (1 minute) or 600 seconds (10 minutes).
  final int? maxAggregationInterval;
  /// The ID of the subnet, network interface, or VPC for which you want to create a flow log.
  final String? resourceId;
  /// The type of resource for which to create the flow log. For example, if you specified a VPC ID for the ResourceId property, specify VPC for this property.
  final String? resourceType;
  /// The tags to apply to the flow logs.
  final List<TagResponse>? tags;
  /// The type of traffic to log. You can log traffic that the resource accepts or rejects, or all traffic.
  final String? trafficType;

  /// Creates a new [AwsEc2FlowLogPropertiesResponse].
  /// [deliverCrossAccountRole] The ARN of the IAM role that allows Amazon EC2 to publish flow logs across accounts.
  /// [deliverLogsPermissionArn] The ARN for the IAM role that permits Amazon EC2 to publish flow logs to a CloudWatch Logs log group in your account. If you specify LogDestinationType as s3 or kinesis-data-firehose, do not specify DeliverLogsPermissionArn or LogGroupName.
  /// [destinationOptions] Property destinationOptions
  /// [id] The Flow Log ID
  /// [logDestination] Specifies the destination to which the flow log data is to be published. Flow log data can be published to a CloudWatch Logs log group, an Amazon S3 bucket, or a Kinesis Firehose stream. The value specified for this parameter depends on the value specified for LogDestinationType.
  /// [logDestinationType] Specifies the type of destination to which the flow log data is to be published. Flow log data can be published to CloudWatch Logs or Amazon S3.
  /// [logFormat] The fields to include in the flow log record, in the order in which they should appear.
  /// [logGroupName] The name of a new or existing CloudWatch Logs log group where Amazon EC2 publishes your flow logs. If you specify LogDestinationType as s3 or kinesis-data-firehose, do not specify DeliverLogsPermissionArn or LogGroupName.
  /// [maxAggregationInterval] The maximum interval of time during which a flow of packets is captured and aggregated into a flow log record. You can specify 60 seconds (1 minute) or 600 seconds (10 minutes).
  /// [resourceId] The ID of the subnet, network interface, or VPC for which you want to create a flow log.
  /// [resourceType] The type of resource for which to create the flow log. For example, if you specified a VPC ID for the ResourceId property, specify VPC for this property.
  /// [tags] The tags to apply to the flow logs.
  /// [trafficType] The type of traffic to log. You can log traffic that the resource accepts or rejects, or all traffic.
  AwsEc2FlowLogPropertiesResponse({
    this.deliverCrossAccountRole,
    this.deliverLogsPermissionArn,
    this.destinationOptions,
    this.id,
    this.logDestination,
    this.logDestinationType,
    this.logFormat,
    this.logGroupName,
    this.maxAggregationInterval,
    this.resourceId,
    this.resourceType,
    this.tags,
    this.trafficType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliverCrossAccountRole': ?deliverCrossAccountRole,
      'deliverLogsPermissionArn': ?deliverLogsPermissionArn,
      'destinationOptions': ?destinationOptions == null ? null : destinationOptions!.toMap(),
      'id': ?id,
      'logDestination': ?logDestination,
      'logDestinationType': ?logDestinationType,
      'logFormat': ?logFormat,
      'logGroupName': ?logGroupName,
      'maxAggregationInterval': ?maxAggregationInterval,
      'resourceId': ?resourceId,
      'resourceType': ?resourceType,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'trafficType': ?trafficType,
    };
  }

  factory AwsEc2FlowLogPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsEc2FlowLogPropertiesResponse(
      deliverCrossAccountRole: map['deliverCrossAccountRole'] == null ? null : map['deliverCrossAccountRole'] as String,
      deliverLogsPermissionArn: map['deliverLogsPermissionArn'] == null ? null : map['deliverLogsPermissionArn'] as String,
      destinationOptions: map['destinationOptions'] == null ? null : DestinationOptionsModelPropertiesResponse.fromMap((map['destinationOptions'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      logDestination: map['logDestination'] == null ? null : map['logDestination'] as String,
      logDestinationType: map['logDestinationType'] == null ? null : map['logDestinationType'] as String,
      logFormat: map['logFormat'] == null ? null : map['logFormat'] as String,
      logGroupName: map['logGroupName'] == null ? null : map['logGroupName'] as String,
      maxAggregationInterval: map['maxAggregationInterval'] == null ? null : map['maxAggregationInterval'] as int,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagResponse>(map['tags'], (value) => TagResponse.fromMap((value as Map).cast<String, dynamic>())),
      trafficType: map['trafficType'] == null ? null : map['trafficType'] as String,
    );
  }
}

