// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LocalGatewayRouteTableVpcAssociation.
class LocalGatewayRouteTableVpcAssociationArgs {
  /// Identifier of EC2 Local Gateway Route Table.
  final Input<String> localGatewayRouteTableId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Identifier of EC2 VPC.
  ///
  /// The following arguments are optional:
  final Input<String> vpcId;

  LocalGatewayRouteTableVpcAssociationArgs({
    required this.localGatewayRouteTableId,
    this.region,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['localGatewayRouteTableId'] = localGatewayRouteTableId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory LocalGatewayRouteTableVpcAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return LocalGatewayRouteTableVpcAssociationArgs(
      localGatewayRouteTableId:
          Input.asInput<String>(map['localGatewayRouteTableId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}
