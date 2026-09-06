// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_folder_response.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// Avro dataset.
class AvroDatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The data avroCompressionCodec. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? avroCompressionCodec;
  final pulumi.Input<int?>? avroCompressionLevel;
  /// Dataset description.
  final pulumi.Input<String?>? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetFolderResponse?>? folder;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;
  /// The location of the avro storage.
  final pulumi.Input<dynamic> location;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
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
  const AvroDatasetResponse({
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
      'folder': ?pulumi.Input.mapOptionalInputValue<DatasetFolderResponse, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'location': location,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory AvroDatasetResponse.fromMap(Map<String, dynamic> map) {
    return AvroDatasetResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      avroCompressionCodec: (() { final guardedValue = map['avroCompressionCodec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      avroCompressionLevel: (() { final guardedValue = map['avroCompressionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetFolderResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedServiceName: pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())),
      location: pulumi.Input.fromValue(map['location']),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      structure: (() { final guardedValue = map['structure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
