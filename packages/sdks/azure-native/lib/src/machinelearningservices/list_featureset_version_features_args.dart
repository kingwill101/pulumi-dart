// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_list_featureset_version_features_args_doc}
/// Arguments for listFeaturesetVersionFeatures.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_list_featureset_version_features_args_doc}
class ListFeaturesetVersionFeaturesArgs {
  /// Featureset name. This is case-sensitive.
  final pulumi.Input<String> name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Continuation token for pagination.
  final pulumi.Input<String>? skip;

  /// Comma-separated list of tag names (and optionally values). Example: tag1,tag2=value2
  final pulumi.Input<String>? tags;

  /// Featureset Version identifier. This is case-sensitive.
  final pulumi.Input<String> version;

  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListFeaturesetVersionFeaturesArgs].
  /// [name] Featureset name. This is case-sensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [skip] Continuation token for pagination.
  /// [tags] Comma-separated list of tag names (and optionally values). Example: tag1,tag2=value2
  /// [version] Featureset Version identifier. This is case-sensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  ListFeaturesetVersionFeaturesArgs({
    required this.name,
    required this.resourceGroupName,
    this.skip,
    this.tags,
    required this.version,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'skip': ?skip,
      'tags': ?tags,
      'version': version,
      'workspaceName': workspaceName,
    };
  }

  factory ListFeaturesetVersionFeaturesArgs.fromMap(Map<String, dynamic> map) {
    return ListFeaturesetVersionFeaturesArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      skip: (() {
        final guardedValue = map['skip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: pulumi.Input.fromValue(map['version'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
