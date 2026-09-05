// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_default_vpc_dhcp_options_default_vpc_dhcp_options_args_doc}
/// The set of arguments for DefaultVpcDhcpOptions.
/// {@endtemplate}
/// {@macro pulumi_ec2_default_vpc_dhcp_options_default_vpc_dhcp_options_args_doc}
class DefaultVpcDhcpOptionsArgs {
  /// The ID of the AWS account that owns the DHCP options set.
  final pulumi.Input<String?>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DefaultVpcDhcpOptionsArgs].
  /// [ownerId] The ID of the AWS account that owns the DHCP options set.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
  /// [tags] A map of tags to assign to the resource.
  const DefaultVpcDhcpOptionsArgs({
    this.ownerId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ownerId': ?ownerId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory DefaultVpcDhcpOptionsArgs.fromMap(Map<String, dynamic> map) {
    return DefaultVpcDhcpOptionsArgs(
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
