// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudformation_get_stack_get_stack_args_doc}
/// Arguments for getStack.
/// {@endtemplate}
/// {@macro pulumi_cloudformation_get_stack_get_stack_args_doc}
class GetStackArgs {
  /// Name of the stack
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags associated with this stack.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetStackArgs].
  /// [name] Name of the stack
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags associated with this stack.
  GetStackArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetStackArgs.fromMap(Map<String, dynamic> map) {
    return GetStackArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

