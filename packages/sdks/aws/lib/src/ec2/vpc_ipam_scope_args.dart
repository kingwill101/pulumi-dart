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
    this.description,
    required this.ipamId,
    this.region,
    this.tags,
  });

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
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      ipamId: (map['ipamId'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

