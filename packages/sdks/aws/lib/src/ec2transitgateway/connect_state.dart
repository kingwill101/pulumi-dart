// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Connect resources.
class ConnectState {
  /// The tunnel protocol. Valid values: `gre`. Default is `gre`.
  final pulumi.Input<String?>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value tags for the EC2 Transit Gateway Connect. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Boolean whether the Connect should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  final pulumi.Input<bool?>? transitGatewayDefaultRouteTableAssociation;
  /// Boolean whether the Connect should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  final pulumi.Input<bool?>? transitGatewayDefaultRouteTablePropagation;
  /// Identifier of EC2 Transit Gateway.
  final pulumi.Input<String?>? transitGatewayId;
  /// The underlaying VPC attachment
  final pulumi.Input<String?>? transportAttachmentId;

  /// Creates a new [ConnectState].
  /// [protocol] The tunnel protocol. Valid values: `gre`. Default is `gre`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the EC2 Transit Gateway Connect. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [transitGatewayDefaultRouteTableAssociation] Boolean whether the Connect should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  /// [transitGatewayDefaultRouteTablePropagation] Boolean whether the Connect should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: `true`.
  /// [transitGatewayId] Identifier of EC2 Transit Gateway.
  /// [transportAttachmentId] The underlaying VPC attachment
  const ConnectState({
    this.protocol,
    this.region,
    this.tags,
    this.tagsAll,
    this.transitGatewayDefaultRouteTableAssociation,
    this.transitGatewayDefaultRouteTablePropagation,
    this.transitGatewayId,
    this.transportAttachmentId,
  });

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
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayDefaultRouteTableAssociation: (() { final guardedValue = map['transitGatewayDefaultRouteTableAssociation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transitGatewayDefaultRouteTablePropagation: (() { final guardedValue = map['transitGatewayDefaultRouteTablePropagation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transportAttachmentId: (() { final guardedValue = map['transportAttachmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
