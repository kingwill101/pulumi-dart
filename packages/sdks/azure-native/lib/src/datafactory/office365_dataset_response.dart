// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// The Office365 account.
class Office365DatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final List<dynamic>? annotations;
  /// Dataset description.
  final String? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetResponseFolder? folder;
  /// Linked service reference.
  final LinkedServiceReferenceResponse linkedServiceName;
  /// Parameters for dataset.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// A predicate expression that can be used to filter the specific rows to extract from Office 365. Type: string (or Expression with resultType string).
  final dynamic predicate;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// Name of the dataset to extract from Office 365. Type: string (or Expression with resultType string).
  final dynamic tableName;
  /// Type of dataset.
  /// Expected value is 'Office365Table'.
  final String type;

  /// Creates a new [Office365DatasetResponse].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [parameters] Parameters for dataset.
  /// [predicate] A predicate expression that can be used to filter the specific rows to extract from Office 365. Type: string (or Expression with resultType string).
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [tableName] Name of the dataset to extract from Office 365. Type: string (or Expression with resultType string).
  /// [type] Type of dataset.
  Office365DatasetResponse({
    this.annotations,
    this.description,
    this.folder,
    required this.linkedServiceName,
    this.parameters,
    this.predicate,
    this.schema,
    this.structure,
    required this.tableName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'folder': ?folder == null ? null : folder!.toMap(),
      'linkedServiceName': linkedServiceName.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'predicate': ?predicate,
      'schema': ?schema,
      'structure': ?structure,
      'tableName': tableName,
      'type': type,
    };
  }

  factory Office365DatasetResponse.fromMap(Map<String, dynamic> map) {
    return Office365DatasetResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      folder: map['folder'] == null ? null : DatasetResponseFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      linkedServiceName: LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      predicate: map['predicate'] == null ? null : map['predicate'],
      schema: map['schema'] == null ? null : map['schema'],
      structure: map['structure'] == null ? null : map['structure'],
      tableName: map['tableName'],
      type: map['type'] as String,
    );
  }
}

