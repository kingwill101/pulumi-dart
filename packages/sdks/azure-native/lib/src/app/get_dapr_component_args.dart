// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_dapr_component_args_doc}
/// Arguments for getDaprComponent.
/// {@endtemplate}
/// {@macro pulumi_app_get_dapr_component_args_doc}
class GetDaprComponentArgs {
  /// Name of the Dapr Component.
  final pulumi.Input<String> componentName;
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDaprComponentArgs].
  /// [componentName] Name of the Dapr Component.
  /// [environmentName] Name of the Managed Environment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDaprComponentArgs({
    required pulumi.Output<String> componentName,
    required pulumi.Output<String> environmentName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      componentName = pulumi.Input.asInput<String>(componentName),
      environmentName = pulumi.Input.asInput<String>(environmentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentName': componentName,
      'environmentName': environmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDaprComponentArgs.fromMap(Map<String, dynamic> map) {
    return GetDaprComponentArgs(
      componentName: pulumi.Output.create<String>(map['componentName'] as String),
      environmentName: pulumi.Output.create<String>(map['environmentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

