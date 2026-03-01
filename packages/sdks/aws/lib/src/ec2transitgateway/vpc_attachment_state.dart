// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcAttachment resources.
class VpcAttachmentState {
  /// Whether Appliance Mode support is enabled. If enabled, a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? applianceModeSupport;
  /// ARN of the attachment.
  final pulumi.Input<String>? arn;
  /// Whether DNS support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  final pulumi.Input<String>? dnsSupport;
  /// Whether IPv6 support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  final pulumi.Input<String>? ipv6Support;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`.
  final pulumi.Input<String>? securityGroupReferencingSupport;
  /// Identifiers of EC2 Subnets.
  final pulumi.Input<List<String>>? subnetIds;
  /// Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default association if it exists. This argument does not simply “ignore” the association; it actively manages (adds or removes) the association in AWS to match the value in your configuration. Do not attempt to manage the same association with both this resource and `aws.ec2transitgateway.RouteTableAssociation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the association at a time.
  final pulumi.Input<bool>? transitGatewayDefaultRouteTableAssociation;
  /// Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default propagation if it exists. This argument does not simply “ignore” the propagation; it actively manages (adds or removes) the propagation in AWS to match the value in your configuration. Do not attempt to manage the same propagation with both this resource and `aws.ec2transitgateway.RouteTablePropagation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the propagation at a time.
  final pulumi.Input<bool>? transitGatewayDefaultRouteTablePropagation;
  /// Identifier of EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;
  /// Identifier of EC2 VPC.
  final pulumi.Input<String>? vpcId;
  /// Identifier of the AWS account that owns the EC2 VPC.
  final pulumi.Input<String>? vpcOwnerId;

  /// Creates a new [VpcAttachmentState].
  /// [applianceModeSupport] Whether Appliance Mode support is enabled. If enabled, a traffic flow between a source and destination uses the same Availability Zone for the VPC attachment for the lifetime of that flow. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [arn] ARN of the attachment.
  /// [dnsSupport] Whether DNS support is enabled. Valid values: `disable`, `enable`. Default value: `enable`.
  /// [ipv6Support] Whether IPv6 support is enabled. Valid values: `disable`, `enable`. Default value: `disable`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupReferencingSupport] Whether Security Group Referencing Support is enabled. Valid values: `disable`, `enable`.
  /// [subnetIds] Identifiers of EC2 Subnets.
  /// [tags] Key-value tags for the EC2 Transit Gateway VPC Attachment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayDefaultRouteTableAssociation] Boolean whether the VPC Attachment should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default association if it exists. This argument does not simply “ignore” the association; it actively manages (adds or removes) the association in AWS to match the value in your configuration. Do not attempt to manage the same association with both this resource and `aws.ec2transitgateway.RouteTableAssociation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the association at a time.
  /// [transitGatewayDefaultRouteTablePropagation] Boolean whether the VPC Attachment should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`. **Setting this argument to** `false` will cause Terraform to remove the default propagation if it exists. This argument does not simply “ignore” the propagation; it actively manages (adds or removes) the propagation in AWS to match the value in your configuration. Do not attempt to manage the same propagation with both this resource and `aws.ec2transitgateway.RouteTablePropagation`, as this will cause perpetual diffs and resource churn. Use conditional logic to ensure only one resource manages the propagation at a time.
  /// [transitGatewayId] Identifier of EC2 Transit Gateway.
  /// [vpcId] Identifier of EC2 VPC.
  /// [vpcOwnerId] Identifier of the AWS account that owns the EC2 VPC.
  VpcAttachmentState({
    pulumi.Output<String>? applianceModeSupport,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? dnsSupport,
    pulumi.Output<String>? ipv6Support,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityGroupReferencingSupport,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<bool>? transitGatewayDefaultRouteTableAssociation,
    pulumi.Output<bool>? transitGatewayDefaultRouteTablePropagation,
    pulumi.Output<String>? transitGatewayId,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vpcOwnerId,
  }) :
      applianceModeSupport = pulumi.Input.asOptionalInput<String>(applianceModeSupport),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      dnsSupport = pulumi.Input.asOptionalInput<String>(dnsSupport),
      ipv6Support = pulumi.Input.asOptionalInput<String>(ipv6Support),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupReferencingSupport = pulumi.Input.asOptionalInput<String>(securityGroupReferencingSupport),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      transitGatewayDefaultRouteTableAssociation = pulumi.Input.asOptionalInput<bool>(transitGatewayDefaultRouteTableAssociation),
      transitGatewayDefaultRouteTablePropagation = pulumi.Input.asOptionalInput<bool>(transitGatewayDefaultRouteTablePropagation),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vpcOwnerId = pulumi.Input.asOptionalInput<String>(vpcOwnerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceModeSupport': ?applianceModeSupport,
      'arn': ?arn,
      'dnsSupport': ?dnsSupport,
      'ipv6Support': ?ipv6Support,
      'region': ?region,
      'securityGroupReferencingSupport': ?securityGroupReferencingSupport,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayDefaultRouteTableAssociation': ?transitGatewayDefaultRouteTableAssociation,
      'transitGatewayDefaultRouteTablePropagation': ?transitGatewayDefaultRouteTablePropagation,
      'transitGatewayId': ?transitGatewayId,
      'vpcId': ?vpcId,
      'vpcOwnerId': ?vpcOwnerId,
    };
  }

  factory VpcAttachmentState.fromMap(Map<String, dynamic> map) {
    return VpcAttachmentState(
      applianceModeSupport: map['applianceModeSupport'] == null ? null : pulumi.Output.create<String>(map['applianceModeSupport'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      dnsSupport: map['dnsSupport'] == null ? null : pulumi.Output.create<String>(map['dnsSupport'] as String),
      ipv6Support: map['ipv6Support'] == null ? null : pulumi.Output.create<String>(map['ipv6Support'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupReferencingSupport: map['securityGroupReferencingSupport'] == null ? null : pulumi.Output.create<String>(map['securityGroupReferencingSupport'] as String),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      transitGatewayDefaultRouteTableAssociation: map['transitGatewayDefaultRouteTableAssociation'] == null ? null : pulumi.Output.create<bool>(map['transitGatewayDefaultRouteTableAssociation'] as bool),
      transitGatewayDefaultRouteTablePropagation: map['transitGatewayDefaultRouteTablePropagation'] == null ? null : pulumi.Output.create<bool>(map['transitGatewayDefaultRouteTablePropagation'] as bool),
      transitGatewayId: map['transitGatewayId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vpcOwnerId: map['vpcOwnerId'] == null ? null : pulumi.Output.create<String>(map['vpcOwnerId'] as String),
    );
  }
}

