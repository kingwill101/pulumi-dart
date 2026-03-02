// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_code_build_project_args_doc}
/// Arguments for getCodeBuildProject.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_code_build_project_args_doc}
class GetCodeBuildProjectArgs {
  /// Name of CodeBuildProject
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCodeBuildProjectArgs].
  /// [name] Name of CodeBuildProject
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCodeBuildProjectArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCodeBuildProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetCodeBuildProjectArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

