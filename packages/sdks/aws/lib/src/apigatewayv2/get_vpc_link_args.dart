// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigatewayv2_get_vpc_link_get_vpc_link_args_doc}
/// Arguments for getVpcLink.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_get_vpc_link_get_vpc_link_args_doc}
class GetVpcLinkArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// VPC Link Tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// VPC Link ID
  final pulumi.Input<String> vpcLinkId;

  /// Creates a new [GetVpcLinkArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] VPC Link Tags.
  /// [vpcLinkId] VPC Link ID
  GetVpcLinkArgs({
    this.region,
    this.tags,
    required this.vpcLinkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': ?tags,
      'vpcLinkId': vpcLinkId,
    };
  }

  factory GetVpcLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcLinkArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      vpcLinkId: (map['vpcLinkId'] as String).input(),
    );
  }
}

