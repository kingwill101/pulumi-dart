// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_format_response.dart';
import 'dataset_compression_response.dart';
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// An on-premises file system dataset.
class FileShareDatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The data compression method used for the file system.
  final pulumi.Input<DatasetCompressionResponse>? compression;

  /// Dataset description.
  final pulumi.Input<String>? description;

  /// Specify a filter to be used to select a subset of files in the folderPath rather than all files. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileFilter;

  /// The name of the on-premises file system. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileName;

  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetResponseFolder>? folder;

  /// The path of the on-premises file system. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? folderPath;

  /// The format of the files.
  final pulumi.Input<AvroFormatResponse>? format;

  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;

  /// The end of file's modified datetime. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? modifiedDatetimeEnd;

  /// The start of file's modified datetime. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? modifiedDatetimeStart;

  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;

  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;

  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;

  /// Type of dataset.
  /// Expected value is 'FileShare'.
  final pulumi.Input<String> type;

  /// Creates a new [FileShareDatasetResponse].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [compression] The data compression method used for the file system.
  /// [description] Dataset description.
  /// [fileFilter] Specify a filter to be used to select a subset of files in the folderPath rather than all files. Type: string (or Expression with resultType string).
  /// [fileName] The name of the on-premises file system. Type: string (or Expression with resultType string).
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [folderPath] The path of the on-premises file system. Type: string (or Expression with resultType string).
  /// [format] The format of the files.
  /// [linkedServiceName] Linked service reference.
  /// [modifiedDatetimeEnd] The end of file's modified datetime. Type: string (or Expression with resultType string).
  /// [modifiedDatetimeStart] The start of file's modified datetime. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for dataset.
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  FileShareDatasetResponse({
    this.annotations,
    this.compression,
    this.description,
    this.fileFilter,
    this.fileName,
    this.folder,
    this.folderPath,
    this.format,
    required this.linkedServiceName,
    this.modifiedDatetimeEnd,
    this.modifiedDatetimeStart,
    this.parameters,
    this.schema,
    this.structure,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'compression':
          ?pulumi.Input.mapOptionalInputValue<
            DatasetCompressionResponse,
            Map<String, dynamic>
          >(compression, (value) => value.toMap()),
      'description': ?description,
      'fileFilter': ?fileFilter,
      'fileName': ?fileName,
      'folder':
          ?pulumi.Input.mapOptionalInputValue<
            DatasetResponseFolder,
            Map<String, dynamic>
          >(folder, (value) => value.toMap()),
      'folderPath': ?folderPath,
      'format':
          ?pulumi.Input.mapOptionalInputValue<
            AvroFormatResponse,
            Map<String, dynamic>
          >(format, (value) => value.toMap()),
      'linkedServiceName':
          pulumi.Input.mapInputValue<
            LinkedServiceReferenceResponse,
            Map<String, dynamic>
          >(linkedServiceName, (value) => value.toMap()),
      'modifiedDatetimeEnd': ?modifiedDatetimeEnd,
      'modifiedDatetimeStart': ?modifiedDatetimeStart,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecificationResponse>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecificationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory FileShareDatasetResponse.fromMap(Map<String, dynamic> map) {
    return FileShareDatasetResponse(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      compression: (() {
        final guardedValue = map['compression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatasetCompressionResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      fileFilter: (() {
        final guardedValue = map['fileFilter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      fileName: (() {
        final guardedValue = map['fileName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      folder: (() {
        final guardedValue = map['folder'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatasetResponseFolder.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      folderPath: (() {
        final guardedValue = map['folderPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      format: (() {
        final guardedValue = map['format'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AvroFormatResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      linkedServiceName: pulumi.Input.fromValue(
        LinkedServiceReferenceResponse.fromMap(
          (map['linkedServiceName']! as Map).cast<String, dynamic>(),
        ),
      ),
      modifiedDatetimeEnd: (() {
        final guardedValue = map['modifiedDatetimeEnd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      modifiedDatetimeStart: (() {
        final guardedValue = map['modifiedDatetimeStart'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(
            guardedValue,
            (value) => ParameterSpecificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      schema: (() {
        final guardedValue = map['schema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      structure: (() {
        final guardedValue = map['structure'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
