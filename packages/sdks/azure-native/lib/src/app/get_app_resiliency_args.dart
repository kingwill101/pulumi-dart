// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_app_resiliency_args_doc}
/// Arguments for getAppResiliency.
/// {@endtemplate}
/// {@macro pulumi_app_get_app_resiliency_args_doc}
class GetAppResiliencyArgs {
  /// Name of the Container App.
  final pulumi.Input<String> appName;
  /// Name of the resiliency policy.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppResiliencyArgs].
  /// [appName] Name of the Container App.
  /// [name] Name of the resiliency policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAppResiliencyArgs({
    required this.appName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': appName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppResiliencyArgs.fromMap(Map<String, dynamic> map) {
    return GetAppResiliencyArgs(
      appName: pulumi.Input.fromValue(map['appName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
