import 'package:pulumi/pulumi.dart';
import '../flow_log_destination_options/flow_log_destination_options.dart';
import 'flow_log_args.dart';

/// Provides a VPC/Subnet/ENI/Transit Gateway/Transit Gateway Attachment Flow Log to capture IP traffic for a specific network
/// interface, subnet, or VPC. Logs are sent to a CloudWatch Log Group, a S3 Bucket, or Amazon Data Firehose
///
/// ## Example Usage
///
/// ### CloudWatch Logging
///
///
///
/// ### Amazon Data Firehose logging
///
///
///
/// ### S3 Logging
///
///
///
/// ### S3 Logging in Apache Parquet format with per-hour partitions
///
///
///
/// ### Cross-Account Amazon Data Firehose Logging
///
/// The following example shows how to set up a flow log in one AWS account (source) that sends logs to an Amazon Data Firehose delivery stream in another AWS account (destination).
/// See the [AWS Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs-firehose.html).
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Flow Logs using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/flowLog:FlowLog test_flow_log fl-1a2b3c4d
/// ```
class FlowLog extends CustomResource {
  /// ARN of the Flow Log.
  late final Output<String> arn;

  /// ARN of the IAM role in the destination account used for cross-account delivery of flow logs.
  late final Output<String?> deliverCrossAccountRole;

  /// Describes the destination options for a flow log. More details below.
  late final Output<FlowLogDestinationOptions?> destinationOptions;

  /// Elastic Network Interface ID to attach to.
  late final Output<String?> eniId;

  /// ARN of the IAM role used to post flow logs. Corresponds to `DeliverLogsPermissionArn` in the [AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFlowLogs.html).
  late final Output<String?> iamRoleArn;

  /// ARN of the logging destination.
  late final Output<String> logDestination;

  /// Logging destination type. Valid values: `cloud-watch-logs`, `s3`, `kinesis-data-firehose`. Default: `cloud-watch-logs`.
  late final Output<String?> logDestinationType;

  /// The fields to include in the flow log record. Accepted format example: `"$${interface-id} $${srcaddr} $${dstaddr} $${srcport} $${dstport}"`.
  late final Output<String> logFormat;

  /// The maximum interval of time during which a flow of packets is captured and aggregated into a flow log record.
  /// Valid Values: `60` seconds (1 minute) or `600` seconds (10 minutes). Default: `600`.
  /// When `transit_gateway_id` or `transit_gateway_attachment_id` is specified, `max_aggregation_interval` *must* be 60 seconds (1 minute).
  late final Output<int?> maxAggregationInterval;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Regional NAT Gateway ID to attach to.
  late final Output<String?> regionalNatGatewayId;

  /// Subnet ID to attach to.
  late final Output<String?> subnetId;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of traffic to capture. Valid values: `ACCEPT`,`REJECT`, `ALL`. Required if `eni_id`, `regional_nat_gateway_id`, `subnet_id`, or `vpc_id` is specified.
  late final Output<String?> trafficType;

  /// Transit Gateway Attachment ID to attach to.
  late final Output<String?> transitGatewayAttachmentId;

  /// Transit Gateway ID to attach to.
  late final Output<String?> transitGatewayId;

  /// VPC ID to attach to.
  ///
  /// > **NOTE:** One of `eni_id`, `regional_nat_gateway_id`, `subnet_id`, `transit_gateway_id`, `transit_gateway_attachment_id`, or `vpc_id` must be specified.
  late final Output<String?> vpcId;

  FlowLog(
    String name, {
    FlowLogArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/flowLog:FlowLog',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deliverCrossAccountRole =
        registerOutput<String?>('deliverCrossAccountRole');
    this.destinationOptions =
        registerOutput<FlowLogDestinationOptions?>('destinationOptions');
    this.eniId = registerOutput<String?>('eniId');
    this.iamRoleArn = registerOutput<String?>('iamRoleArn');
    this.logDestination = registerOutput<String>('logDestination');
    this.logDestinationType = registerOutput<String?>('logDestinationType');
    this.logFormat = registerOutput<String>('logFormat');
    this.maxAggregationInterval =
        registerOutput<int?>('maxAggregationInterval');
    this.region = registerOutput<String>('region');
    this.regionalNatGatewayId = registerOutput<String?>('regionalNatGatewayId');
    this.subnetId = registerOutput<String?>('subnetId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trafficType = registerOutput<String?>('trafficType');
    this.transitGatewayAttachmentId =
        registerOutput<String?>('transitGatewayAttachmentId');
    this.transitGatewayId = registerOutput<String?>('transitGatewayId');
    this.vpcId = registerOutput<String?>('vpcId');
  }
}
