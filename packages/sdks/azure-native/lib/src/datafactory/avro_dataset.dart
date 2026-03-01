// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_s3_compatible_location.dart';
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// Avro dataset.
class AvroDataset {
  /// List of tags that can be used for describing the Dataset.
  final List<dynamic>? annotations;
  /// The data avroCompressionCodec. Type: string (or Expression with resultType string).
  final dynamic avroCompressionCodec;
  final int? avroCompressionLevel;
  /// Dataset description.
  final String? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetFolder? folder;
  /// Linked service reference.
  final LinkedServiceReference linkedServiceName;
  /// The location of the avro storage.
  final AmazonS3CompatibleLocation location;
  /// Parameters for dataset.
  final Map<String, ParameterSpecification>? parameters;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// Type of dataset.
  /// Expected value is 'Avro'.
  final String type;

  /// Creates a new [AvroDataset].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [avroCompressionCodec] The data avroCompressionCodec. Type: string (or Expression with resultType string).
  /// [avroCompressionLevel] Optional.
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [location] The location of the avro storage.
  /// [parameters] Parameters for dataset.
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  AvroDataset({
    this.annotations,
    this.avroCompressionCodec,
    this.avroCompressionLevel,
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
      'avroCompressionCodec': ?avroCompressionCodec,
      'avroCompressionLevel': ?avroCompressionLevel,
      'description': ?description,
      'folder': ?folder == null ? null : folder!.toMap(),
      'linkedServiceName': linkedServiceName.toMap(),
      'location': location.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory AvroDataset.fromMap(Map<String, dynamic> map) {
    return AvroDataset(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      avroCompressionCodec: map['avroCompressionCodec'] == null ? null : map['avroCompressionCodec'],
      avroCompressionLevel: map['avroCompressionLevel'] == null ? null : map['avroCompressionLevel'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      folder: map['folder'] == null ? null : DatasetFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      linkedServiceName: LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      location: AmazonS3CompatibleLocation.fromMap((map['location'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] == null ? null : map['schema'],
      structure: map['structure'] == null ? null : map['structure'],
      type: map['type'] as String,
    );
  }
}

