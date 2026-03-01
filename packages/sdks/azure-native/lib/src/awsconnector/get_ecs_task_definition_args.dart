// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ecs_task_definition_args_doc}
/// Arguments for getEcsTaskDefinition.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ecs_task_definition_args_doc}
class GetEcsTaskDefinitionArgs {
  /// Name of EcsTaskDefinition
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEcsTaskDefinitionArgs].
  /// [name] Name of EcsTaskDefinition
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEcsTaskDefinitionArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEcsTaskDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsTaskDefinitionArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

