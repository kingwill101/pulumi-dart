// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_default_vpc_dhcp_options_default_vpc_dhcp_options_args_doc}
/// The set of arguments for DefaultVpcDhcpOptions.
/// {@endtemplate}
/// {@macro pulumi_ec2_default_vpc_dhcp_options_default_vpc_dhcp_options_args_doc}
class DefaultVpcDhcpOptionsArgs {
  /// The ID of the AWS account that owns the DHCP options set.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DefaultVpcDhcpOptionsArgs].
  /// [ownerId] The ID of the AWS account that owns the DHCP options set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  /// [tags] A map of tags to assign to the resource.
  DefaultVpcDhcpOptionsArgs({
    String? ownerId,
    String? region,
    Map<String, String>? tags,
  }) :
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory DefaultVpcDhcpOptionsArgs.fromMap(Map<String, dynamic> map) {
    return DefaultVpcDhcpOptionsArgs(
      ownerId: map['ownerId'] == null ? null : map['ownerId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

