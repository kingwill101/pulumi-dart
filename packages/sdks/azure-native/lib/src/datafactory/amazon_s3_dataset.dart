// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_format.dart';
import 'dataset_compression.dart';
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// A single Amazon Simple Storage Service (S3) object or a set of S3 objects.
class AmazonS3Dataset {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The name of the Amazon S3 bucket. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> bucketName;
  /// The data compression method used for the Amazon S3 object.
  final pulumi.Input<DatasetCompression>? compression;
  /// Dataset description.
  final pulumi.Input<String>? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetFolder>? folder;
  /// The format of files.
  final pulumi.Input<AvroFormat>? format;
  /// The key of the Amazon S3 object. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? key;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference> linkedServiceName;
  /// The end of S3 object's modified datetime. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? modifiedDatetimeEnd;
  /// The start of S3 object's modified datetime. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? modifiedDatetimeStart;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
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

  /// Creates a new [AmazonS3Dataset].
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
  AmazonS3Dataset({
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
      'compression': ?pulumi.Input.mapOptionalInputValue<DatasetCompression, Map<String, dynamic>>(compression, (value) => value.toMap()),
      'description': ?description,
      'folder': ?pulumi.Input.mapOptionalInputValue<DatasetFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'format': ?pulumi.Input.mapOptionalInputValue<AvroFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'key': ?key,
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReference, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'modifiedDatetimeEnd': ?modifiedDatetimeEnd,
      'modifiedDatetimeStart': ?modifiedDatetimeStart,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'prefix': ?prefix,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
      'version': ?version,
    };
  }

  factory AmazonS3Dataset.fromMap(Map<String, dynamic> map) {
    return AmazonS3Dataset(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      bucketName: (map['bucketName']).input(),
      compression: map['compression'] == null ? null : (DatasetCompression.fromMap((map['compression']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      folder: map['folder'] == null ? null : (DatasetFolder.fromMap((map['folder']! as Map).cast<String, dynamic>())).input(),
      format: map['format'] == null ? null : (AvroFormat.fromMap((map['format']! as Map).cast<String, dynamic>())).input(),
      key: map['key'] == null ? null : (map['key']!).input(),
      linkedServiceName: (LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      modifiedDatetimeEnd: map['modifiedDatetimeEnd'] == null ? null : (map['modifiedDatetimeEnd']!).input(),
      modifiedDatetimeStart: map['modifiedDatetimeStart'] == null ? null : (map['modifiedDatetimeStart']!).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      prefix: map['prefix'] == null ? null : (map['prefix']!).input(),
      schema: map['schema'] == null ? null : (map['schema']!).input(),
      structure: map['structure'] == null ? null : (map['structure']!).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version']!).input(),
    );
  }
}

