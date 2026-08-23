// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_datastore.dart';

/// {@template pulumi_machinelearningservices_datastore_args_doc}
/// The set of arguments for Datastore.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_datastore_args_doc}
class DatastoreArgs {
  /// Datastore name.
  final pulumi.Input<String>? name;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<AzureBlobDatastore> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Flag to skip validation.
  final pulumi.Input<bool>? skipValidation;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [DatastoreArgs].
  /// [name] Datastore name.
  /// [properties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [skipValidation] Flag to skip validation.
  /// [workspaceName] Azure Machine Learning Workspace Name
  const DatastoreArgs({
    this.name,
    required this.properties,
    required this.resourceGroupName,
    this.skipValidation,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': pulumi.Input.mapInputValue<AzureBlobDatastore, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'skipValidation': ?skipValidation,
      'workspaceName': workspaceName,
    };
  }

  factory DatastoreArgs.fromMap(Map<String, dynamic> map) {
    return DatastoreArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(AzureBlobDatastore.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skipValidation: (() { final guardedValue = map['skipValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
