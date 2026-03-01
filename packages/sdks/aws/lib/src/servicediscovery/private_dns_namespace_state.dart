// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PrivateDnsNamespace resources.
class PrivateDnsNamespaceState {
  /// The ARN that Amazon Route 53 assigns to the namespace when you create it.
  final pulumi.Input<String>? arn;
  /// The description that you specify for the namespace when you create it.
  final pulumi.Input<String>? description;
  /// The ID for the hosted zone that Amazon Route 53 creates when you create a namespace.
  final pulumi.Input<String>? hostedZone;
  /// The name of the namespace.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the namespace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The ID of VPC that you want to associate the namespace with.
  final pulumi.Input<String>? vpc;

  /// Creates a new [PrivateDnsNamespaceState].
  /// [arn] The ARN that Amazon Route 53 assigns to the namespace when you create it.
  /// [description] The description that you specify for the namespace when you create it.
  /// [hostedZone] The ID for the hosted zone that Amazon Route 53 creates when you create a namespace.
  /// [name] The name of the namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the namespace. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpc] The ID of VPC that you want to associate the namespace with.
  PrivateDnsNamespaceState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? hostedZone,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpc,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      hostedZone = pulumi.Input.asOptionalInput<String>(hostedZone),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpc = pulumi.Input.asOptionalInput<String>(vpc);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'hostedZone': ?hostedZone,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpc': ?vpc,
    };
  }

  factory PrivateDnsNamespaceState.fromMap(Map<String, dynamic> map) {
    return PrivateDnsNamespaceState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      hostedZone: map['hostedZone'] == null ? null : pulumi.Output.create<String>(map['hostedZone'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpc: map['vpc'] == null ? null : pulumi.Output.create<String>(map['vpc'] as String),
    );
  }
}

