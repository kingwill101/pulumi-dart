// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'featureset_container_properties.dart';

/// {@template pulumi_machinelearningservices_featureset_container_entity_args_doc}
/// The set of arguments for FeaturesetContainerEntity.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_featureset_container_entity_args_doc}
class FeaturesetContainerEntityArgs {
  /// Container name. This is case-sensitive.
  final pulumi.Input<String>? name;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<FeaturesetContainerProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [FeaturesetContainerEntityArgs].
  /// [name] Container name. This is case-sensitive.
  /// [properties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  const FeaturesetContainerEntityArgs({
    this.name,
    required this.properties,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': pulumi.Input.mapInputValue<FeaturesetContainerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory FeaturesetContainerEntityArgs.fromMap(Map<String, dynamic> map) {
    return FeaturesetContainerEntityArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(FeaturesetContainerProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
