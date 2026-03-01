// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_inspector_resource_group_resource_group_args_doc}
/// The set of arguments for ResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_inspector_resource_group_resource_group_args_doc}
class ResourceGroupArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of tags that are used to select the EC2 instances to be included in an Amazon Inspector assessment target.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [ResourceGroupArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of tags that are used to select the EC2 instances to be included in an Amazon Inspector assessment target.
  ResourceGroupArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<Map<String, String>> tags,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'tags': tags,
    };
  }

  factory ResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGroupArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

