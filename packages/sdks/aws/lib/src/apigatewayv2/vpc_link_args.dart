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
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    required pulumi.Output<List<String>> securityGroupIds,
    required pulumi.Output<List<String>> subnetIds,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupIds = pulumi.Input.asInput<List<String>>(securityGroupIds),
      subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'securityGroupIds': securityGroupIds,
      'subnetIds': subnetIds,
      'tags': ?tags,
    };
  }

  factory VpcLinkArgs.fromMap(Map<String, dynamic> map) {
    return VpcLinkArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupIds: pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      subnetIds: pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

