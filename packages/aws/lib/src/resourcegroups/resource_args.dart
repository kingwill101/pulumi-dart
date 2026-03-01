// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcegroups_resource_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_resourcegroups_resource_resource_args_doc}
class ResourceArgs {
  /// Name or ARN of the resource group to add resources to.
  final pulumi.Input<String> groupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN of the resource to be added to the group.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [ResourceArgs].
  /// [groupArn] Name or ARN of the resource group to add resources to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] ARN of the resource to be added to the group.
  ResourceArgs({
    required String groupArn,
    String? region,
    required String resourceArn,
  }) : groupArn = pulumi.Input.asInput<String>(groupArn),
       region = pulumi.Input.asOptionalInput<String>(region),
       resourceArn = pulumi.Input.asInput<String>(resourceArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupArn': groupArn,
      'region': ?region,
      'resourceArn': resourceArn,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      groupArn: map['groupArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceArn: map['resourceArn'] as String,
    );
  }
}
