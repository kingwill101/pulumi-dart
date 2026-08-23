// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_verifiedaccess_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_verifiedaccess_instance_instance_args_doc}
class InstanceArgs {
  /// The custom subdomain for the CIDR endpoints.
  final pulumi.Input<String>? cidrEndpointsCustomSubdomain;
  /// A description for the AWS Verified Access Instance.
  final pulumi.Input<String>? description;
  /// Enable or disable support for Federal Information Processing Standards (FIPS) on the AWS Verified Access Instance.
  final pulumi.Input<bool>? fipsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceArgs].
  /// [cidrEndpointsCustomSubdomain] The custom subdomain for the CIDR endpoints.
  /// [description] A description for the AWS Verified Access Instance.
  /// [fipsEnabled] Enable or disable support for Federal Information Processing Standards (FIPS) on the AWS Verified Access Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const InstanceArgs({
    this.cidrEndpointsCustomSubdomain,
    this.description,
    this.fipsEnabled,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrEndpointsCustomSubdomain': ?cidrEndpointsCustomSubdomain,
      'description': ?description,
      'fipsEnabled': ?fipsEnabled,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      cidrEndpointsCustomSubdomain: (() { final guardedValue = map['cidrEndpointsCustomSubdomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fipsEnabled: (() { final guardedValue = map['fipsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
