// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'featurestore_entity_container.dart';

/// {@template pulumi_machinelearningservices_featurestore_entity_container_entity_args_doc}
/// The set of arguments for FeaturestoreEntityContainerEntity.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_featurestore_entity_container_entity_args_doc}
class FeaturestoreEntityContainerEntityArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<FeaturestoreEntityContainer> featurestoreEntityContainerProperties;
  /// Container name. This is case-sensitive.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [FeaturestoreEntityContainerEntityArgs].
  /// [featurestoreEntityContainerProperties] [Required] Additional attributes of the entity.
  /// [name] Container name. This is case-sensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  FeaturestoreEntityContainerEntityArgs({
    required this.featurestoreEntityContainerProperties,
    this.name,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featurestoreEntityContainerProperties': pulumi.Input.mapInputValue<FeaturestoreEntityContainer, Map<String, dynamic>>(featurestoreEntityContainerProperties, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory FeaturestoreEntityContainerEntityArgs.fromMap(Map<String, dynamic> map) {
    return FeaturestoreEntityContainerEntityArgs(
      featurestoreEntityContainerProperties: (FeaturestoreEntityContainer.fromMap((map['featurestoreEntityContainerProperties'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

