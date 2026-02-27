// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVpcLink.
class GetVpcLinkApigatewayv2Args {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// VPC Link Tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// VPC Link ID
  final pulumi.Input<String> vpcLinkId;

  GetVpcLinkApigatewayv2Args({
    this.region,
    this.tags,
    required this.vpcLinkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcLinkId'] = vpcLinkId;
    return map;
  }

  factory GetVpcLinkApigatewayv2Args.fromMap(Map<String, dynamic> map) {
    return GetVpcLinkApigatewayv2Args(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcLinkId: pulumi.Input.asInput<String>(map['vpcLinkId']),
    );
  }
}
