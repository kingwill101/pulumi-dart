// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcLink.
class VpcLinkApigatewayv2Args {
  /// Name of the VPC Link. Must be between 1 and 128 characters in length.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Security group IDs for the VPC Link.
  final pulumi.Input<List<String>> securityGroupIds;

  /// Subnet IDs for the VPC Link.
  final pulumi.Input<List<String>> subnetIds;

  /// Map of tags to assign to the VPC Link. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  VpcLinkApigatewayv2Args({
    this.name,
    this.region,
    required this.securityGroupIds,
    required this.subnetIds,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroupIds'] = securityGroupIds;
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory VpcLinkApigatewayv2Args.fromMap(Map<String, dynamic> map) {
    return VpcLinkApigatewayv2Args(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          pulumi.Input.asInput<List<String>>(map['securityGroupIds']),
      subnetIds: pulumi.Input.asInput<List<String>>(map['subnetIds']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
