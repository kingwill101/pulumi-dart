// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'avro_format_response.dart';
import 'dataset_compression_response.dart';
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// Azure Data Lake Store dataset.
class AzureDataLakeStoreDatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final List<dynamic>? annotations;
  /// The data compression method used for the item(s) in the Azure Data Lake Store.
  final DatasetCompressionResponse? compression;
  /// Dataset description.
  final String? description;
  /// The name of the file in the Azure Data Lake Store. Type: string (or Expression with resultType string).
  final dynamic fileName;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetResponseFolder? folder;
  /// Path to the folder in the Azure Data Lake Store. Type: string (or Expression with resultType string).
  final dynamic folderPath;
  /// The format of the Data Lake Store.
  final AvroFormatResponse? format;
  /// Linked service reference.
  final LinkedServiceReferenceResponse linkedServiceName;
  /// Parameters for dataset.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// Type of dataset.
  /// Expected value is 'AzureDataLakeStoreFile'.
  final String type;

  /// Creates a new [AzureDataLakeStoreDatasetResponse].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [compression] The data compression method used for the item(s) in the Azure Data Lake Store.
  /// [description] Dataset description.
  /// [fileName] The name of the file in the Azure Data Lake Store. Type: string (or Expression with resultType string).
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [folderPath] Path to the folder in the Azure Data Lake Store. Type: string (or Expression with resultType string).
  /// [format] The format of the Data Lake Store.
  /// [linkedServiceName] Linked service reference.
  /// [parameters] Parameters for dataset.
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  AzureDataLakeStoreDatasetResponse({
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
      'compression': ?compression == null ? null : compression!.toMap(),
      'description': ?description,
      'fileName': ?fileName,
      'folder': ?folder == null ? null : folder!.toMap(),
      'folderPath': ?folderPath,
      'format': ?format == null ? null : format!.toMap(),
      'linkedServiceName': linkedServiceName.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory AzureDataLakeStoreDatasetResponse.fromMap(Map<String, dynamic> map) {
    return AzureDataLakeStoreDatasetResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      compression: map['compression'] == null ? null : DatasetCompressionResponse.fromMap((map['compression'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      fileName: map['fileName'] == null ? null : map['fileName'],
      folder: map['folder'] == null ? null : DatasetResponseFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      folderPath: map['folderPath'] == null ? null : map['folderPath'],
      format: map['format'] == null ? null : AvroFormatResponse.fromMap((map['format'] as Map).cast<String, dynamic>()),
      linkedServiceName: LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      schema: map['schema'] == null ? null : map['schema'],
      structure: map['structure'] == null ? null : map['structure'],
      type: map['type'] as String,
    );
  }
}

