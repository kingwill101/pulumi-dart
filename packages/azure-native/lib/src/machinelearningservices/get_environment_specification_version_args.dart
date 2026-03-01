// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_environment_specification_version_args_doc}
/// Arguments for getEnvironmentSpecificationVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_environment_specification_version_args_doc}
class GetEnvironmentSpecificationVersionArgs {
  /// Container name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String> version;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetEnvironmentSpecificationVersionArgs].
  /// [name] Container name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetEnvironmentSpecificationVersionArgs({
    required String name,
    required String resourceGroupName,
    required String version,
    required String workspaceName,
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

  factory GetEnvironmentSpecificationVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentSpecificationVersionArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      version: map['version'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

