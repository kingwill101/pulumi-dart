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
    this.arn,
    this.description,
    this.hostedZone,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.vpc,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      hostedZone: map['hostedZone'] == null ? null : (map['hostedZone'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpc: map['vpc'] == null ? null : (map['vpc'] as String).input(),
    );
  }
}

