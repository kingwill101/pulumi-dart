// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ftp read settings.
class FtpReadSettingsResponse {
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

  /// Creates a new [FtpReadSettingsResponse].
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
  const FtpReadSettingsResponse({
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

  factory FtpReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return FtpReadSettingsResponse(
      deleteFilesAfterCompletion: (() { final guardedValue = map['deleteFilesAfterCompletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      disableChunking: (() { final guardedValue = map['disableChunking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      disableMetricsCollection: (() { final guardedValue = map['disableMetricsCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      enablePartitionDiscovery: (() { final guardedValue = map['enablePartitionDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      fileListPath: (() { final guardedValue = map['fileListPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      maxConcurrentConnections: (() { final guardedValue = map['maxConcurrentConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      partitionRootPath: (() { final guardedValue = map['partitionRootPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      recursive: (() { final guardedValue = map['recursive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useBinaryTransfer: (() { final guardedValue = map['useBinaryTransfer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      wildcardFileName: (() { final guardedValue = map['wildcardFileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      wildcardFolderPath: (() { final guardedValue = map['wildcardFolderPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
