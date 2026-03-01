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
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? skip,
    pulumi.Output<String>? tags,
    required pulumi.Output<String> version,
    required pulumi.Output<String> workspaceName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skip = pulumi.Input.asOptionalInput<String>(skip),
      tags = pulumi.Input.asOptionalInput<String>(tags),
      version = pulumi.Input.asInput<String>(version),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skip: map['skip'] == null ? null : pulumi.Output.create<String>(map['skip'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<String>(map['tags'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

