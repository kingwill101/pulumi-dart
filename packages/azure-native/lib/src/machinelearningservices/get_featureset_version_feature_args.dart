// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_featureset_version_feature_args_doc}
/// Arguments for getFeaturesetVersionFeature.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_featureset_version_feature_args_doc}
class GetFeaturesetVersionFeatureArgs {
  /// Specifies name of the feature.
  final pulumi.Input<String>? featureName;
  /// Feature set name. This is case-sensitive.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Feature set version identifier. This is case-sensitive.
  final pulumi.Input<String> version;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetFeaturesetVersionFeatureArgs].
  /// [featureName] Specifies name of the feature.
  /// [name] Feature set name. This is case-sensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Feature set version identifier. This is case-sensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetFeaturesetVersionFeatureArgs({
    String? featureName,
    required String name,
    required String resourceGroupName,
    required String version,
    required String workspaceName,
  }) :
      featureName = pulumi.Input.asOptionalInput<String>(featureName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asInput<String>(version),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': ?featureName,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'version': version,
      'workspaceName': workspaceName,
    };
  }

  factory GetFeaturesetVersionFeatureArgs.fromMap(Map<String, dynamic> map) {
    return GetFeaturesetVersionFeatureArgs(
      featureName: map['featureName'] == null ? null : map['featureName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      version: map['version'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

