// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_format.dart';
import 'dataset_compression.dart';
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// The Azure Blob storage.
class AzureBlobDataset {
  /// List of tags that can be used for describing the Dataset.
  final List<dynamic>? annotations;
  /// The data compression method used for the blob storage.
  final DatasetCompression? compression;
  /// Dataset description.
  final String? description;
  /// The name of the Azure Blob. Type: string (or Expression with resultType string).
  final dynamic fileName;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetFolder? folder;
  /// The path of the Azure Blob storage. Type: string (or Expression with resultType string).
  final dynamic folderPath;
  /// The format of the Azure Blob storage.
  final AvroFormat? format;
  /// Linked service reference.
  final LinkedServiceReference linkedServiceName;
  /// The end of Azure Blob's modified datetime. Type: string (or Expression with resultType string).
  final dynamic modifiedDatetimeEnd;
  /// The start of Azure Blob's modified datetime. Type: string (or Expression with resultType string).
  final dynamic modifiedDatetimeStart;
  /// Parameters for dataset.
  final Map<String, ParameterSpecification>? parameters;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// The root of blob path. Type: string (or Expression with resultType string).
  final dynamic tableRootLocation;
  /// Type of dataset.
  /// Expected value is 'AzureBlob'.
  final String type;

  /// Creates a new [AzureBlobDataset].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [compression] The data compression method used for the blob storage.
  /// [description] Dataset description.
  /// [fileName] The name of the Azure Blob. Type: string (or Expression with resultType string).
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [folderPath] The path of the Azure Blob storage. Type: string (or Expression with resultType string).
  /// [format] The format of the Azure Blob storage.
  /// [linkedServiceName] Linked service reference.
  /// [modifiedDatetimeEnd] The end of Azure Blob's modified datetime. Type: string (or Expression with resultType string).
  /// [modifiedDatetimeStart] The start of Azure Blob's modified datetime. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for dataset.
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [tableRootLocation] The root of blob path. Type: string (or Expression with resultType string).
  /// [type] Type of dataset.
  AzureBlobDataset({
    this.annotations,
    this.compression,
    this.description,
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
    this.tableRootLocation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'compression': ?compression == null ? null : compression!.toMap(),
      'description': ?description,
      'fileName': ?fileName,
      'folder': ?folder == null ? null : folder!.toMap(),
      'folderPath': ?folderPath,
      'format': ?format == null ? null : format!.toMap(),
      'linkedServiceName': linkedServiceName.toMap(),
      'modifiedDatetimeEnd': ?modifiedDatetimeEnd,
      'modifiedDatetimeStart': ?modifiedDatetimeStart,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'schema': ?schema,
      'structure': ?structure,
      'tableRootLocation': ?tableRootLocation,
      'type': type,
    };
  }

  factory AzureBlobDataset.fromMap(Map<String, dynamic> map) {
    return AzureBlobDataset(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      compression: map['compression'] == null ? null : DatasetCompression.fromMap((map['compression'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      fileName: map['fileName'] == null ? null : map['fileName'],
      folder: map['folder'] == null ? null : DatasetFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      folderPath: map['folderPath'] == null ? null : map['folderPath'],
      format: map['format'] == null ? null : AvroFormat.fromMap((map['format'] as Map).cast<String, dynamic>()),
      linkedServiceName: LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      modifiedDatetimeEnd: map['modifiedDatetimeEnd'] == null ? null : map['modifiedDatetimeEnd'],
      modifiedDatetimeStart: map['modifiedDatetimeStart'] == null ? null : map['modifiedDatetimeStart'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] == null ? null : map['schema'],
      structure: map['structure'] == null ? null : map['structure'],
      tableRootLocation: map['tableRootLocation'] == null ? null : map['tableRootLocation'],
      type: map['type'] as String,
    );
  }
}

