// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_s3_compatible_location_response.dart';
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// Delimited text dataset.
class DelimitedTextDatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final List<dynamic>? annotations;
  /// The column delimiter. Type: string (or Expression with resultType string).
  final dynamic columnDelimiter;
  /// The data compressionCodec. Type: string (or Expression with resultType string).
  final dynamic compressionCodec;
  /// The data compression method used for DelimitedText.
  final dynamic compressionLevel;
  /// Dataset description.
  final String? description;
  /// The code page name of the preferred encoding. If miss, the default value is UTF-8, unless BOM denotes another Unicode encoding. Refer to the name column of the table in the following link to set supported values: https://msdn.microsoft.com/library/system.text.encoding.aspx. Type: string (or Expression with resultType string).
  final dynamic encodingName;
  /// The escape character. Type: string (or Expression with resultType string).
  final dynamic escapeChar;
  /// When used as input, treat the first row of data as headers. When used as output,write the headers into the output as the first row of data. The default value is false. Type: boolean (or Expression with resultType boolean).
  final dynamic firstRowAsHeader;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetResponseFolder? folder;
  /// Linked service reference.
  final LinkedServiceReferenceResponse linkedServiceName;
  /// The location of the delimited text storage.
  final AmazonS3CompatibleLocationResponse location;
  /// The null value string. Type: string (or Expression with resultType string).
  final dynamic nullValue;
  /// Parameters for dataset.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The quote character. Type: string (or Expression with resultType string).
  final dynamic quoteChar;
  /// The row delimiter. Type: string (or Expression with resultType string).
  final dynamic rowDelimiter;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// Type of dataset.
  /// Expected value is 'DelimitedText'.
  final String type;

  /// Creates a new [DelimitedTextDatasetResponse].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [columnDelimiter] The column delimiter. Type: string (or Expression with resultType string).
  /// [compressionCodec] The data compressionCodec. Type: string (or Expression with resultType string).
  /// [compressionLevel] The data compression method used for DelimitedText.
  /// [description] Dataset description.
  /// [encodingName] The code page name of the preferred encoding. If miss, the default value is UTF-8, unless BOM denotes another Unicode encoding. Refer to the name column of the table in the following link to set supported values: https://msdn.microsoft.com/library/system.text.encoding.aspx. Type: string (or Expression with resultType string).
  /// [escapeChar] The escape character. Type: string (or Expression with resultType string).
  /// [firstRowAsHeader] When used as input, treat the first row of data as headers. When used as output,write the headers into the output as the first row of data. The default value is false. Type: boolean (or Expression with resultType boolean).
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [location] The location of the delimited text storage.
  /// [nullValue] The null value string. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for dataset.
  /// [quoteChar] The quote character. Type: string (or Expression with resultType string).
  /// [rowDelimiter] The row delimiter. Type: string (or Expression with resultType string).
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  DelimitedTextDatasetResponse({
    this.annotations,
    this.columnDelimiter,
    this.compressionCodec,
    this.compressionLevel,
    this.description,
    this.encodingName,
    this.escapeChar,
    this.firstRowAsHeader,
    this.folder,
    required this.linkedServiceName,
    required this.location,
    this.nullValue,
    this.parameters,
    this.quoteChar,
    this.rowDelimiter,
    this.schema,
    this.structure,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'columnDelimiter': ?columnDelimiter,
      'compressionCodec': ?compressionCodec,
      'compressionLevel': ?compressionLevel,
      'description': ?description,
      'encodingName': ?encodingName,
      'escapeChar': ?escapeChar,
      'firstRowAsHeader': ?firstRowAsHeader,
      'folder': ?folder == null ? null : folder!.toMap(),
      'linkedServiceName': linkedServiceName.toMap(),
      'location': location.toMap(),
      'nullValue': ?nullValue,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'quoteChar': ?quoteChar,
      'rowDelimiter': ?rowDelimiter,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory DelimitedTextDatasetResponse.fromMap(Map<String, dynamic> map) {
    return DelimitedTextDatasetResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      columnDelimiter: map['columnDelimiter'] == null ? null : map['columnDelimiter'],
      compressionCodec: map['compressionCodec'] == null ? null : map['compressionCodec'],
      compressionLevel: map['compressionLevel'] == null ? null : map['compressionLevel'],
      description: map['description'] == null ? null : map['description'] as String,
      encodingName: map['encodingName'] == null ? null : map['encodingName'],
      escapeChar: map['escapeChar'] == null ? null : map['escapeChar'],
      firstRowAsHeader: map['firstRowAsHeader'] == null ? null : map['firstRowAsHeader'],
      folder: map['folder'] == null ? null : DatasetResponseFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      linkedServiceName: LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      location: AmazonS3CompatibleLocationResponse.fromMap((map['location'] as Map).cast<String, dynamic>()),
      nullValue: map['nullValue'] == null ? null : map['nullValue'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      quoteChar: map['quoteChar'] == null ? null : map['quoteChar'],
      rowDelimiter: map['rowDelimiter'] == null ? null : map['rowDelimiter'],
      schema: map['schema'] == null ? null : map['schema'],
      structure: map['structure'] == null ? null : map['structure'],
      type: map['type'] as String,
    );
  }
}

