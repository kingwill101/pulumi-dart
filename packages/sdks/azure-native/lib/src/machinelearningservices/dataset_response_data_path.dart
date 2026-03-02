// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_response_sql_data_path.dart';

/// Datastore and reference to location of data such as relativePath, Sql Query and etc.
class DatasetResponseDataPath {
  /// Additional Properties.
  final pulumi.Input<Map<String, dynamic>>? additionalProperties;
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
  final pulumi.Input<DatasetResponseSqlDataPath>? sqlDataPath;

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
      'sqlDataPath': ?pulumi.Input.mapOptionalInputValue<DatasetResponseSqlDataPath, Map<String, dynamic>>(sqlDataPath, (value) => value.toMap()),
    };
  }

  factory DatasetResponseDataPath.fromMap(Map<String, dynamic> map) {
    return DatasetResponseDataPath(
      additionalProperties: map['additionalProperties'] == null ? null : ((map['additionalProperties']! as Map).cast<String, dynamic>()).input(),
      azureFilePath: (map['azureFilePath'] as String).input(),
      datastoreName: (map['datastoreName'] as String).input(),
      httpUrl: (map['httpUrl'] as String).input(),
      partitionFormat: (map['partitionFormat'] as String).input(),
      partitionFormatIgnoreError: (map['partitionFormatIgnoreError'] as bool).input(),
      paths: ((map['paths'] as List).cast<String>()).input(),
      relativePath: (map['relativePath'] as String).input(),
      sqlDataPath: map['sqlDataPath'] == null ? null : (DatasetResponseSqlDataPath.fromMap((map['sqlDataPath']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

