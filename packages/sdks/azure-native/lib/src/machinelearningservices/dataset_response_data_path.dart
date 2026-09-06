// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_response_sql_data_path.dart';

/// Datastore and reference to location of data such as relativePath, Sql Query and etc.
class DatasetResponseDataPath {
  /// Additional Properties.
  final pulumi.Input<Map<String, dynamic>?>? additionalProperties;
  /// Azure path for Azure Blob or File
  final pulumi.Input<String> azureFilePath;
  /// Data store Name
  final pulumi.Input<String> datastoreName;
  /// HTTP URL.
  final pulumi.Input<String> httpUrl;
  /// Specify the partition format of path. Defaults to None.
  final pulumi.Input<String> partitionFormat;
  /// Whether or not to ignore unmatched path.
  final pulumi.Input<bool> partitionFormatIgnoreError;
  /// List of files expanded from a file GLOB specified
  final pulumi.Input<List<String>> paths;
  /// Relative path in the data store
  final pulumi.Input<String> relativePath;
  /// Sql Query/Table/Stored Procedure details.
  final pulumi.Input<DatasetResponseSqlDataPath?>? sqlDataPath;

  /// Creates a new [DatasetResponseDataPath].
  /// [additionalProperties] Additional Properties.
  /// [azureFilePath] Azure path for Azure Blob or File
  /// [datastoreName] Data store Name
  /// [httpUrl] HTTP URL.
  /// [partitionFormat] Specify the partition format of path. Defaults to None.
  /// [partitionFormatIgnoreError] Whether or not to ignore unmatched path.
  /// [paths] List of files expanded from a file GLOB specified
  /// [relativePath] Relative path in the data store
  /// [sqlDataPath] Sql Query/Table/Stored Procedure details.
  const DatasetResponseDataPath({
    this.additionalProperties,
    required this.azureFilePath,
    required this.datastoreName,
    required this.httpUrl,
    required this.partitionFormat,
    required this.partitionFormatIgnoreError,
    required this.paths,
    required this.relativePath,
    this.sqlDataPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'azureFilePath': azureFilePath,
      'datastoreName': datastoreName,
      'httpUrl': httpUrl,
      'partitionFormat': partitionFormat,
      'partitionFormatIgnoreError': partitionFormatIgnoreError,
      'paths': paths,
      'relativePath': relativePath,
      'sqlDataPath': ?pulumi.Input.mapOptionalInputValue<DatasetResponseSqlDataPath, Map<String, dynamic>>(sqlDataPath, (value) => value.toMap()),
    };
  }

  factory DatasetResponseDataPath.fromMap(Map<String, dynamic> map) {
    return DatasetResponseDataPath(
      additionalProperties: (() { final guardedValue = map['additionalProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      azureFilePath: pulumi.Input.fromValue(map['azureFilePath'] as String),
      datastoreName: pulumi.Input.fromValue(map['datastoreName'] as String),
      httpUrl: pulumi.Input.fromValue(map['httpUrl'] as String),
      partitionFormat: pulumi.Input.fromValue(map['partitionFormat'] as String),
      partitionFormatIgnoreError: pulumi.Input.fromValue(map['partitionFormatIgnoreError'] as bool),
      paths: pulumi.Input.fromValue((map['paths'] as List).cast<String>()),
      relativePath: pulumi.Input.fromValue(map['relativePath'] as String),
      sqlDataPath: (() { final guardedValue = map['sqlDataPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetResponseSqlDataPath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
