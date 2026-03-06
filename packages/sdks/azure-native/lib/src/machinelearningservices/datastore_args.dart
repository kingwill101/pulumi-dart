// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_blob_datastore.dart';

/// {@template pulumi_machinelearningservices_datastore_args_doc}
/// The set of arguments for Datastore.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_datastore_args_doc}
class DatastoreArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<AzureBlobDatastore> datastoreProperties;
  /// Datastore name.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Flag to skip validation.
  final pulumi.Input<bool>? skipValidation;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [DatastoreArgs].
  /// [datastoreProperties] [Required] Additional attributes of the entity.
  /// [name] Datastore name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [skipValidation] Flag to skip validation.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  const DatastoreArgs({
    required this.datastoreProperties,
    this.name,
    required this.resourceGroupName,
    this.skipValidation,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreProperties': pulumi.Input.mapInputValue<AzureBlobDatastore, Map<String, dynamic>>(datastoreProperties, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'skipValidation': ?skipValidation,
      'workspaceName': workspaceName,
    };
  }

  factory DatastoreArgs.fromMap(Map<String, dynamic> map) {
    return DatastoreArgs(
      datastoreProperties: pulumi.Input.fromValue(AzureBlobDatastore.fromMap((map['datastoreProperties']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      skipValidation: (() { final guardedValue = map['skipValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

