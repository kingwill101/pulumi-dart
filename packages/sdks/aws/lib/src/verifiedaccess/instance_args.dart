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
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [InstanceArgs].
  /// [cidrEndpointsCustomSubdomain] The custom subdomain for the CIDR endpoints.
  /// [description] A description for the AWS Verified Access Instance.
  /// [fipsEnabled] Enable or disable support for Federal Information Processing Standards (FIPS) on the AWS Verified Access Instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  InstanceArgs({
    pulumi.Output<String>? cidrEndpointsCustomSubdomain,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? fipsEnabled,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      cidrEndpointsCustomSubdomain = pulumi.Input.asOptionalInput<String>(cidrEndpointsCustomSubdomain),
      description = pulumi.Input.asOptionalInput<String>(description),
      fipsEnabled = pulumi.Input.asOptionalInput<bool>(fipsEnabled),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      cidrEndpointsCustomSubdomain: map['cidrEndpointsCustomSubdomain'] == null ? null : pulumi.Output.create<String>(map['cidrEndpointsCustomSubdomain'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fipsEnabled: map['fipsEnabled'] == null ? null : pulumi.Output.create<bool>(map['fipsEnabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

