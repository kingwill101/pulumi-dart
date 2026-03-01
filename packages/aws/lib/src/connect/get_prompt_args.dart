// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_prompt_get_prompt_args_doc}
/// Arguments for getPrompt.
/// {@endtemplate}
/// {@macro pulumi_connect_get_prompt_get_prompt_args_doc}
class GetPromptArgs {
  /// Reference to the hosting Amazon Connect Instance
  final pulumi.Input<String> instanceId;

  /// Returns information on a specific Prompt by name
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetPromptArgs].
  /// [instanceId] Reference to the hosting Amazon Connect Instance
  /// [name] Returns information on a specific Prompt by name
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetPromptArgs({
    required String instanceId,
    required String name,
    String? region,
  }) : instanceId = pulumi.Input.asInput<String>(instanceId),
       name = pulumi.Input.asInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'name': name,
      'region': ?region,
    };
  }

  factory GetPromptArgs.fromMap(Map<String, dynamic> map) {
    return GetPromptArgs(
      instanceId: map['instanceId'] as String,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
