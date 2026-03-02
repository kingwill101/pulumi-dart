// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// The Office365 account.
class Office365Dataset {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Dataset description.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetFolder>? folder;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference> linkedServiceName;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// A predicate expression that can be used to filter the specific rows to extract from Office 365. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? predicate;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;
  /// Name of the dataset to extract from Office 365. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> tableName;
  /// Type of dataset.
  /// Expected value is 'Office365Table'.
  final pulumi.Input<String> type;

  /// Creates a new [Office365Dataset].
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
  Office365Dataset({
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
      'folder': ?pulumi.Input.mapOptionalInputValue<DatasetFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'predicate': ?predicate,
      'schema': ?schema,
      'structure': ?structure,
      'tableName': tableName,
      'type': type,
    };
  }

  factory Office365Dataset.fromMap(Map<String, dynamic> map) {
    return Office365Dataset(
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      folder: map['folder'] == null ? null : (DatasetFolder.fromMap((map['folder'] as Map).cast<String, dynamic>())).input(),
      linkedServiceName: (LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      predicate: map['predicate'] == null ? null : (map['predicate']).input(),
      schema: map['schema'] == null ? null : (map['schema']).input(),
      structure: map['structure'] == null ? null : (map['structure']).input(),
      tableName: (map['tableName']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

