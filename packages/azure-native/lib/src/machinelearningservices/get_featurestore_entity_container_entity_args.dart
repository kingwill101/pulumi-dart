// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_featurestore_entity_container_entity_args_doc}
/// Arguments for getFeaturestoreEntityContainerEntity.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_featurestore_entity_container_entity_args_doc}
class GetFeaturestoreEntityContainerEntityArgs {
  /// Container name. This is case-sensitive.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetFeaturestoreEntityContainerEntityArgs].
  /// [name] Container name. This is case-sensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetFeaturestoreEntityContainerEntityArgs({
    required String name,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetFeaturestoreEntityContainerEntityArgs.fromMap(Map<String, dynamic> map) {
    return GetFeaturestoreEntityContainerEntityArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

