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
  DatastoreArgs({
    required pulumi.Output<AzureBlobDatastore> datastoreProperties,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? skipValidation,
    required pulumi.Output<String> workspaceName,
  }) :
      datastoreProperties = pulumi.Input.asInput<AzureBlobDatastore>(datastoreProperties),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skipValidation = pulumi.Input.asOptionalInput<bool>(skipValidation),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      datastoreProperties: pulumi.Output.create<AzureBlobDatastore>(AzureBlobDatastore.fromMap((map['datastoreProperties'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skipValidation: map['skipValidation'] == null ? null : pulumi.Output.create<bool>(map['skipValidation'] as bool),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

