// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// Azure Databricks Delta Lake dataset.
class AzureDatabricksDeltaLakeDatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final List<dynamic>? annotations;
  /// The database name of delta table. Type: string (or Expression with resultType string).
  final dynamic database;
  /// Dataset description.
  final String? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetResponseFolder? folder;
  /// Linked service reference.
  final LinkedServiceReferenceResponse linkedServiceName;
  /// Parameters for dataset.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// The name of delta table. Type: string (or Expression with resultType string).
  final dynamic table;
  /// Type of dataset.
  /// Expected value is 'AzureDatabricksDeltaLakeDataset'.
  final String type;

  /// Creates a new [AzureDatabricksDeltaLakeDatasetResponse].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [database] The database name of delta table. Type: string (or Expression with resultType string).
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [parameters] Parameters for dataset.
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [table] The name of delta table. Type: string (or Expression with resultType string).
  /// [type] Type of dataset.
  AzureDatabricksDeltaLakeDatasetResponse({
    this.annotations,
    this.database,
    this.description,
    this.folder,
    required this.linkedServiceName,
    this.parameters,
    this.schema,
    this.structure,
    this.table,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'database': ?database,
      'description': ?description,
      'folder': ?folder == null ? null : folder!.toMap(),
      'linkedServiceName': linkedServiceName.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'schema': ?schema,
      'structure': ?structure,
      'table': ?table,
      'type': type,
    };
  }

  factory AzureDatabricksDeltaLakeDatasetResponse.fromMap(Map<String, dynamic> map) {
    return AzureDatabricksDeltaLakeDatasetResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      database: map['database'] == null ? null : map['database'],
      description: map['description'] == null ? null : map['description'] as String,
      folder: map['folder'] == null ? null : DatasetResponseFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      linkedServiceName: LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] == null ? null : map['schema'],
      structure: map['structure'] == null ? null : map['structure'],
      table: map['table'] == null ? null : map['table'],
      type: map['type'] as String,
    );
  }
}

