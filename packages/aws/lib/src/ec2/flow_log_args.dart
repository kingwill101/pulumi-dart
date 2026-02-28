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
  /// > **NOTE:** One of `eni_id`, `regional_nat_gateway_id`, `subnet_id`, `transit_gateway_id`, `transit_gateway_attachment_id`, or `vpc_id` must be specified.
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
    String? deliverCrossAccountRole,
    FlowLogDestinationOptions? destinationOptions,
    String? eniId,
    String? iamRoleArn,
    String? logDestination,
    String? logDestinationType,
    String? logFormat,
    int? maxAggregationInterval,
    String? region,
    String? regionalNatGatewayId,
    String? subnetId,
    Map<String, String>? tags,
    String? trafficType,
    String? transitGatewayAttachmentId,
    String? transitGatewayId,
    String? vpcId,
  })  : deliverCrossAccountRole =
            pulumi.Input.asOptionalInput<String>(deliverCrossAccountRole),
        destinationOptions =
            pulumi.Input.asOptionalInput<FlowLogDestinationOptions>(
                destinationOptions),
        eniId = pulumi.Input.asOptionalInput<String>(eniId),
        iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
        logDestination = pulumi.Input.asOptionalInput<String>(logDestination),
        logDestinationType =
            pulumi.Input.asOptionalInput<String>(logDestinationType),
        logFormat = pulumi.Input.asOptionalInput<String>(logFormat),
        maxAggregationInterval =
            pulumi.Input.asOptionalInput<int>(maxAggregationInterval),
        region = pulumi.Input.asOptionalInput<String>(region),
        regionalNatGatewayId =
            pulumi.Input.asOptionalInput<String>(regionalNatGatewayId),
        subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        trafficType = pulumi.Input.asOptionalInput<String>(trafficType),
        transitGatewayAttachmentId =
            pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId),
        transitGatewayId =
            pulumi.Input.asOptionalInput<String>(transitGatewayId),
        vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      deliverCrossAccountRole: map['deliverCrossAccountRole'] == null
          ? null
          : map['deliverCrossAccountRole'] as String,
      destinationOptions: map['destinationOptions'] == null
          ? null
          : FlowLogDestinationOptions.fromMap(
              (map['destinationOptions'] as Map).cast<String, dynamic>()),
      eniId: map['eniId'] == null ? null : map['eniId'] as String,
      iamRoleArn:
          map['iamRoleArn'] == null ? null : map['iamRoleArn'] as String,
      logDestination: map['logDestination'] == null
          ? null
          : map['logDestination'] as String,
      logDestinationType: map['logDestinationType'] == null
          ? null
          : map['logDestinationType'] as String,
      logFormat: map['logFormat'] == null ? null : map['logFormat'] as String,
      maxAggregationInterval: map['maxAggregationInterval'] == null
          ? null
          : map['maxAggregationInterval'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      regionalNatGatewayId: map['regionalNatGatewayId'] == null
          ? null
          : map['regionalNatGatewayId'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      trafficType:
          map['trafficType'] == null ? null : map['trafficType'] as String,
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null
          ? null
          : map['transitGatewayAttachmentId'] as String,
      transitGatewayId: map['transitGatewayId'] == null
          ? null
          : map['transitGatewayId'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}
