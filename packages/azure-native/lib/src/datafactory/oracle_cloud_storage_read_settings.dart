// ignore_for_file: unused_element, unnecessary_cast


/// Oracle Cloud Storage read settings.
class OracleCloudStorageReadSettings {
  /// Indicates whether the source files need to be deleted after copy completion. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic deleteFilesAfterCompletion;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// Indicates whether to enable partition discovery. Type: boolean (or Expression with resultType boolean).
  final dynamic enablePartitionDiscovery;
  /// Point to a text file that lists each file (relative path to the path configured in the dataset) that you want to copy. Type: string (or Expression with resultType string).
  final dynamic fileListPath;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// The end of file's modified datetime. Type: string (or Expression with resultType string).
  final dynamic modifiedDatetimeEnd;
  /// The start of file's modified datetime. Type: string (or Expression with resultType string).
  final dynamic modifiedDatetimeStart;
  /// Specify the root path where partition discovery starts from. Type: string (or Expression with resultType string).
  final dynamic partitionRootPath;
  /// The prefix filter for the Oracle Cloud Storage object name. Type: string (or Expression with resultType string).
  final dynamic prefix;
  /// If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  final dynamic recursive;
  /// The read setting type.
  /// Expected value is 'OracleCloudStorageReadSettings'.
  final String type;
  /// Oracle Cloud Storage wildcardFileName. Type: string (or Expression with resultType string).
  final dynamic wildcardFileName;
  /// Oracle Cloud Storage wildcardFolderPath. Type: string (or Expression with resultType string).
  final dynamic wildcardFolderPath;

  /// Creates a new [OracleCloudStorageReadSettings].
  /// [deleteFilesAfterCompletion] Indicates whether the source files need to be deleted after copy completion. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [enablePartitionDiscovery] Indicates whether to enable partition discovery. Type: boolean (or Expression with resultType boolean).
  /// [fileListPath] Point to a text file that lists each file (relative path to the path configured in the dataset) that you want to copy. Type: string (or Expression with resultType string).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [modifiedDatetimeEnd] The end of file's modified datetime. Type: string (or Expression with resultType string).
  /// [modifiedDatetimeStart] The start of file's modified datetime. Type: string (or Expression with resultType string).
  /// [partitionRootPath] Specify the root path where partition discovery starts from. Type: string (or Expression with resultType string).
  /// [prefix] The prefix filter for the Oracle Cloud Storage object name. Type: string (or Expression with resultType string).
  /// [recursive] If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  /// [type] The read setting type.
  /// [wildcardFileName] Oracle Cloud Storage wildcardFileName. Type: string (or Expression with resultType string).
  /// [wildcardFolderPath] Oracle Cloud Storage wildcardFolderPath. Type: string (or Expression with resultType string).
  OracleCloudStorageReadSettings({
    this.deleteFilesAfterCompletion,
    this.disableMetricsCollection,
    this.enablePartitionDiscovery,
    this.fileListPath,
    this.maxConcurrentConnections,
    this.modifiedDatetimeEnd,
    this.modifiedDatetimeStart,
    this.partitionRootPath,
    this.prefix,
    this.recursive,
    required this.type,
    this.wildcardFileName,
    this.wildcardFolderPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteFilesAfterCompletion': ?deleteFilesAfterCompletion,
      'disableMetricsCollection': ?disableMetricsCollection,
      'enablePartitionDiscovery': ?enablePartitionDiscovery,
      'fileListPath': ?fileListPath,
      'maxConcurrentConnections': ?maxConcurrentConnections,
      'modifiedDatetimeEnd': ?modifiedDatetimeEnd,
      'modifiedDatetimeStart': ?modifiedDatetimeStart,
      'partitionRootPath': ?partitionRootPath,
      'prefix': ?prefix,
      'recursive': ?recursive,
      'type': type,
      'wildcardFileName': ?wildcardFileName,
      'wildcardFolderPath': ?wildcardFolderPath,
    };
  }

  factory OracleCloudStorageReadSettings.fromMap(Map<String, dynamic> map) {
    return OracleCloudStorageReadSettings(
      deleteFilesAfterCompletion: map['deleteFilesAfterCompletion'] == null ? null : map['deleteFilesAfterCompletion'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      enablePartitionDiscovery: map['enablePartitionDiscovery'] == null ? null : map['enablePartitionDiscovery'],
      fileListPath: map['fileListPath'] == null ? null : map['fileListPath'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      modifiedDatetimeEnd: map['modifiedDatetimeEnd'] == null ? null : map['modifiedDatetimeEnd'],
      modifiedDatetimeStart: map['modifiedDatetimeStart'] == null ? null : map['modifiedDatetimeStart'],
      partitionRootPath: map['partitionRootPath'] == null ? null : map['partitionRootPath'],
      prefix: map['prefix'] == null ? null : map['prefix'],
      recursive: map['recursive'] == null ? null : map['recursive'],
      type: map['type'] as String,
      wildcardFileName: map['wildcardFileName'] == null ? null : map['wildcardFileName'],
      wildcardFolderPath: map['wildcardFolderPath'] == null ? null : map['wildcardFolderPath'],
    );
  }
}

