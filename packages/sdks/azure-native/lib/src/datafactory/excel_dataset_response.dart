// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_s3_compatible_location_response.dart';
import 'dataset_compression_response.dart';
import 'dataset_response_folder.dart';
import 'linked_service_reference_response.dart';
import 'parameter_specification_response.dart';

/// Excel dataset.
class ExcelDatasetResponse {
  /// List of tags that can be used for describing the Dataset.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The data compression method used for the json dataset.
  final pulumi.Input<DatasetCompressionResponse>? compression;

  /// Dataset description.
  final pulumi.Input<String>? description;

  /// When used as input, treat the first row of data as headers. When used as output,write the headers into the output as the first row of data. The default value is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? firstRowAsHeader;

  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final pulumi.Input<DatasetResponseFolder>? folder;

  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse> linkedServiceName;

  /// The location of the excel storage.
  final pulumi.Input<AmazonS3CompatibleLocationResponse> location;

  /// The null value string. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? nullValue;

  /// Parameters for dataset.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;

  /// The partial data of one sheet. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? range;

  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final pulumi.Input<dynamic>? schema;

  /// The sheet index of excel file and default value is 0. Type: integer (or Expression with resultType integer)
  final pulumi.Input<dynamic>? sheetIndex;

  /// The sheet name of excel file. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? sheetName;

  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final pulumi.Input<dynamic>? structure;

  /// Type of dataset.
  /// Expected value is 'Excel'.
  final pulumi.Input<String> type;

  /// Creates a new [ExcelDatasetResponse].
  /// [annotations] List of tags that can be used for describing the Dataset.
  /// [compression] The data compression method used for the json dataset.
  /// [description] Dataset description.
  /// [firstRowAsHeader] When used as input, treat the first row of data as headers. When used as output,write the headers into the output as the first row of data. The default value is false. Type: boolean (or Expression with resultType boolean).
  /// [folder] The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  /// [linkedServiceName] Linked service reference.
  /// [location] The location of the excel storage.
  /// [nullValue] The null value string. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for dataset.
  /// [range] The partial data of one sheet. Type: string (or Expression with resultType string).
  /// [schema] Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  /// [sheetIndex] The sheet index of excel file and default value is 0. Type: integer (or Expression with resultType integer)
  /// [sheetName] The sheet name of excel file. Type: string (or Expression with resultType string).
  /// [structure] Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  /// [type] Type of dataset.
  ExcelDatasetResponse({
    this.annotations,
    this.compression,
    this.description,
    this.firstRowAsHeader,
    this.folder,
    required this.linkedServiceName,
    required this.location,
    this.nullValue,
    this.parameters,
    this.range,
    this.schema,
    this.sheetIndex,
    this.sheetName,
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
      'firstRowAsHeader': ?firstRowAsHeader,
      'folder':
          ?pulumi.Input.mapOptionalInputValue<
            DatasetResponseFolder,
            Map<String, dynamic>
          >(folder, (value) => value.toMap()),
      'linkedServiceName':
          pulumi.Input.mapInputValue<
            LinkedServiceReferenceResponse,
            Map<String, dynamic>
          >(linkedServiceName, (value) => value.toMap()),
      'location':
          pulumi.Input.mapInputValue<
            AmazonS3CompatibleLocationResponse,
            Map<String, dynamic>
          >(location, (value) => value.toMap()),
      'nullValue': ?nullValue,
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
      'range': ?range,
      'schema': ?schema,
      'sheetIndex': ?sheetIndex,
      'sheetName': ?sheetName,
      'structure': ?structure,
      'type': type,
    };
  }

  factory ExcelDatasetResponse.fromMap(Map<String, dynamic> map) {
    return ExcelDatasetResponse(
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
      firstRowAsHeader: (() {
        final guardedValue = map['firstRowAsHeader'];
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
      linkedServiceName: pulumi.Input.fromValue(
        LinkedServiceReferenceResponse.fromMap(
          (map['linkedServiceName']! as Map).cast<String, dynamic>(),
        ),
      ),
      location: pulumi.Input.fromValue(
        AmazonS3CompatibleLocationResponse.fromMap(
          (map['location']! as Map).cast<String, dynamic>(),
        ),
      ),
      nullValue: (() {
        final guardedValue = map['nullValue'];
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
      range: (() {
        final guardedValue = map['range'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      schema: (() {
        final guardedValue = map['schema'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sheetIndex: (() {
        final guardedValue = map['sheetIndex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sheetName: (() {
        final guardedValue = map['sheetName'];
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
