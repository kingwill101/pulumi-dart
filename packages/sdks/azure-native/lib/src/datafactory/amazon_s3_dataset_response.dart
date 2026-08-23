// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_format_response.dart';
import 'dataset_compression_response.dart';
import 'dataset_folder_response.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// A single Amazon Simple Storage Service (S3) object or a set of S3 objects.
class AmazonS3DatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The name of the Amazon S3 bucket. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> bucketName;
  /// The data compression method used for the Amazon S3 object.
  final pulumi.Input<DatasetCompressionResponse>? compression;
  /// Dataset description.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetFolderResponse>? folder;
  /// The format of files.
  final pulumi.Input<AvroFormatResponse>? format;
  /// The key of the Amazon S3 object. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? key;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;
  /// The end of S3 object's modified datetime. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? modifiedDatetimeEnd;
  /// The start of S3 object's modified datetime. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? modifiedDatetimeStart;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The prefix filter for the S3 object name. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? prefix;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;
  /// Type of dataset.
  /// Expected value is 'AmazonS3Object'.
  final pulumi.Input<String> type;
  /// The version for the S3 object. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? version;

  /// Creates a new [AmazonS3DatasetResponse].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [bucketName] The name of the Amazon S3 bucket. Type: string (or Expression with resultType string).
  /// [compression] The data compression method used for the Amazon S3 object.
  /// [description] Dataset description.
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [format] The format of files.
  /// [key] The key of the Amazon S3 object. Type: string (or Expression with resultType string).
  /// [linkedServiceName] Linked service reference.
  /// [modifiedDatetimeEnd] The end of S3 object's modified datetime. Type: string (or Expression with resultType string).
  /// [modifiedDatetimeStart] The start of S3 object's modified datetime. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for dataset.
  /// [prefix] The prefix filter for the S3 object name. Type: string (or Expression with resultType string).
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  /// [version] The version for the S3 object. Type: string (or Expression with resultType string).
  const AmazonS3DatasetResponse({
    this.annotations,
    required this.bucketName,
    this.compression,
    this.description,
    this.folder,
    this.format,
    this.key,
    required this.linkedServiceName,
    this.modifiedDatetimeEnd,
    this.modifiedDatetimeStart,
    this.parameters,
    this.prefix,
    this.schema,
    this.structure,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'bucketName': bucketName,
      'compression': ?pulumi.Input.mapOptionalInputValue<DatasetCompressionResponse, Map<String, dynamic>>(compression, (value) => value.toMap()),
      'description': ?description,
      'folder': ?pulumi.Input.mapOptionalInputValue<DatasetFolderResponse, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'format': ?pulumi.Input.mapOptionalInputValue<AvroFormatResponse, Map<String, dynamic>>(format, (value) => value.toMap()),
      'key': ?key,
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'modifiedDatetimeEnd': ?modifiedDatetimeEnd,
      'modifiedDatetimeStart': ?modifiedDatetimeStart,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefix': ?prefix,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
      'version': ?version,
    };
  }

  factory AmazonS3DatasetResponse.fromMap(Map<String, dynamic> map) {
    return AmazonS3DatasetResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      bucketName: pulumi.Input.fromValue(map['bucketName']),
      compression: (() { final guardedValue = map['compression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetCompressionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetFolderResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AvroFormatResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      linkedServiceName: pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())),
      modifiedDatetimeEnd: (() { final guardedValue = map['modifiedDatetimeEnd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      modifiedDatetimeStart: (() { final guardedValue = map['modifiedDatetimeStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      structure: (() { final guardedValue = map['structure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
