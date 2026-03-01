// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_dot_net_component_args_doc}
/// Arguments for getDotNetComponent.
/// {@endtemplate}
/// {@macro pulumi_app_get_dot_net_component_args_doc}
class GetDotNetComponentArgs {
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// Name of the .NET Component.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDotNetComponentArgs].
  /// [environmentName] Name of the Managed Environment.
  /// [name] Name of the .NET Component.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDotNetComponentArgs({
    required pulumi.Output<String> environmentName,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDotNetComponentArgs.fromMap(Map<String, dynamic> map) {
    return GetDotNetComponentArgs(
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

