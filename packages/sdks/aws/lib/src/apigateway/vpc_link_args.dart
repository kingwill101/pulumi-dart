// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigateway_vpc_link_vpc_link_args_doc}
/// The set of arguments for VpcLink.
/// {@endtemplate}
/// {@macro pulumi_apigateway_vpc_link_vpc_link_args_doc}
class VpcLinkArgs {
  /// Description of the VPC link.
  final pulumi.Input<String>? description;
  /// Name used to label and identify the VPC link.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// List of network load balancer arns in the VPC targeted by the VPC link. Currently AWS only supports 1 target.
  final pulumi.Input<String> targetArn;

  /// Creates a new [VpcLinkArgs].
  /// [description] Description of the VPC link.
  /// [name] Name used to label and identify the VPC link.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetArn] List of network load balancer arns in the VPC targeted by the VPC link. Currently AWS only supports 1 target.
  VpcLinkArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> targetArn,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetArn = pulumi.Input.asInput<String>(targetArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'targetArn': targetArn,
    };
  }

  factory VpcLinkArgs.fromMap(Map<String, dynamic> map) {
    return VpcLinkArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetArn: pulumi.Output.create<String>(map['targetArn'] as String),
    );
  }
}

