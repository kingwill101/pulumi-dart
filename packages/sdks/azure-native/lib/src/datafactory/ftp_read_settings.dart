// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ftp read settings.
class FtpReadSettings {
  /// Indicates whether the source files need to be deleted after copy completion. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? deleteFilesAfterCompletion;
  /// If true, disable parallel reading within each file. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableChunking;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// Indicates whether to enable partition discovery. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enablePartitionDiscovery;
  /// Point to a text file that lists each file (relative path to the path configured in the dataset) that you want to copy. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileListPath;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// Specify the root path where partition discovery starts from. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionRootPath;
  /// If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? recursive;
  /// The read setting type.
  /// Expected value is 'FtpReadSettings'.
  final pulumi.Input<String> type;
  /// Specify whether to use binary transfer mode for FTP stores. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? useBinaryTransfer;
  /// Ftp wildcardFileName. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? wildcardFileName;
  /// Ftp wildcardFolderPath. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? wildcardFolderPath;

  /// Creates a new [FtpReadSettings].
  /// [deleteFilesAfterCompletion] Indicates whether the source files need to be deleted after copy completion. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [disableChunking] If true, disable parallel reading within each file. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [enablePartitionDiscovery] Indicates whether to enable partition discovery. Type: boolean (or Expression with resultType boolean).
  /// [fileListPath] Point to a text file that lists each file (relative path to the path configured in the dataset) that you want to copy. Type: string (or Expression with resultType string).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [partitionRootPath] Specify the root path where partition discovery starts from. Type: string (or Expression with resultType string).
  /// [recursive] If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  /// [type] The read setting type.
  /// [useBinaryTransfer] Specify whether to use binary transfer mode for FTP stores. Type: boolean (or Expression with resultType boolean).
  /// [wildcardFileName] Ftp wildcardFileName. Type: string (or Expression with resultType string).
  /// [wildcardFolderPath] Ftp wildcardFolderPath. Type: string (or Expression with resultType string).
  FtpReadSettings({
    this.deleteFilesAfterCompletion,
    this.disableChunking,
    this.disableMetricsCollection,
    this.enablePartitionDiscovery,
    this.fileListPath,
    this.maxConcurrentConnections,
    this.partitionRootPath,
    this.recursive,
    required this.type,
    this.useBinaryTransfer,
    this.wildcardFileName,
    this.wildcardFolderPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteFilesAfterCompletion': ?deleteFilesAfterCompletion,
      'disableChunking': ?disableChunking,
      'disableMetricsCollection': ?disableMetricsCollection,
      'enablePartitionDiscovery': ?enablePartitionDiscovery,
      'fileListPath': ?fileListPath,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'partitionRootPath': ?partitionRootPath,
      'recursive': ?recursive,
      'type': type,
      'useBinaryTransfer': ?useBinaryTransfer,
      'wildcardFileName': ?wildcardFileName,
      'wildcardFolderPath': ?wildcardFolderPath,
    };
  }

  factory FtpReadSettings.fromMap(Map<String, dynamic> map) {
    return FtpReadSettings(
      deleteFilesAfterCompletion: map['deleteFilesAfterCompletion'] == null ? null : (map['deleteFilesAfterCompletion']!).input(),
      disableChunking: map['disableChunking'] == null ? null : (map['disableChunking']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      enablePartitionDiscovery: map['enablePartitionDiscovery'] == null ? null : (map['enablePartitionDiscovery']!).input(),
      fileListPath: map['fileListPath'] == null ? null : (map['fileListPath']!).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      partitionRootPath: map['partitionRootPath'] == null ? null : (map['partitionRootPath']!).input(),
      recursive: map['recursive'] == null ? null : (map['recursive']!).input(),
      type: (map['type'] as String).input(),
      useBinaryTransfer: map['useBinaryTransfer'] == null ? null : (map['useBinaryTransfer']!).input(),
      wildcardFileName: map['wildcardFileName'] == null ? null : (map['wildcardFileName']!).input(),
      wildcardFolderPath: map['wildcardFolderPath'] == null ? null : (map['wildcardFolderPath']!).input(),
    );
  }
}

