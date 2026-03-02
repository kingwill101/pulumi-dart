// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'featureset_container.dart';

/// {@template pulumi_machinelearningservices_featureset_container_entity_args_doc}
/// The set of arguments for FeaturesetContainerEntity.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_featureset_container_entity_args_doc}
class FeaturesetContainerEntityArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<FeaturesetContainer> featuresetContainerProperties;
  /// Container name. This is case-sensitive.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [FeaturesetContainerEntityArgs].
  /// [featuresetContainerProperties] [Required] Additional attributes of the entity.
  /// [name] Container name. This is case-sensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  FeaturesetContainerEntityArgs({
    required this.featuresetContainerProperties,
    this.name,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featuresetContainerProperties': pulumi.Input.mapInputValue<FeaturesetContainer, Map<String, dynamic>>(featuresetContainerProperties, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory FeaturesetContainerEntityArgs.fromMap(Map<String, dynamic> map) {
    return FeaturesetContainerEntityArgs(
      featuresetContainerProperties: (FeaturesetContainer.fromMap((map['featuresetContainerProperties'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

