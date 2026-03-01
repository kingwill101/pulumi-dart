// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_ipam_scope_vpc_ipam_scope_args_doc}
/// The set of arguments for VpcIpamScope.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_ipam_scope_vpc_ipam_scope_args_doc}
class VpcIpamScopeArgs {
  /// A description for the scope you're creating.
  final pulumi.Input<String>? description;
  /// The ID of the IPAM for which you're creating this scope.
  final pulumi.Input<String> ipamId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VpcIpamScopeArgs].
  /// [description] A description for the scope you're creating.
  /// [ipamId] The ID of the IPAM for which you're creating this scope.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  VpcIpamScopeArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> ipamId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      ipamId = pulumi.Input.asInput<String>(ipamId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ipamId': ipamId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory VpcIpamScopeArgs.fromMap(Map<String, dynamic> map) {
    return VpcIpamScopeArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipamId: pulumi.Output.create<String>(map['ipamId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

