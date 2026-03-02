// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// The MongoDB database dataset.
class MongoDbV2CollectionDataset {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The collection name of the MongoDB database. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> collection;
  /// Dataset description.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetFolder>? folder;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference> linkedServiceName;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;
  /// Type of dataset.
  /// Expected value is 'MongoDbV2Collection'.
  final pulumi.Input<String> type;

  /// Creates a new [MongoDbV2CollectionDataset].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [collection] The collection name of the MongoDB database. Type: string (or Expression with resultType string).
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [parameters] Parameters for dataset.
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  MongoDbV2CollectionDataset({
    this.annotations,
    required this.collection,
    this.description,
    this.folder,
    required this.linkedServiceName,
    this.parameters,
    this.schema,
    this.structure,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'collection': collection,
      'description': ?description,
      'folder': ?pulumi.Input.mapOptionalInputValue<DatasetFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory MongoDbV2CollectionDataset.fromMap(Map<String, dynamic> map) {
    return MongoDbV2CollectionDataset(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      collection: (map['collection']).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      folder: map['folder'] == null ? null : (DatasetFolder.fromMap((map['folder']! as Map).cast<String, dynamic>())).input(),
      linkedServiceName: (LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schema: map['schema'] == null ? null : (map['schema']!).input(),
      structure: map['structure'] == null ? null : (map['structure']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

