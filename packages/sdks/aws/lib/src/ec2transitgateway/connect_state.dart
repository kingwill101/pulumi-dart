// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Connect resources.
class ConnectState {
  /// The tunnel protocol. Valid values: `gre`. Default is `gre`.
  final pulumi.Input<String>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the EC2 Transit Gateway Connect. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Boolean whether the Connect should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  final pulumi.Input<bool>? transitGatewayDefaultRouteTableAssociation;
  /// Boolean whether the Connect should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  final pulumi.Input<bool>? transitGatewayDefaultRouteTablePropagation;
  /// Identifier of EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;
  /// The underlaying VPC attachment
  final pulumi.Input<String>? transportAttachmentId;

  /// Creates a new [ConnectState].
  /// [protocol] The tunnel protocol. Valid values: `gre`. Default is `gre`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Connect. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [transitGatewayDefaultRouteTableAssociation] Boolean whether the Connect should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  /// [transitGatewayDefaultRouteTablePropagation] Boolean whether the Connect should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  /// [transitGatewayId] Identifier of EC2 Transit Gateway.
  /// [transportAttachmentId] The underlaying VPC attachment
  ConnectState({
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<bool>? transitGatewayDefaultRouteTableAssociation,
    pulumi.Output<bool>? transitGatewayDefaultRouteTablePropagation,
    pulumi.Output<String>? transitGatewayId,
    pulumi.Output<String>? transportAttachmentId,
  }) :
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      transitGatewayDefaultRouteTableAssociation = pulumi.Input.asOptionalInput<bool>(transitGatewayDefaultRouteTableAssociation),
      transitGatewayDefaultRouteTablePropagation = pulumi.Input.asOptionalInput<bool>(transitGatewayDefaultRouteTablePropagation),
      transitGatewayId = pulumi.Input.asOptionalInput<String>(transitGatewayId),
      transportAttachmentId = pulumi.Input.asOptionalInput<String>(transportAttachmentId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': ?protocol,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'transitGatewayDefaultRouteTableAssociation': ?transitGatewayDefaultRouteTableAssociation,
      'transitGatewayDefaultRouteTablePropagation': ?transitGatewayDefaultRouteTablePropagation,
      'transitGatewayId': ?transitGatewayId,
      'transportAttachmentId': ?transportAttachmentId,
    };
  }

  factory ConnectState.fromMap(Map<String, dynamic> map) {
    return ConnectState(
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      transitGatewayDefaultRouteTableAssociation: map['transitGatewayDefaultRouteTableAssociation'] == null ? null : pulumi.Output.create<bool>(map['transitGatewayDefaultRouteTableAssociation'] as bool),
      transitGatewayDefaultRouteTablePropagation: map['transitGatewayDefaultRouteTablePropagation'] == null ? null : pulumi.Output.create<bool>(map['transitGatewayDefaultRouteTablePropagation'] as bool),
      transitGatewayId: map['transitGatewayId'] == null ? null : pulumi.Output.create<String>(map['transitGatewayId'] as String),
      transportAttachmentId: map['transportAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transportAttachmentId'] as String),
    );
  }
}

