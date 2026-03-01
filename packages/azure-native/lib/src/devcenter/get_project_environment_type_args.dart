// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_project_environment_type_args_doc}
/// Arguments for getProjectEnvironmentType.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_project_environment_type_args_doc}
class GetProjectEnvironmentTypeArgs {
  /// The name of the environment type.
  final pulumi.Input<String> environmentTypeName;
  /// The name of the project.
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProjectEnvironmentTypeArgs].
  /// [environmentTypeName] The name of the environment type.
  /// [projectName] The name of the project.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetProjectEnvironmentTypeArgs({
    required String environmentTypeName,
    required String projectName,
    required String resourceGroupName,
  }) :
      environmentTypeName = pulumi.Input.asInput<String>(environmentTypeName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentTypeName': environmentTypeName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProjectEnvironmentTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectEnvironmentTypeArgs(
      environmentTypeName: map['environmentTypeName'] as String,
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

