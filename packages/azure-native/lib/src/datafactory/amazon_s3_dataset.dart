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
  final List<dynamic>? annotations;
  /// The name of the Amazon S3 bucket. Type: string (or Expression with resultType string).
  final dynamic bucketName;
  /// The data compression method used for the Amazon S3 object.
  final DatasetCompression? compression;
  /// Dataset description.
  final String? description;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetFolder? folder;
  /// The format of files.
  final AvroFormat? format;
  /// The key of the Amazon S3 object. Type: string (or Expression with resultType string).
  final dynamic key;
  /// Linked service reference.
  final LinkedServiceReference linkedServiceName;
  /// The end of S3 object's modified datetime. Type: string (or Expression with resultType string).
  final dynamic modifiedDatetimeEnd;
  /// The start of S3 object's modified datetime. Type: string (or Expression with resultType string).
  final dynamic modifiedDatetimeStart;
  /// Parameters for dataset.
  final Map<String, ParameterSpecification>? parameters;
  /// The prefix filter for the S3 object name. Type: string (or Expression with resultType string).
  final dynamic prefix;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// Type of dataset.
  /// Expected value is 'AmazonS3Object'.
  final String type;
  /// The version for the S3 object. Type: string (or Expression with resultType string).
  final dynamic version;

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
      'compression': ?compression == null ? null : compression!.toMap(),
      'description': ?description,
      'folder': ?folder == null ? null : folder!.toMap(),
      'format': ?format == null ? null : format!.toMap(),
      'key': ?key,
      'linkedServiceName': linkedServiceName.toMap(),
      'modifiedDatetimeEnd': ?modifiedDatetimeEnd,
      'modifiedDatetimeStart': ?modifiedDatetimeStart,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'prefix': ?prefix,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
      'version': ?version,
    };
  }

  factory AmazonS3Dataset.fromMap(Map<String, dynamic> map) {
    return AmazonS3Dataset(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      bucketName: map['bucketName'],
      compression: map['compression'] == null ? null : DatasetCompression.fromMap((map['compression'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      folder: map['folder'] == null ? null : DatasetFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      format: map['format'] == null ? null : AvroFormat.fromMap((map['format'] as Map).cast<String, dynamic>()),
      key: map['key'] == null ? null : map['key'],
      linkedServiceName: LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      modifiedDatetimeEnd: map['modifiedDatetimeEnd'] == null ? null : map['modifiedDatetimeEnd'],
      modifiedDatetimeStart: map['modifiedDatetimeStart'] == null ? null : map['modifiedDatetimeStart'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      prefix: map['prefix'] == null ? null : map['prefix'],
      schema: map['schema'] == null ? null : map['schema'],
      structure: map['structure'] == null ? null : map['structure'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'],
    );
  }
}

