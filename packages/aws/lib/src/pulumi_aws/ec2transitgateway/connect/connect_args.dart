// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Connect.
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
    final map = <String, dynamic>{};
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final transitGatewayDefaultRouteTableAssociationValue =
        transitGatewayDefaultRouteTableAssociation;
    if (transitGatewayDefaultRouteTableAssociationValue != null) {
      map['transitGatewayDefaultRouteTableAssociation'] =
          transitGatewayDefaultRouteTableAssociationValue;
    }
    final transitGatewayDefaultRouteTablePropagationValue =
        transitGatewayDefaultRouteTablePropagation;
    if (transitGatewayDefaultRouteTablePropagationValue != null) {
      map['transitGatewayDefaultRouteTablePropagation'] =
          transitGatewayDefaultRouteTablePropagationValue;
    }
    map['transitGatewayId'] = transitGatewayId;
    map['transportAttachmentId'] = transportAttachmentId;
    return map;
  }

  factory ConnectArgs.fromMap(Map<String, dynamic> map) {
    return ConnectArgs(
      protocol: pulumi.Input.asOptionalInput<String>(map['protocol']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayDefaultRouteTableAssociation:
          pulumi.Input.asOptionalInput<bool>(
              map['transitGatewayDefaultRouteTableAssociation']),
      transitGatewayDefaultRouteTablePropagation:
          pulumi.Input.asOptionalInput<bool>(
              map['transitGatewayDefaultRouteTablePropagation']),
      transitGatewayId: pulumi.Input.asInput<String>(map['transitGatewayId']),
      transportAttachmentId:
          pulumi.Input.asInput<String>(map['transportAttachmentId']),
    );
  }
}
