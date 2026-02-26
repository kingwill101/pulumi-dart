// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../flow_log_destination_options/flow_log_destination_options.dart';

/// The set of arguments for FlowLog.
class FlowLogArgs {
  /// ARN of the IAM role in the destination account used for cross-account delivery of flow logs.
  final Input<String>? deliverCrossAccountRole;

  /// Describes the destination options for a flow log. More details below.
  final Input<FlowLogDestinationOptions>? destinationOptions;

  /// Elastic Network Interface ID to attach to.
  final Input<String>? eniId;

  /// ARN of the IAM role used to post flow logs. Corresponds to `DeliverLogsPermissionArn` in the [AWS API](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateFlowLogs.html).
  final Input<String>? iamRoleArn;

  /// ARN of the logging destination.
  final Input<String>? logDestination;

  /// Logging destination type. Valid values: `cloud-watch-logs`, <span pulumi-lang-nodejs="`s3`" pulumi-lang-dotnet="`S3`" pulumi-lang-go="`s3`" pulumi-lang-python="`s3`" pulumi-lang-yaml="`s3`" pulumi-lang-java="`s3`">`s3`</span>, `kinesis-data-firehose`. Default: `cloud-watch-logs`.
  final Input<String>? logDestinationType;

  /// The fields to include in the flow log record. Accepted format example: `"$${interface-id} $${srcaddr} $${dstaddr} $${srcport} $${dstport}"`.
  final Input<String>? logFormat;

  /// The maximum interval of time during which a flow of packets is captured and aggregated into a flow log record.
  /// Valid Values: <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> seconds (1 minute) or <span pulumi-lang-nodejs="`600`" pulumi-lang-dotnet="`600`" pulumi-lang-go="`600`" pulumi-lang-python="`600`" pulumi-lang-yaml="`600`" pulumi-lang-java="`600`">`600`</span> seconds (10 minutes). Default: <span pulumi-lang-nodejs="`600`" pulumi-lang-dotnet="`600`" pulumi-lang-go="`600`" pulumi-lang-python="`600`" pulumi-lang-yaml="`600`" pulumi-lang-java="`600`">`600`</span>.
  /// When <span pulumi-lang-nodejs="`transitGatewayId`" pulumi-lang-dotnet="`TransitGatewayId`" pulumi-lang-go="`transitGatewayId`" pulumi-lang-python="`transit_gateway_id`" pulumi-lang-yaml="`transitGatewayId`" pulumi-lang-java="`transitGatewayId`">`transit_gateway_id`</span> or <span pulumi-lang-nodejs="`transitGatewayAttachmentId`" pulumi-lang-dotnet="`TransitGatewayAttachmentId`" pulumi-lang-go="`transitGatewayAttachmentId`" pulumi-lang-python="`transit_gateway_attachment_id`" pulumi-lang-yaml="`transitGatewayAttachmentId`" pulumi-lang-java="`transitGatewayAttachmentId`">`transit_gateway_attachment_id`</span> is specified, <span pulumi-lang-nodejs="`maxAggregationInterval`" pulumi-lang-dotnet="`MaxAggregationInterval`" pulumi-lang-go="`maxAggregationInterval`" pulumi-lang-python="`max_aggregation_interval`" pulumi-lang-yaml="`maxAggregationInterval`" pulumi-lang-java="`maxAggregationInterval`">`max_aggregation_interval`</span> *must* be 60 seconds (1 minute).
  final Input<int>? maxAggregationInterval;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Regional NAT Gateway ID to attach to.
  final Input<String>? regionalNatGatewayId;

  /// Subnet ID to attach to.
  final Input<String>? subnetId;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The type of traffic to capture. Valid values: `ACCEPT`,`REJECT`, `ALL`. Required if <span pulumi-lang-nodejs="`eniId`" pulumi-lang-dotnet="`EniId`" pulumi-lang-go="`eniId`" pulumi-lang-python="`eni_id`" pulumi-lang-yaml="`eniId`" pulumi-lang-java="`eniId`">`eni_id`</span>, <span pulumi-lang-nodejs="`regionalNatGatewayId`" pulumi-lang-dotnet="`RegionalNatGatewayId`" pulumi-lang-go="`regionalNatGatewayId`" pulumi-lang-python="`regional_nat_gateway_id`" pulumi-lang-yaml="`regionalNatGatewayId`" pulumi-lang-java="`regionalNatGatewayId`">`regional_nat_gateway_id`</span>, <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span>, or <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span> is specified.
  final Input<String>? trafficType;

  /// Transit Gateway Attachment ID to attach to.
  final Input<String>? transitGatewayAttachmentId;

  /// Transit Gateway ID to attach to.
  final Input<String>? transitGatewayId;

  /// VPC ID to attach to.
  ///
  /// > **NOTE:** One of <span pulumi-lang-nodejs="`eniId`" pulumi-lang-dotnet="`EniId`" pulumi-lang-go="`eniId`" pulumi-lang-python="`eni_id`" pulumi-lang-yaml="`eniId`" pulumi-lang-java="`eniId`">`eni_id`</span>, <span pulumi-lang-nodejs="`regionalNatGatewayId`" pulumi-lang-dotnet="`RegionalNatGatewayId`" pulumi-lang-go="`regionalNatGatewayId`" pulumi-lang-python="`regional_nat_gateway_id`" pulumi-lang-yaml="`regionalNatGatewayId`" pulumi-lang-java="`regionalNatGatewayId`">`regional_nat_gateway_id`</span>, <span pulumi-lang-nodejs="`subnetId`" pulumi-lang-dotnet="`SubnetId`" pulumi-lang-go="`subnetId`" pulumi-lang-python="`subnet_id`" pulumi-lang-yaml="`subnetId`" pulumi-lang-java="`subnetId`">`subnet_id`</span>, <span pulumi-lang-nodejs="`transitGatewayId`" pulumi-lang-dotnet="`TransitGatewayId`" pulumi-lang-go="`transitGatewayId`" pulumi-lang-python="`transit_gateway_id`" pulumi-lang-yaml="`transitGatewayId`" pulumi-lang-java="`transitGatewayId`">`transit_gateway_id`</span>, <span pulumi-lang-nodejs="`transitGatewayAttachmentId`" pulumi-lang-dotnet="`TransitGatewayAttachmentId`" pulumi-lang-go="`transitGatewayAttachmentId`" pulumi-lang-python="`transit_gateway_attachment_id`" pulumi-lang-yaml="`transitGatewayAttachmentId`" pulumi-lang-java="`transitGatewayAttachmentId`">`transit_gateway_attachment_id`</span>, or <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span> must be specified.
  final Input<String>? vpcId;

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
      map['destinationOptions'] = Input.mapOptionalInputValue<
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
          Input.asOptionalInput<String>(map['deliverCrossAccountRole']),
      destinationOptions: Input.asOptionalInput<FlowLogDestinationOptions>(
          map['destinationOptions']),
      eniId: Input.asOptionalInput<String>(map['eniId']),
      iamRoleArn: Input.asOptionalInput<String>(map['iamRoleArn']),
      logDestination: Input.asOptionalInput<String>(map['logDestination']),
      logDestinationType:
          Input.asOptionalInput<String>(map['logDestinationType']),
      logFormat: Input.asOptionalInput<String>(map['logFormat']),
      maxAggregationInterval:
          Input.asOptionalInput<int>(map['maxAggregationInterval']),
      region: Input.asOptionalInput<String>(map['region']),
      regionalNatGatewayId:
          Input.asOptionalInput<String>(map['regionalNatGatewayId']),
      subnetId: Input.asOptionalInput<String>(map['subnetId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      trafficType: Input.asOptionalInput<String>(map['trafficType']),
      transitGatewayAttachmentId:
          Input.asOptionalInput<String>(map['transitGatewayAttachmentId']),
      transitGatewayId: Input.asOptionalInput<String>(map['transitGatewayId']),
      vpcId: Input.asOptionalInput<String>(map['vpcId']),
    );
  }
}
