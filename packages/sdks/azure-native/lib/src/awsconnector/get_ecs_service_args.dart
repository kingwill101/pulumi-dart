// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_ecs_service_args_doc}
/// Arguments for getEcsService.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_ecs_service_args_doc}
class GetEcsServiceArgs {
  /// Name of EcsService
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEcsServiceArgs].
  /// [name] Name of EcsService
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEcsServiceArgs({
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

  factory GetEcsServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsServiceArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

