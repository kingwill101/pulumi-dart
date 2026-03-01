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
    pulumi.Output<String>? deliverCrossAccountRole,
    pulumi.Output<FlowLogDestinationOptions>? destinationOptions,
    pulumi.Output<String>? eniId,
    pulumi.Output<String>? iamRoleArn,
    pulumi.Output<String>? logDestination,
    pulumi.Output<String>? logDestinationType,
    pulumi.Output<String>? logFormat,
    pulumi.Output<int>? maxAggregationInterval,
    pulumi.Output<String>? region,
    pulumi.Output<String>? regionalNatGatewayId,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? trafficType,
    pulumi.Output<String>? transitGatewayAttachmentId,
    pulumi.Output<String>? transitGatewayId,
    pulumi.Output<String>? vpcId,
  }) :
      deliverCrossAccountRole = pulumi.Input.asOptionalInput<String>(deliverCrossAccountRole),
      destinationOptions = pulumi.Input.asOptionalInput<FlowLogDestinationOptions>(destinationOptions),
      eniId = pulumi.Input.asOptionalInput<String>(eniId),
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      logDestination = pulumi.Input.asOptionalInput<String>(logDestination),
      logDestinationType = pulumi.Input.asOptionalInput<String>(logDestinationType),
      logFormat = pulumi.Input.asOptionalInput<String>(logFormat),
      maxAggregationInterval = pulumi.Input.asOptionalInput<int>(maxAggregationInterval),
      region = pulumi.Input.asOptionalInput<String>(region),
      regionalNatGatewayId = pulumi.Input.asOptionalInput<String>(regionalNatGatewayId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficType = pulumi.Input.asOptionalInput<String>(trafficType),
      transitGatewayAttachmentId = pulumi.Input.asOptionalInput<String>(transitGatewayAttachmentId),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliverCrossAccountRole': ?deliverCrossAccountRole,
      'destinationOptions': ?pulumi.Input.mapOptionalInputValue<FlowLogDestinationOptions, Map<String, dynamic>>(destinationOptions, (value) => value.toMap()),
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
      deliverCrossAccountRole: map['deliverCrossAccountRole'] == null ? null : pulumi.Output.create<String>(map['deliverCrossAccountRole'] as String),
      destinationOptions: map['destinationOptions'] == null ? null : pulumi.Output.create<FlowLogDestinationOptions>(FlowLogDestinationOptions.fromMap((map['destinationOptions'] as Map).cast<String, dynamic>())),
      eniId: map['eniId'] == null ? null : pulumi.Output.create<String>(map['eniId'] as String),
      iamRoleArn: map['iamRoleArn'] == null ? null : pulumi.Output.create<String>(map['iamRoleArn'] as String),
      logDestination: map['logDestination'] == null ? null : pulumi.Output.create<String>(map['logDestination'] as String),
      logDestinationType: map['logDestinationType'] == null ? null : pulumi.Output.create<String>(map['logDestinationType'] as String),
      logFormat: map['logFormat'] == null ? null : pulumi.Output.create<String>(map['logFormat'] as String),
      maxAggregationInterval: map['maxAggregationInterval'] == null ? null : pulumi.Output.create<int>(map['maxAggregationInterval'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      regionalNatGatewayId: map['regionalNatGatewayId'] == null ? null : pulumi.Output.create<String>(map['regionalNatGatewayId'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trafficType: map['trafficType'] == null ? null : pulumi.Output.create<String>(map['trafficType'] as String),
      transitGatewayAttachmentId: map['transitGatewayAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayAttachmentId'] as String),
      transitGatewayId: map['transitGatewayId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

