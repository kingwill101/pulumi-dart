// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_log_destination_options.dart';

/// {@template pulumi_ec2_flow_log_flow_log_args_doc}
/// The set of arguments for FlowLog.
/// {@endtemplate}
/// {@macro pulumi_ec2_flow_log_flow_log_args_doc}
class FlowLogArgs {
  /// ARN of the IAM role in the destination account used for cross-account delivery of flow logs.
  final pulumi.Input<String>? deliverCrossAccountRole;

  /// Describes the destination options for a flow log. More details below.
  final pulumi.Input<FlowLogDestinationOptions>? destinationOptions;

  /// Elastic Network Interface ID to attach to.
  final pulumi.Input<String>? eniId;

  /// ARN of the IAM role used to post flow logs. Corresponds to `DeliverLogsPermissionArn` in the [AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFlowLogs.html).
  final pulumi.Input<String>? iamRoleArn;

  /// ARN of the logging destination.
  final pulumi.Input<String>? logDestination;

  /// Logging destination type. Valid values: `cloud-watch-logs`, `s3`, `kinesis-data-firehose`. Default: `cloud-watch-logs`.
  final pulumi.Input<String>? logDestinationType;

  /// The fields to include in the flow log record. Accepted format example: `"$${interface-id} $${srcaddr} $${dstaddr} $${srcport} $${dstport}"`.
  final pulumi.Input<String>? logFormat;

  /// The maximum interval of time during which a flow of packets is captured and aggregated into a flow log record.
  /// Valid Values: `60` seconds (1 minute) or `600` seconds (10 minutes). Default: `600`.
  /// When `transit_gateway_id` or `transit_gateway_attachment_id` is specified, `max_aggregation_interval` *must* be 60 seconds (1 minute).
  final pulumi.Input<int>? maxAggregationInterval;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Regional NAT Gateway ID to attach to.
  final pulumi.Input<String>? regionalNatGatewayId;

  /// Subnet ID to attach to.
  final pulumi.Input<String>? subnetId;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The type of traffic to capture. Valid values: `ACCEPT`,`REJECT`, `ALL`. Required if `eni_id`, `regional_nat_gateway_id`, `subnet_id`, or `vpc_id` is specified.
  final pulumi.Input<String>? trafficType;

  /// Transit Gateway Attachment ID to attach to.
  final pulumi.Input<String>? transitGatewayAttachmentId;

  /// Transit Gateway ID to attach to.
  final pulumi.Input<String>? transitGatewayId;

  /// VPC ID to attach to.
  ///
  /// &gt; **NOTE:** One of `eni_id`, `regional_nat_gateway_id`, `subnet_id`, `transit_gateway_id`, `transit_gateway_attachment_id`, or `vpc_id` must be specified.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [FlowLogArgs].
  /// [deliverCrossAccountRole] ARN of the IAM role in the destination account used for cross-account delivery of flow logs.
  /// [destinationOptions] Describes the destination options for a flow log. More details below.
  /// [eniId] Elastic Network Interface ID to attach to.
  /// [iamRoleArn] ARN of the IAM role used to post flow logs. Corresponds to `DeliverLogsPermissionArn` in the [AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFlowLogs.html).
  /// [logDestination] ARN of the logging destination.
  /// [logDestinationType] Logging destination type. Valid values: `cloud-watch-logs`, `s3`, `kinesis-data-firehose`. Default: `cloud-watch-logs`.
  /// [logFormat] The fields to include in the flow log record. Accepted format example: `"$${interface-id} $${srcaddr} $${dstaddr} $${srcport} $${dstport}"`.
  /// [maxAggregationInterval] The maximum interval of time during which a flow of packets is captured and aggregated into a flow log record.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [regionalNatGatewayId] Regional NAT Gateway ID to attach to.
  /// [subnetId] Subnet ID to attach to.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [trafficType] The type of traffic to capture. Valid values: `ACCEPT`,`REJECT`, `ALL`. Required if `eni_id`, `regional_nat_gateway_id`, `subnet_id`, or `vpc_id` is specified.
  /// [transitGatewayAttachmentId] Transit Gateway Attachment ID to attach to.
  /// [transitGatewayId] Transit Gateway ID to attach to.
  /// [vpcId] VPC ID to attach to.
  FlowLogArgs({
    this.deliverCrossAccountRole,
    this.destinationOptions,
    this.eniId,
    this.iamRoleArn,
    this.logDestination,
    this.logDestinationType,
    this.logFormat,
    this.maxAggregationInterval,
    this.region,
    this.regionalNatGatewayId,
    this.subnetId,
    this.tags,
    this.trafficType,
    this.transitGatewayAttachmentId,
    this.transitGatewayId,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliverCrossAccountRole': ?deliverCrossAccountRole,
      'destinationOptions':
          ?pulumi.Input.mapOptionalInputValue<
            FlowLogDestinationOptions,
            Map<String, dynamic>
          >(destinationOptions, (value) => value.toMap()),
      'eniId': ?eniId,
      'iamRoleArn': ?iamRoleArn,
      'logDestination': ?logDestination,
      'logDestinationType': ?logDestinationType,
      'logFormat': ?logFormat,
      'maxAggregationInterval': ?maxAggregationInterval,
      'region': ?region,
      'regionalNatGatewayId': ?regionalNatGatewayId,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'trafficType': ?trafficType,
      'transitGatewayAttachmentId': ?transitGatewayAttachmentId,
      'transitGatewayId': ?transitGatewayId,
      'vpcId': ?vpcId,
    };
  }

  factory FlowLogArgs.fromMap(Map<String, dynamic> map) {
    return FlowLogArgs(
      deliverCrossAccountRole: (() {
        final guardedValue = map['deliverCrossAccountRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationOptions: (() {
        final guardedValue = map['destinationOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FlowLogDestinationOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      eniId: (() {
        final guardedValue = map['eniId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      iamRoleArn: (() {
        final guardedValue = map['iamRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logDestination: (() {
        final guardedValue = map['logDestination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logDestinationType: (() {
        final guardedValue = map['logDestinationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logFormat: (() {
        final guardedValue = map['logFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxAggregationInterval: (() {
        final guardedValue = map['maxAggregationInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionalNatGatewayId: (() {
        final guardedValue = map['regionalNatGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetId: (() {
        final guardedValue = map['subnetId'];
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
      trafficType: (() {
        final guardedValue = map['trafficType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitGatewayAttachmentId: (() {
        final guardedValue = map['transitGatewayAttachmentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transitGatewayId: (() {
        final guardedValue = map['transitGatewayId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
