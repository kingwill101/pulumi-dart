// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../flow_log_destination_options/flow_log_destination_options.dart';

/// The set of arguments for FlowLog.
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
  /// > **NOTE:** One of `eni_id`, `regional_nat_gateway_id`, `subnet_id`, `transit_gateway_id`, `transit_gateway_attachment_id`, or `vpc_id` must be specified.
  final pulumi.Input<String>? vpcId;

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
    final map = <String, dynamic>{};
    final deliverCrossAccountRoleValue = deliverCrossAccountRole;
    if (deliverCrossAccountRoleValue != null) {
      map['deliverCrossAccountRole'] = deliverCrossAccountRoleValue;
    }
    final destinationOptionsValue = destinationOptions;
    if (destinationOptionsValue != null) {
      map['destinationOptions'] = pulumi.Input.mapOptionalInputValue<
              FlowLogDestinationOptions, Map<String, dynamic>>(
          destinationOptionsValue, (value) => value.toMap());
    }
    final eniIdValue = eniId;
    if (eniIdValue != null) {
      map['eniId'] = eniIdValue;
    }
    final iamRoleArnValue = iamRoleArn;
    if (iamRoleArnValue != null) {
      map['iamRoleArn'] = iamRoleArnValue;
    }
    final logDestinationValue = logDestination;
    if (logDestinationValue != null) {
      map['logDestination'] = logDestinationValue;
    }
    final logDestinationTypeValue = logDestinationType;
    if (logDestinationTypeValue != null) {
      map['logDestinationType'] = logDestinationTypeValue;
    }
    final logFormatValue = logFormat;
    if (logFormatValue != null) {
      map['logFormat'] = logFormatValue;
    }
    final maxAggregationIntervalValue = maxAggregationInterval;
    if (maxAggregationIntervalValue != null) {
      map['maxAggregationInterval'] = maxAggregationIntervalValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final regionalNatGatewayIdValue = regionalNatGatewayId;
    if (regionalNatGatewayIdValue != null) {
      map['regionalNatGatewayId'] = regionalNatGatewayIdValue;
    }
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final trafficTypeValue = trafficType;
    if (trafficTypeValue != null) {
      map['trafficType'] = trafficTypeValue;
    }
    final transitGatewayAttachmentIdValue = transitGatewayAttachmentId;
    if (transitGatewayAttachmentIdValue != null) {
      map['transitGatewayAttachmentId'] = transitGatewayAttachmentIdValue;
    }
    final transitGatewayIdValue = transitGatewayId;
    if (transitGatewayIdValue != null) {
      map['transitGatewayId'] = transitGatewayIdValue;
    }
    final vpcIdValue = vpcId;
    if (vpcIdValue != null) {
      map['vpcId'] = vpcIdValue;
    }
    return map;
  }

  factory FlowLogArgs.fromMap(Map<String, dynamic> map) {
    return FlowLogArgs(
      deliverCrossAccountRole:
          pulumi.Input.asOptionalInput<String>(map['deliverCrossAccountRole']),
      destinationOptions:
          pulumi.Input.asOptionalInput<FlowLogDestinationOptions>(
              map['destinationOptions']),
      eniId: pulumi.Input.asOptionalInput<String>(map['eniId']),
      iamRoleArn: pulumi.Input.asOptionalInput<String>(map['iamRoleArn']),
      logDestination:
          pulumi.Input.asOptionalInput<String>(map['logDestination']),
      logDestinationType:
          pulumi.Input.asOptionalInput<String>(map['logDestinationType']),
      logFormat: pulumi.Input.asOptionalInput<String>(map['logFormat']),
      maxAggregationInterval:
          pulumi.Input.asOptionalInput<int>(map['maxAggregationInterval']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      regionalNatGatewayId:
          pulumi.Input.asOptionalInput<String>(map['regionalNatGatewayId']),
      subnetId: pulumi.Input.asOptionalInput<String>(map['subnetId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      trafficType: pulumi.Input.asOptionalInput<String>(map['trafficType']),
      transitGatewayAttachmentId: pulumi.Input.asOptionalInput<String>(
          map['transitGatewayAttachmentId']),
      transitGatewayId:
          pulumi.Input.asOptionalInput<String>(map['transitGatewayId']),
      vpcId: pulumi.Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}
