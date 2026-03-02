// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_s3_compatible_location_response.dart';
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// Avro dataset.
class AvroDatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The data avroCompressionCodec. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? avroCompressionCodec;
  final pulumi.Input<int>? avroCompressionLevel;
  /// Dataset description.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetResponseFolder>? folder;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;
  /// The location of the avro storage.
  final pulumi.Input<AmazonS3CompatibleLocationResponse> location;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;
  /// Type of dataset.
  /// Expected value is 'Avro'.
  final pulumi.Input<String> type;

  /// Creates a new [AvroDatasetResponse].
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
  AvroDatasetResponse({
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
      'folder': ?pulumi.Input.mapOptionalInputValue<DatasetResponseFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'location': pulumi.Input.mapInputValue<AmazonS3CompatibleLocationResponse, Map<String, dynamic>>(location, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory AvroDatasetResponse.fromMap(Map<String, dynamic> map) {
    return AvroDatasetResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      avroCompressionCodec: map['avroCompressionCodec'] == null ? null : (map['avroCompressionCodec']!).input(),
      avroCompressionLevel: map['avroCompressionLevel'] == null ? null : (map['avroCompressionLevel']! as int).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      folder: map['folder'] == null ? null : (DatasetResponseFolder.fromMap((map['folder']! as Map).cast<String, dynamic>())).input(),
      linkedServiceName: (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      location: (AmazonS3CompatibleLocationResponse.fromMap((map['location'] as Map).cast<String, dynamic>())).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schema: map['schema'] == null ? null : (map['schema']!).input(),
      structure: map['structure'] == null ? null : (map['structure']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

