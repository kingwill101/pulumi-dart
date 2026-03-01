// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'amazon_s3_compatible_location.dart';
import 'dataset_compression.dart';
import 'dataset_folder.dart';
import 'linked_service_reference.dart';
import 'parameter_specification.dart';

/// Excel dataset.
class ExcelDataset {
  /// List of tags that can be used for describing the Dataset.
  final List<dynamic>? annotations;
  /// The data compression method used for the json dataset.
  final DatasetCompression? compression;
  /// Dataset description.
  final String? description;
  /// When used as input, treat the first row of data as headers. When used as output,write the headers into the output as the first row of data. The default value is false. Type: boolean (or Expression with resultType boolean).
  final dynamic firstRowAsHeader;
  /// The folder that this Dataset is in. If not specified, Dataset will appear at the root level.
  final DatasetFolder? folder;
  /// Linked service reference.
  final LinkedServiceReference linkedServiceName;
  /// The location of the excel storage.
  final AmazonS3CompatibleLocation location;
  /// The null value string. Type: string (or Expression with resultType string).
  final dynamic nullValue;
  /// Parameters for dataset.
  final Map<String, ParameterSpecification>? parameters;
  /// The partial data of one sheet. Type: string (or Expression with resultType string).
  final dynamic range;
  /// Columns that define the physical type schema of the dataset. Type: array (or Expression with resultType array), itemType: DatasetSchemaDataElement.
  final dynamic schema;
  /// The sheet index of excel file and default value is 0. Type: integer (or Expression with resultType integer)
  final dynamic sheetIndex;
  /// The sheet name of excel file. Type: string (or Expression with resultType string).
  final dynamic sheetName;
  /// Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement.
  final dynamic structure;
  /// Type of dataset.
  /// Expected value is 'Excel'.
  final String type;

  /// Creates a new [ExcelDataset].
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
  ExcelDataset({
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
      'compression': ?compression == null ? null : compression!.toMap(),
      'description': ?description,
      'firstRowAsHeader': ?firstRowAsHeader,
      'folder': ?folder == null ? null : folder!.toMap(),
      'linkedServiceName': linkedServiceName.toMap(),
      'location': location.toMap(),
      'nullValue': ?nullValue,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'range': ?range,
      'schema': ?schema,
      'sheetIndex': ?sheetIndex,
      'sheetName': ?sheetName,
      'structure': ?structure,
      'type': type,
    };
  }

  factory ExcelDataset.fromMap(Map<String, dynamic> map) {
    return ExcelDataset(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      compression: map['compression'] == null ? null : DatasetCompression.fromMap((map['compression'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      firstRowAsHeader: map['firstRowAsHeader'] == null ? null : map['firstRowAsHeader'],
      folder: map['folder'] == null ? null : DatasetFolder.fromMap((map['folder'] as Map).cast<String, dynamic>()),
      linkedServiceName: LinkedServiceReference.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      location: AmazonS3CompatibleLocation.fromMap((map['location'] as Map).cast<String, dynamic>()),
      nullValue: map['nullValue'] == null ? null : map['nullValue'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      range: map['range'] == null ? null : map['range'],
      schema: map['schema'] == null ? null : map['schema'],
      sheetIndex: map['sheetIndex'] == null ? null : map['sheetIndex'],
      sheetName: map['sheetName'] == null ? null : map['sheetName'],
      structure: map['structure'] == null ? null : map['structure'],
      type: map['type'] as String,
    );
  }
}

