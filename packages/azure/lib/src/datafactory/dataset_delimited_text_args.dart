// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_delimited_text_azure_blob_fs_location.dart';
import 'dataset_delimited_text_azure_blob_storage_location.dart';
import 'dataset_delimited_text_http_server_location.dart';
import 'dataset_delimited_text_schema_column.dart';

/// {@template pulumi_datafactory_dataset_delimited_text_dataset_delimited_text_args_doc}
/// The set of arguments for DatasetDelimitedText.
/// {@endtemplate}
/// {@macro pulumi_datafactory_dataset_delimited_text_dataset_delimited_text_args_doc}
class DatasetDelimitedTextArgs {
  /// A map of additional properties to associate with the Data Factory Dataset.
  ///
  /// The following supported locations for a Delimited Text Dataset (exactly one of them must be set):
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  final pulumi.Input<List<String>>? annotations;
  /// An `azure_blob_fs_location` block as defined below.
  final pulumi.Input<DatasetDelimitedTextAzureBlobFsLocation>? azureBlobFsLocation;
  /// An `azure_blob_storage_location` block as defined below.
  final pulumi.Input<DatasetDelimitedTextAzureBlobStorageLocation>? azureBlobStorageLocation;
  /// The column delimiter. Defaults to `,`.
  final pulumi.Input<String>? columnDelimiter;
  /// The compression codec used to read/write text files. Valid values are `None`, `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy` and `lz4`. Please note these values are case sensitive.
  final pulumi.Input<String>? compressionCodec;
  /// The compression ratio for the Data Factory Dataset. Valid values are `Fastest` or `Optimal`. Please note these values are case sensitive.
  final pulumi.Input<String>? compressionLevel;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Dataset.
  final pulumi.Input<String>? description;
  /// The encoding format for the file.
  final pulumi.Input<String>? encoding;
  /// The escape character. Defaults to `\`.
  final pulumi.Input<String>? escapeCharacter;
  /// When used as input, treat the first row of data as headers. When used as output, write the headers into the output as the first row of data. Defaults to `false`.
  final pulumi.Input<bool>? firstRowAsHeader;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// A `http_server_location` block as defined below.
  ///
  /// The following supported arguments are specific to Delimited Text Dataset:
  final pulumi.Input<DatasetDelimitedTextHttpServerLocation>? httpServerLocation;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// The null value string. Defaults to `""`.
  final pulumi.Input<String>? nullValue;
  /// A map of parameters to associate with the Data Factory Dataset.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The quote character. Defaults to `"`.
  final pulumi.Input<String>? quoteCharacter;
  /// The row delimiter. Defaults to any of the following values on read: `\r\n`, `\r`, `\n`, and `\n` or `\r\n` on write by mapping data flow and Copy activity respectively.
  final pulumi.Input<String>? rowDelimiter;
  /// A `schema_column` block as defined below.
  final pulumi.Input<List<DatasetDelimitedTextSchemaColumn>>? schemaColumns;

  /// Creates a new [DatasetDelimitedTextArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Dataset.
  /// [annotations] List of tags that can be used for describing the Data Factory Dataset.
  /// [azureBlobFsLocation] An `azure_blob_fs_location` block as defined below.
  /// [azureBlobStorageLocation] An `azure_blob_storage_location` block as defined below.
  /// [columnDelimiter] The column delimiter. Defaults to `,`.
  /// [compressionCodec] The compression codec used to read/write text files. Valid values are `None`, `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy` and `lz4`. Please note these values are case sensitive.
  /// [compressionLevel] The compression ratio for the Data Factory Dataset. Valid values are `Fastest` or `Optimal`. Please note these values are case sensitive.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset.
  /// [encoding] The encoding format for the file.
  /// [escapeCharacter] The escape character. Defaults to `\`.
  /// [firstRowAsHeader] When used as input, treat the first row of data as headers. When used as output, write the headers into the output as the first row of data. Defaults to `false`.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [httpServerLocation] A `http_server_location` block as defined below.
  /// [linkedServiceName] The Data Factory Linked Service name in which to associate the Dataset with.
  /// [name] Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [nullValue] The null value string. Defaults to `""`.
  /// [parameters] A map of parameters to associate with the Data Factory Dataset.
  /// [quoteCharacter] The quote character. Defaults to `"`.
  /// [rowDelimiter] The row delimiter. Defaults to any of the following values on read: `\r\n`, `\r`, `\n`, and `\n` or `\r\n` on write by mapping data flow and Copy activity respectively.
  /// [schemaColumns] A `schema_column` block as defined below.
  DatasetDelimitedTextArgs({
    Map<String, String>? additionalProperties,
    List<String>? annotations,
    DatasetDelimitedTextAzureBlobFsLocation? azureBlobFsLocation,
    DatasetDelimitedTextAzureBlobStorageLocation? azureBlobStorageLocation,
    String? columnDelimiter,
    String? compressionCodec,
    String? compressionLevel,
    required String dataFactoryId,
    String? description,
    String? encoding,
    String? escapeCharacter,
    bool? firstRowAsHeader,
    String? folder,
    DatasetDelimitedTextHttpServerLocation? httpServerLocation,
    required String linkedServiceName,
    String? name,
    String? nullValue,
    Map<String, String>? parameters,
    String? quoteCharacter,
    String? rowDelimiter,
    List<DatasetDelimitedTextSchemaColumn>? schemaColumns,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      azureBlobFsLocation = pulumi.Input.asOptionalInput<DatasetDelimitedTextAzureBlobFsLocation>(azureBlobFsLocation),
      azureBlobStorageLocation = pulumi.Input.asOptionalInput<DatasetDelimitedTextAzureBlobStorageLocation>(azureBlobStorageLocation),
      columnDelimiter = pulumi.Input.asOptionalInput<String>(columnDelimiter),
      compressionCodec = pulumi.Input.asOptionalInput<String>(compressionCodec),
      compressionLevel = pulumi.Input.asOptionalInput<String>(compressionLevel),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      encoding = pulumi.Input.asOptionalInput<String>(encoding),
      escapeCharacter = pulumi.Input.asOptionalInput<String>(escapeCharacter),
      firstRowAsHeader = pulumi.Input.asOptionalInput<bool>(firstRowAsHeader),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      httpServerLocation = pulumi.Input.asOptionalInput<DatasetDelimitedTextHttpServerLocation>(httpServerLocation),
      linkedServiceName = pulumi.Input.asInput<String>(linkedServiceName),
      name = pulumi.Input.asOptionalInput<String>(name),
      nullValue = pulumi.Input.asOptionalInput<String>(nullValue),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      quoteCharacter = pulumi.Input.asOptionalInput<String>(quoteCharacter),
      rowDelimiter = pulumi.Input.asOptionalInput<String>(rowDelimiter),
      schemaColumns = pulumi.Input.asOptionalInput<List<DatasetDelimitedTextSchemaColumn>>(schemaColumns);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'azureBlobFsLocation': ?pulumi.Input.mapOptionalInputValue<DatasetDelimitedTextAzureBlobFsLocation, Map<String, dynamic>>(azureBlobFsLocation, (value) => value.toMap()),
      'azureBlobStorageLocation': ?pulumi.Input.mapOptionalInputValue<DatasetDelimitedTextAzureBlobStorageLocation, Map<String, dynamic>>(azureBlobStorageLocation, (value) => value.toMap()),
      'columnDelimiter': ?columnDelimiter,
      'compressionCodec': ?compressionCodec,
      'compressionLevel': ?compressionLevel,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'encoding': ?encoding,
      'escapeCharacter': ?escapeCharacter,
      'firstRowAsHeader': ?firstRowAsHeader,
      'folder': ?folder,
      'httpServerLocation': ?pulumi.Input.mapOptionalInputValue<DatasetDelimitedTextHttpServerLocation, Map<String, dynamic>>(httpServerLocation, (value) => value.toMap()),
      'linkedServiceName': linkedServiceName,
      'name': ?name,
      'nullValue': ?nullValue,
      'parameters': ?parameters,
      'quoteCharacter': ?quoteCharacter,
      'rowDelimiter': ?rowDelimiter,
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetDelimitedTextSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetDelimitedTextSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatasetDelimitedTextArgs.fromMap(Map<String, dynamic> map) {
    return DatasetDelimitedTextArgs(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties'] as Map).cast<String, String>(),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<String>(),
      azureBlobFsLocation: map['azureBlobFsLocation'] == null ? null : DatasetDelimitedTextAzureBlobFsLocation.fromMap((map['azureBlobFsLocation'] as Map).cast<String, dynamic>()),
      azureBlobStorageLocation: map['azureBlobStorageLocation'] == null ? null : DatasetDelimitedTextAzureBlobStorageLocation.fromMap((map['azureBlobStorageLocation'] as Map).cast<String, dynamic>()),
      columnDelimiter: map['columnDelimiter'] == null ? null : map['columnDelimiter'] as String,
      compressionCodec: map['compressionCodec'] == null ? null : map['compressionCodec'] as String,
      compressionLevel: map['compressionLevel'] == null ? null : map['compressionLevel'] as String,
      dataFactoryId: map['dataFactoryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      encoding: map['encoding'] == null ? null : map['encoding'] as String,
      escapeCharacter: map['escapeCharacter'] == null ? null : map['escapeCharacter'] as String,
      firstRowAsHeader: map['firstRowAsHeader'] == null ? null : map['firstRowAsHeader'] as bool,
      folder: map['folder'] == null ? null : map['folder'] as String,
      httpServerLocation: map['httpServerLocation'] == null ? null : DatasetDelimitedTextHttpServerLocation.fromMap((map['httpServerLocation'] as Map).cast<String, dynamic>()),
      linkedServiceName: map['linkedServiceName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nullValue: map['nullValue'] == null ? null : map['nullValue'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      quoteCharacter: map['quoteCharacter'] == null ? null : map['quoteCharacter'] as String,
      rowDelimiter: map['rowDelimiter'] == null ? null : map['rowDelimiter'] as String,
      schemaColumns: map['schemaColumns'] == null ? null : pulumi.Input.decodeList<DatasetDelimitedTextSchemaColumn>(map['schemaColumns'], (value) => DatasetDelimitedTextSchemaColumn.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

