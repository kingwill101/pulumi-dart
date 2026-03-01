// ignore_for_file: unused_element, unnecessary_cast

import 'dataset_response_sql_data_path.dart';

/// Datastore and reference to location of data such as relativePath, Sql Query and etc.
class DatasetResponseDataPath {
  /// Additional Properties.
  final Map<String, dynamic>? additionalProperties;
  /// Azure path for Azure Blob or File
  final String azureFilePath;
  /// Data store Name
  final String datastoreName;
  /// HTTP URL.
  final String httpUrl;
  /// Specify the partition format of path. Defaults to None.
  final String partitionFormat;
  /// Whether or not to ignore unmatched path.
  final bool partitionFormatIgnoreError;
  /// List of files expanded from a file GLOB specified
  final List<String> paths;
  /// Relative path in the data store
  final String relativePath;
  /// Sql Query/Table/Stored Procedure details.
  final DatasetResponseSqlDataPath? sqlDataPath;

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
  DatasetResponseDataPath({
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
      'sqlDataPath': ?sqlDataPath == null ? null : sqlDataPath!.toMap(),
    };
  }

  factory DatasetResponseDataPath.fromMap(Map<String, dynamic> map) {
    return DatasetResponseDataPath(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties'] as Map).cast<String, dynamic>(),
      azureFilePath: map['azureFilePath'] as String,
      datastoreName: map['datastoreName'] as String,
      httpUrl: map['httpUrl'] as String,
      partitionFormat: map['partitionFormat'] as String,
      partitionFormatIgnoreError: map['partitionFormatIgnoreError'] as bool,
      paths: (map['paths'] as List).cast<String>(),
      relativePath: map['relativePath'] as String,
      sqlDataPath: map['sqlDataPath'] == null ? null : DatasetResponseSqlDataPath.fromMap((map['sqlDataPath'] as Map).cast<String, dynamic>()),
    );
  }
}

