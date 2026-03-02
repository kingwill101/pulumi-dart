// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_s3_compatible_location.dart';
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// Parquet dataset.
class ParquetDataset {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The data compressionCodec. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? compressionCodec;
  /// Dataset description.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetFolder>? folder;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference> linkedServiceName;
  /// The location of the parquet storage.
  final pulumi.Input<AmazonS3CompatibleLocation> location;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;
  /// Type of dataset.
  /// Expected value is 'Parquet'.
  final pulumi.Input<String> type;

  /// Creates a new [ParquetDataset].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [compressionCodec] The data compressionCodec. Type: string (or Expression with resultType string).
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [location] The location of the parquet storage.
  /// [parameters] Parameters for dataset.
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  ParquetDataset({
    this.annotations,
    this.compressionCodec,
    this.description,
    this.folder,
    required this.linkedServiceName,
    required this.location,
    this.parameters,
    this.schema,
    this.structure,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'compressionCodec': ?compressionCodec,
      'description': ?description,
      'folder': ?pulumi.Input.mapOptionalInputValue<DatasetFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'location': pulumi.Input.mapInputValue<AmazonS3CompatibleLocation, Map<String, dynamic>>(location, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory ParquetDataset.fromMap(Map<String, dynamic> map) {
    return ParquetDataset(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      compressionCodec: map['compressionCodec'] == null ? null : (map['compressionCodec']!).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      folder: map['folder'] == null ? null : (DatasetFolder.fromMap((map['folder']! as Map).cast<String, dynamic>())).input(),
      linkedServiceName: (LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      location: (AmazonS3CompatibleLocation.fromMap((map['location'] as Map).cast<String, dynamic>())).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schema: map['schema'] == null ? null : (map['schema']!).input(),
      structure: map['structure'] == null ? null : (map['structure']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

