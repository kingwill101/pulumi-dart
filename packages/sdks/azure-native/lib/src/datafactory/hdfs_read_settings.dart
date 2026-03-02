// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distcp_settings.dart';

/// HDFS read settings.
class HdfsReadSettings {
  /// Indicates whether the source files need to be deleted after copy completion. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? deleteFilesAfterCompletion;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? disableMetricsCollection;
  /// Specifies Distcp-related settings.
  final pulumi.Input<DistcpSettings>? distcpSettings;
  /// Indicates whether to enable partition discovery. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enablePartitionDiscovery;
  /// Point to a text file that lists each file (relative path to the path configured in the dataset) that you want to copy. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileListPath;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxConcurrentConnections;
  /// The end of file's modified datetime. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? modifiedDatetimeEnd;
  /// The start of file's modified datetime. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? modifiedDatetimeStart;
  /// Specify the root path where partition discovery starts from. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? partitionRootPath;
  /// If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? recursive;
  /// The read setting type.
  /// Expected value is 'HdfsReadSettings'.
  final pulumi.Input<String> type;
  /// HDFS wildcardFileName. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? wildcardFileName;
  /// HDFS wildcardFolderPath. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? wildcardFolderPath;

  /// Creates a new [HdfsReadSettings].
  /// [deleteFilesAfterCompletion] Indicates whether the source files need to be deleted after copy completion. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [distcpSettings] Specifies Distcp-related settings.
  /// [enablePartitionDiscovery] Indicates whether to enable partition discovery. Type: boolean (or Expression with resultType boolean).
  /// [fileListPath] Point to a text file that lists each file (relative path to the path configured in the dataset) that you want to copy. Type: string (or Expression with resultType string).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [modifiedDatetimeEnd] The end of file's modified datetime. Type: string (or Expression with resultType string).
  /// [modifiedDatetimeStart] The start of file's modified datetime. Type: string (or Expression with resultType string).
  /// [partitionRootPath] Specify the root path where partition discovery starts from. Type: string (or Expression with resultType string).
  /// [recursive] If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  /// [type] The read setting type.
  /// [wildcardFileName] HDFS wildcardFileName. Type: string (or Expression with resultType string).
  /// [wildcardFolderPath] HDFS wildcardFolderPath. Type: string (or Expression with resultType string).
  HdfsReadSettings({
    this.deleteFilesAfterCompletion,
    this.disableMetricsCollection,
    this.distcpSettings,
    this.enablePartitionDiscovery,
    this.fileListPath,
    this.maxConcurrentConnections,
    this.modifiedDatetimeEnd,
    this.modifiedDatetimeStart,
    this.partitionRootPath,
    this.recursive,
    required this.type,
    this.wildcardFileName,
    this.wildcardFolderPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteFilesAfterCompletion': ?deleteFilesAfterCompletion,
      'disableMetricsCollection': ?disableMetricsCollection,
      'distcpSettings': ?pulumi.Input.mapOptionalInputValue<DistcpSettings, Map<String, dynamic>>(distcpSettings, (value) => value.toMap()),
      'enablePartitionDiscovery': ?enablePartitionDiscovery,
      'fileListPath': ?fileListPath,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'modifiedDatetimeEnd': ?modifiedDatetimeEnd,
      'modifiedDatetimeStart': ?modifiedDatetimeStart,
      'partitionRootPath': ?partitionRootPath,
      'recursive': ?recursive,
      'type': type,
      'wildcardFileName': ?wildcardFileName,
      'wildcardFolderPath': ?wildcardFolderPath,
    };
  }

  factory HdfsReadSettings.fromMap(Map<String, dynamic> map) {
    return HdfsReadSettings(
      deleteFilesAfterCompletion: map['deleteFilesAfterCompletion'] == null ? null : (map['deleteFilesAfterCompletion']!).input(),
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : (map['disableMetricsCollection']!).input(),
      distcpSettings: map['distcpSettings'] == null ? null : (DistcpSettings.fromMap((map['distcpSettings']! as Map).cast<String, dynamic>())).input(),
      enablePartitionDiscovery: map['enablePartitionDiscovery'] == null ? null : (map['enablePartitionDiscovery']!).input(),
      fileListPath: map['fileListPath'] == null ? null : (map['fileListPath']!).input(),
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : (map['maxConcurrentConnections']!).input(),
      modifiedDatetimeEnd: map['modifiedDatetimeEnd'] == null ? null : (map['modifiedDatetimeEnd']!).input(),
      modifiedDatetimeStart: map['modifiedDatetimeStart'] == null ? null : (map['modifiedDatetimeStart']!).input(),
      partitionRootPath: map['partitionRootPath'] == null ? null : (map['partitionRootPath']!).input(),
      recursive: map['recursive'] == null ? null : (map['recursive']!).input(),
      type: (map['type'] as String).input(),
      wildcardFileName: map['wildcardFileName'] == null ? null : (map['wildcardFileName']!).input(),
      wildcardFolderPath: map['wildcardFolderPath'] == null ? null : (map['wildcardFolderPath']!).input(),
    );
  }
}

