// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_s3_compatible_location_response.dart';
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// Delimited text dataset.
class DelimitedTextDatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The column delimiter. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? columnDelimiter;
  /// The data compressionCodec. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? compressionCodec;
  /// The data compression method used for DelimitedText.
  final pulumi.Input<dynamic>? compressionLevel;
  /// Dataset description.
  final pulumi.Input<String>? description;
  /// The code page name of the preferred encoding. If miss, the default value is UTF-8, unless BOM denotes another Unicode encoding. Refer to the name column of the table in the following link to set supported values: https://msdn.microsoft.com/library/system.text.encoding.aspx. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? encodingName;
  /// The escape character. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? escapeChar;
  /// When used as input, treat the first row of data as headers. When used as output,write the headers into the output as the first row of data. The default value is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? firstRowAsHeader;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetResponseFolder>? folder;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;
  /// The location of the delimited text storage.
  final pulumi.Input<AmazonS3CompatibleLocationResponse> location;
  /// The null value string. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? nullValue;
  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The quote character. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? quoteChar;
  /// The row delimiter. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? rowDelimiter;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;
  /// Type of dataset.
  /// Expected value is 'DelimitedText'.
  final pulumi.Input<String> type;

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
      'folder': ?pulumi.Input.mapOptionalInputValue<DatasetResponseFolder, Map<String, dynamic>>(folder, (value) => value.toMap()),
      'linkedServiceName': pulumi.Input.mapInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'location': pulumi.Input.mapInputValue<AmazonS3CompatibleLocationResponse, Map<String, dynamic>>(location, (value) => value.toMap()),
      'nullValue': ?nullValue,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quoteChar': ?quoteChar,
      'rowDelimiter': ?rowDelimiter,
      'schema': ?schema,
      'structure': ?structure,
      'type': type,
    };
  }

  factory DelimitedTextDatasetResponse.fromMap(Map<String, dynamic> map) {
    return DelimitedTextDatasetResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      columnDelimiter: (() { final guardedValue = map['columnDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      compressionCodec: (() { final guardedValue = map['compressionCodec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      compressionLevel: (() { final guardedValue = map['compressionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encodingName: (() { final guardedValue = map['encodingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      escapeChar: (() { final guardedValue = map['escapeChar']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      firstRowAsHeader: (() { final guardedValue = map['firstRowAsHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetResponseFolder.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedServiceName: pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((map['linkedServiceName']! as Map).cast<String, dynamic>())),
      location: pulumi.Input.fromValue(AmazonS3CompatibleLocationResponse.fromMap((map['location']! as Map).cast<String, dynamic>())),
      nullValue: (() { final guardedValue = map['nullValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quoteChar: (() { final guardedValue = map['quoteChar']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      rowDelimiter: (() { final guardedValue = map['rowDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      structure: (() { final guardedValue = map['structure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

