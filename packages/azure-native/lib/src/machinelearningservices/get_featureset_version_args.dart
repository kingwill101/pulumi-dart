// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_featureset_version_args_doc}
/// Arguments for getFeaturesetVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_featureset_version_args_doc}
class GetFeaturesetVersionArgs {
  /// Container name. This is case-sensitive.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier. This is case-sensitive.
  final pulumi.Input<String> version;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetFeaturesetVersionArgs].
  /// [name] Container name. This is case-sensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier. This is case-sensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetFeaturesetVersionArgs({
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

  factory GetFeaturesetVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetFeaturesetVersionArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      version: map['version'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

