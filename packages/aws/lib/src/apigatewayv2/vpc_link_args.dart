// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigatewayv2_vpc_link_vpc_link_args_doc}
/// The set of arguments for VpcLink.
/// {@endtemplate}
/// {@macro pulumi_apigatewayv2_vpc_link_vpc_link_args_doc}
class VpcLinkArgs {
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

  /// Creates a new [VpcLinkArgs].
  /// [name] Name of the VPC Link. Must be between 1 and 128 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] Security group IDs for the VPC Link.
  /// [subnetIds] Subnet IDs for the VPC Link.
  /// [tags] Map of tags to assign to the VPC Link. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  VpcLinkArgs({
    String? name,
    String? region,
    required List<String> securityGroupIds,
    required List<String> subnetIds,
    Map<String, String>? tags,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityGroupIds = pulumi.Input.asInput<List<String>>(securityGroupIds),
        subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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

  factory VpcLinkArgs.fromMap(Map<String, dynamic> map) {
    return VpcLinkArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
