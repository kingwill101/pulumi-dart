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
    required pulumi.Output<FeaturestoreEntityContainer> featurestoreEntityContainerProperties,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      featurestoreEntityContainerProperties = pulumi.Input.asInput<FeaturestoreEntityContainer>(featurestoreEntityContainerProperties),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      featurestoreEntityContainerProperties: pulumi.Output.create<FeaturestoreEntityContainer>(FeaturestoreEntityContainer.fromMap((map['featurestoreEntityContainerProperties'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

