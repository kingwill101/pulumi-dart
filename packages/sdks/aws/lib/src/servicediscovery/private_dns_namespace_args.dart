// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicediscovery_private_dns_namespace_private_dns_namespace_args_doc}
/// The set of arguments for PrivateDnsNamespace.
/// {@endtemplate}
/// {@macro pulumi_servicediscovery_private_dns_namespace_private_dns_namespace_args_doc}
class PrivateDnsNamespaceArgs {
  /// The description that you specify for the namespace when you create it.
  final pulumi.Input<String>? description;
  /// The name of the namespace.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the namespace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of VPC that you want to associate the namespace with.
  final pulumi.Input<String> vpc;

  /// Creates a new [PrivateDnsNamespaceArgs].
  /// [description] The description that you specify for the namespace when you create it.
  /// [name] The name of the namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the namespace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpc] The ID of VPC that you want to associate the namespace with.
  PrivateDnsNamespaceArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vpc,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpc = pulumi.Input.asInput<String>(vpc);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'vpc': vpc,
    };
  }

  factory PrivateDnsNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return PrivateDnsNamespaceArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpc: pulumi.Output.create<String>(map['vpc'] as String),
    );
  }
}

