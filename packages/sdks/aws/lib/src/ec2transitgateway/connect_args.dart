// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2transitgateway_connect_connect_args_doc}
/// The set of arguments for Connect.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_connect_connect_args_doc}
class ConnectArgs {
  /// The tunnel protocol. Valid values: `gre`. Default is `gre`.
  final pulumi.Input<String>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the EC2 Transit Gateway Connect. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Boolean whether the Connect should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  final pulumi.Input<bool>? transitGatewayDefaultRouteTableAssociation;
  /// Boolean whether the Connect should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  final pulumi.Input<bool>? transitGatewayDefaultRouteTablePropagation;
  /// Identifier of EC2 Transit Gateway.
  final pulumi.Input<String> transitGatewayId;
  /// The underlaying VPC attachment
  final pulumi.Input<String> transportAttachmentId;

  /// Creates a new [ConnectArgs].
  /// [protocol] The tunnel protocol. Valid values: `gre`. Default is `gre`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Connect. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [transitGatewayDefaultRouteTableAssociation] Boolean whether the Connect should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  /// [transitGatewayDefaultRouteTablePropagation] Boolean whether the Connect should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  /// [transitGatewayId] Identifier of EC2 Transit Gateway.
  /// [transportAttachmentId] The underlaying VPC attachment
  ConnectArgs({
    this.protocol,
    this.region,
    this.tags,
    this.transitGatewayDefaultRouteTableAssociation,
    this.transitGatewayDefaultRouteTablePropagation,
    required this.transitGatewayId,
    required this.transportAttachmentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'protocol': ?protocol,
      'region': ?region,
      'tags': ?tags,
      'transitGatewayDefaultRouteTableAssociation': ?transitGatewayDefaultRouteTableAssociation,
      'transitGatewayDefaultRouteTablePropagation': ?transitGatewayDefaultRouteTablePropagation,
      'transitGatewayId': transitGatewayId,
      'transportAttachmentId': transportAttachmentId,
    };
  }

  factory ConnectArgs.fromMap(Map<String, dynamic> map) {
    return ConnectArgs(
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      transitGatewayDefaultRouteTableAssociation: map['transitGatewayDefaultRouteTableAssociation'] == null ? null : (map['transitGatewayDefaultRouteTableAssociation'] as bool).input(),
      transitGatewayDefaultRouteTablePropagation: map['transitGatewayDefaultRouteTablePropagation'] == null ? null : (map['transitGatewayDefaultRouteTablePropagation'] as bool).input(),
      transitGatewayId: (map['transitGatewayId'] as String).input(),
      transportAttachmentId: (map['transportAttachmentId'] as String).input(),
    );
  }
}

