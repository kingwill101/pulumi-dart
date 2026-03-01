// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// MariaDB server dataset.
class MariaDBTableDataset {
  /// List of tags that can be used for describing the Dataset.
  final List<dynamic>? annotations;
  /// Dataset description.
  final String? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetFolder? folder;
  /// Linked service reference.
  final LinkedServiceReference linkedServiceName;
  /// Parameters for dataset.
  final Map<String, ParameterSpecification>? parameters;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// The table name. Type: string (or Expression with resultType string).
  final dynamic tableName;
  /// Type of dataset.
  /// Expected value is 'MariaDBTable'.
  final String type;

  /// Creates a new [MariaDBTableDataset].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [parameters] Parameters for dataset.
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [tableName] The table name. Type: string (or Expression with resultType string).
  /// [type] Type of dataset.
  MariaDBTableDataset({
    this.annotations,
    this.description,
    this.folder,
    required this.linkedServiceName,
    this.parameters,
    this.schema,
    this.structure,
    this.tableName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'description': ?description,
      'folder': ?folder == null ? null : folder!.toMap(),
      'linkedServiceName': linkedServiceName.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'schema': ?schema,
      'structure': ?structure,
      'tableName': ?tableName,
      'type': type,
    };
  }

  factory MariaDBTableDataset.fromMap(Map<String, dynamic> map) {
    return MariaDBTableDataset(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      description: map['description'] == null ? null : map['description'] as String,
      folder: map['folder'] == null ? null : DatasetFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      linkedServiceName: LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] == null ? null : map['schema'],
      structure: map['structure'] == null ? null : map['structure'],
      tableName: map['tableName'] == null ? null : map['tableName'],
      type: map['type'] as String,
    );
  }
}

