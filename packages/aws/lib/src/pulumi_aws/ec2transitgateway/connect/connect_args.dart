// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Connect.
class ConnectArgs {
  /// The tunnel protocol. Valid values: <span pulumi-lang-nodejs="`gre`" pulumi-lang-dotnet="`Gre`" pulumi-lang-go="`gre`" pulumi-lang-python="`gre`" pulumi-lang-yaml="`gre`" pulumi-lang-java="`gre`">`gre`</span>. Default is <span pulumi-lang-nodejs="`gre`" pulumi-lang-dotnet="`Gre`" pulumi-lang-go="`gre`" pulumi-lang-python="`gre`" pulumi-lang-yaml="`gre`" pulumi-lang-java="`gre`">`gre`</span>.
  final Input<String>? protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the EC2 Transit Gateway Connect. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Boolean whether the Connect should be associated with the EC2 Transit Gateway association default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? transitGatewayDefaultRouteTableAssociation;

  /// Boolean whether the Connect should propagate routes with the EC2 Transit Gateway propagation default route table. This cannot be configured or perform drift detection with Resource Access Manager shared EC2 Transit Gateways. Default value: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? transitGatewayDefaultRouteTablePropagation;

  /// Identifier of EC2 Transit Gateway.
  final Input<String> transitGatewayId;

  /// The underlaying VPC attachment
  final Input<String> transportAttachmentId;

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
      protocol: Input.asOptionalInput<String>(map['protocol']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayDefaultRouteTableAssociation: Input.asOptionalInput<bool>(
          map['transitGatewayDefaultRouteTableAssociation']),
      transitGatewayDefaultRouteTablePropagation: Input.asOptionalInput<bool>(
          map['transitGatewayDefaultRouteTablePropagation']),
      transitGatewayId: Input.asInput<String>(map['transitGatewayId']),
      transportAttachmentId:
          Input.asInput<String>(map['transportAttachmentId']),
    );
  }
}
