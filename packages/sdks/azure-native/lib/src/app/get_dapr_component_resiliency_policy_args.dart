// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_dapr_component_resiliency_policy_args_doc}
/// Arguments for getDaprComponentResiliencyPolicy.
/// {@endtemplate}
/// {@macro pulumi_app_get_dapr_component_resiliency_policy_args_doc}
class GetDaprComponentResiliencyPolicyArgs {
  /// Name of the Dapr Component.
  final pulumi.Input<String> componentName;
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// Name of the Dapr Component Resiliency Policy.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDaprComponentResiliencyPolicyArgs].
  /// [componentName] Name of the Dapr Component.
  /// [environmentName] Name of the Managed Environment.
  /// [name] Name of the Dapr Component Resiliency Policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDaprComponentResiliencyPolicyArgs({
    required this.componentName,
    required this.environmentName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'environmentName': environmentName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDaprComponentResiliencyPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDaprComponentResiliencyPolicyArgs(
      componentName: pulumi.Input.fromValue(map['componentName'] as String),
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

