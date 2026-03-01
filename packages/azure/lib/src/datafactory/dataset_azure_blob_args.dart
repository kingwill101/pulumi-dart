// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_azure_blob_schema_column.dart';

/// {@template pulumi_datafactory_dataset_azure_blob_dataset_azure_blob_args_doc}
/// The set of arguments for DatasetAzureBlob.
/// {@endtemplate}
/// {@macro pulumi_datafactory_dataset_azure_blob_dataset_azure_blob_args_doc}
class DatasetAzureBlobArgs {
  /// A map of additional properties to associate with the Data Factory Dataset.
  ///
  /// The following supported arguments are specific to Azure Blob Dataset:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  final pulumi.Input<List<String>>? annotations;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Dataset.
  final pulumi.Input<String>? description;
  /// Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicFilenameEnabled;
  /// Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  final pulumi.Input<bool>? dynamicPathEnabled;
  /// The filename of the Azure Blob.
  final pulumi.Input<String>? filename;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  final pulumi.Input<String>? folder;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  final pulumi.Input<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Dataset.
  final pulumi.Input<Map<String, String>>? parameters;
  /// The path of the Azure Blob.
  final pulumi.Input<String>? path;
  /// A `schema_column` block as defined below.
  final pulumi.Input<List<DatasetAzureBlobSchemaColumn>>? schemaColumns;

  /// Creates a new [DatasetAzureBlobArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Dataset.
  /// [annotations] List of tags that can be used for describing the Data Factory Dataset.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Dataset.
  /// [dynamicFilenameEnabled] Is the `filename` using dynamic expression, function or system variables? Defaults to `false`.
  /// [dynamicPathEnabled] Is the `path` using dynamic expression, function or system variables? Defaults to `false`.
  /// [filename] The filename of the Azure Blob.
  /// [folder] The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  /// [linkedServiceName] The Data Factory Linked Service name in which to associate the Dataset with.
  /// [name] Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Dataset.
  /// [path] The path of the Azure Blob.
  /// [schemaColumns] A `schema_column` block as defined below.
  DatasetAzureBlobArgs({
    Map<String, String>? additionalProperties,
    List<String>? annotations,
    required String dataFactoryId,
    String? description,
    bool? dynamicFilenameEnabled,
    bool? dynamicPathEnabled,
    String? filename,
    String? folder,
    required String linkedServiceName,
    String? name,
    Map<String, String>? parameters,
    String? path,
    List<DatasetAzureBlobSchemaColumn>? schemaColumns,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      dynamicFilenameEnabled = pulumi.Input.asOptionalInput<bool>(dynamicFilenameEnabled),
      dynamicPathEnabled = pulumi.Input.asOptionalInput<bool>(dynamicPathEnabled),
      filename = pulumi.Input.asOptionalInput<String>(filename),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      linkedServiceName = pulumi.Input.asInput<String>(linkedServiceName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      path = pulumi.Input.asOptionalInput<String>(path),
      schemaColumns = pulumi.Input.asOptionalInput<List<DatasetAzureBlobSchemaColumn>>(schemaColumns);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'dynamicFilenameEnabled': ?dynamicFilenameEnabled,
      'dynamicPathEnabled': ?dynamicPathEnabled,
      'filename': ?filename,
      'folder': ?folder,
      'linkedServiceName': linkedServiceName,
      'name': ?name,
      'parameters': ?parameters,
      'path': ?path,
      'schemaColumns': ?pulumi.Input.mapOptionalInputValue<List<DatasetAzureBlobSchemaColumn>, List<Map<String, dynamic>>>(schemaColumns, (value) => pulumi.Input.encodeList<DatasetAzureBlobSchemaColumn, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DatasetAzureBlobArgs.fromMap(Map<String, dynamic> map) {
    return DatasetAzureBlobArgs(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties'] as Map).cast<String, String>(),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<String>(),
      dataFactoryId: map['dataFactoryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      dynamicFilenameEnabled: map['dynamicFilenameEnabled'] == null ? null : map['dynamicFilenameEnabled'] as bool,
      dynamicPathEnabled: map['dynamicPathEnabled'] == null ? null : map['dynamicPathEnabled'] as bool,
      filename: map['filename'] == null ? null : map['filename'] as String,
      folder: map['folder'] == null ? null : map['folder'] as String,
      linkedServiceName: map['linkedServiceName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      path: map['path'] == null ? null : map['path'] as String,
      schemaColumns: map['schemaColumns'] == null ? null : pulumi.Input.decodeList<DatasetAzureBlobSchemaColumn>(map['schemaColumns'], (value) => DatasetAzureBlobSchemaColumn.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

