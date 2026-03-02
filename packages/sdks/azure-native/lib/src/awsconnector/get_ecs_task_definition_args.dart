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
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEcsTaskDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsTaskDefinitionArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

