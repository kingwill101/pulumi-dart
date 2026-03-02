// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_format_response.dart';
import 'dataset_compression_response.dart';
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// The Azure Blob storage.
class AzureBlobDatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The data compression method used for the blob storage.
  final pulumi.Input<DatasetCompressionResponse>? compression;
  /// Dataset description.
  final pulumi.Input<String>? description;
  /// The name of the Azure Blob. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileName;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetResponseFolder>? folder;
  /// The path of the Azure Blob storage. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? folderPath;
  /// The format of the Azure Blob storage.
  final pulumi.Input<AvroFormatResponse>? format;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;
  /// The end of Azure Blob's modified datetime. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? modifiedDatetimeEnd;
  /// The start of Azure Blob's modified datetime. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? modifiedDatetimeStart;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;
  /// The root of blob path. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tableRootLocation;
  /// Type of dataset.
  /// Expected value is 'AzureBlob'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureBlobDatasetResponse].
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
  AzureBlobDatasetResponse({
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
      'compression': ?pulumi.Input.mapOptionalInputValue<DatasetCompressionResponse, Map<String, dynamic>>(compression, (value) => value.toMap()),
      'description': ?description,
      'fileName': ?fileName,
      'folder': ?pulumi.Input.mapOptionalInputValue<DatasetResponseFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'folderPath': ?folderPath,
      'format': ?pulumi.Input.mapOptionalInputValue<AvroFormatResponse, Map<String, dynamic>>(format, (value) => value.toMap()),
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'modifiedDatetimeEnd': ?modifiedDatetimeEnd,
      'modifiedDatetimeStart': ?modifiedDatetimeStart,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'schema': ?schema,
      'structure': ?structure,
      'tableRootLocation': ?tableRootLocation,
      'type': type,
    };
  }

  factory AzureBlobDatasetResponse.fromMap(Map<String, dynamic> map) {
    return AzureBlobDatasetResponse(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      compression: map['compression'] == null ? null : (DatasetCompressionResponse.fromMap((map['compression']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      fileName: map['fileName'] == null ? null : (map['fileName']!).input(),
      folder: map['folder'] == null ? null : (DatasetResponseFolder.fromMap((map['folder']! as Map).cast<String, dynamic>())).input(),
      folderPath: map['folderPath'] == null ? null : (map['folderPath']!).input(),
      format: map['format'] == null ? null : (AvroFormatResponse.fromMap((map['format']! as Map).cast<String, dynamic>())).input(),
      linkedServiceName: (LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>())).input(),
      modifiedDatetimeEnd: map['modifiedDatetimeEnd'] == null ? null : (map['modifiedDatetimeEnd']!).input(),
      modifiedDatetimeStart: map['modifiedDatetimeStart'] == null ? null : (map['modifiedDatetimeStart']!).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      schema: map['schema'] == null ? null : (map['schema']!).input(),
      structure: map['structure'] == null ? null : (map['structure']!).input(),
      tableRootLocation: map['tableRootLocation'] == null ? null : (map['tableRootLocation']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

