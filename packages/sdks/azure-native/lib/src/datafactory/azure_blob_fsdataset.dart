// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_format.dart';
import 'dataset_compression.dart';
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// The Azure Data Lake Storage Gen2 storage.
class AzureBlobFSDataset {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The data compression method used for the blob storage.
  final pulumi.Input<DatasetCompression>? compression;

  /// Dataset description.
  final pulumi.Input<String>? description;

  /// The name of the Azure Data Lake Storage Gen2. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileName;

  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetFolder>? folder;

  /// The path of the Azure Data Lake Storage Gen2 storage. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? folderPath;

  /// The format of the Azure Data Lake Storage Gen2 storage.
  final pulumi.Input<AvroFormat>? format;

  /// Linked service reference.
  final pulumi.Input<LinkedServiceReference> linkedServiceName;

  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;

  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;

  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;

  /// Type of dataset.
  /// Expected value is 'AzureBlobFSFile'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureBlobFSDataset].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [compression] The data compression method used for the blob storage.
  /// [description] Dataset description.
  /// [fileName] The name of the Azure Data Lake Storage Gen2. Type: string (or Expression with resultType string).
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [folderPath] The path of the Azure Data Lake Storage Gen2 storage. Type: string (or Expression with resultType string).
  /// [format] The format of the Azure Data Lake Storage Gen2 storage.
  /// [linkedServiceName] Linked service reference.
  /// [parameters] Parameters for dataset.
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  AzureBlobFSDataset({
    this.annotations,
    this.compression,
    this.description,
    this.fileName,
    this.folder,
    this.folderPath,
    this.format,
    required this.linkedServiceName,
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
            DatasetCompression,
            Map<String, dynamic>
          >(compression, (value) => value.toMap()),
      'description': ?description,
      'fileName': ?fileName,
      'folder':
          ?pulumi.Input.mapOptionalInputValue<
            DatasetFolder,
            Map<String, dynamic>
          >(folder, (value) => value.toMap()),
      'folderPath': ?folderPath,
      'format':
          ?pulumi.Input.mapOptionalInputValue<AvroFormat, Map<String, dynamic>>(
            format,
            (value) => value.toMap(),
          ),
      'linkedServiceName':
          pulumi.Input.mapInputValue<
            LinkedServiceReference,
            Map<String, dynamic>
          >(linkedServiceName, (value) => value.toMap()),
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecification>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory AzureBlobFSDataset.fromMap(Map<String, dynamic> map) {
    return AzureBlobFSDataset(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      compression: (() {
        final guardedValue = map['compression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DatasetCompression.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
          DatasetFolder.fromMap((guardedValue as Map).cast<String, dynamic>()),
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
          AvroFormat.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      linkedServiceName: pulumi.Input.fromValue(
        LinkedServiceReference.fromMap(
          (map['linkedServiceName']! as Map).cast<String, dynamic>(),
        ),
      ),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecification>(
            guardedValue,
            (value) => ParameterSpecification.fromMap(
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
