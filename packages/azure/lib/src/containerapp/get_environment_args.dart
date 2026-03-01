// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerapp_get_environment_get_environment_args_doc}
/// Arguments for getEnvironment.
/// {@endtemplate}
/// {@macro pulumi_containerapp_get_environment_get_environment_args_doc}
class GetEnvironmentArgs {
  /// The name of the Container Apps Managed Environment.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where this Container App Environment exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEnvironmentArgs].
  /// [name] The name of the Container Apps Managed Environment.
  /// [resourceGroupName] The name of the Resource Group where this Container App Environment exists.
  GetEnvironmentArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

