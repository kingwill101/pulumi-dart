// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_component_version_args_doc}
/// Arguments for getComponentVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_component_version_args_doc}
class GetComponentVersionArgs {
  /// Container name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String> version;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetComponentVersionArgs].
  /// [name] Container name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetComponentVersionArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> version,
    required pulumi.Output<String> workspaceName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asInput<String>(version),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'version': version,
      'workspaceName': workspaceName,
    };
  }

  factory GetComponentVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetComponentVersionArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

