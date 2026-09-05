// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_ipam_scope_vpc_ipam_scope_args_doc}
/// The set of arguments for VpcIpamScope.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_ipam_scope_vpc_ipam_scope_args_doc}
class VpcIpamScopeArgs {
  /// A description for the scope you're creating.
  final pulumi.Input<String?>? description;
  /// The ID of the IPAM for which you're creating this scope.
  final pulumi.Input<String> ipamId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [VpcIpamScopeArgs].
  /// [description] A description for the scope you're creating.
  /// [ipamId] The ID of the IPAM for which you're creating this scope.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const VpcIpamScopeArgs({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipamId: pulumi.Input.fromValue(map['ipamId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
