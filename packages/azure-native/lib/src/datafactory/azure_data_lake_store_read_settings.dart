// ignore_for_file: unused_element, unnecessary_cast


/// Azure data lake store read settings.
class AzureDataLakeStoreReadSettings {
  /// Indicates whether the source files need to be deleted after copy completion. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic deleteFilesAfterCompletion;
  /// If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  final dynamic disableMetricsCollection;
  /// Indicates whether to enable partition discovery. Type: boolean (or Expression with resultType boolean).
  final dynamic enablePartitionDiscovery;
  /// Point to a text file that lists each file (relative path to the path configured in the dataset) that you want to copy. Type: string (or Expression with resultType string).
  final dynamic fileListPath;
  /// Lists files after the value (exclusive) based on file/folder names’ lexicographical order. Applies under the folderPath in data set, and filter files/sub-folders under the folderPath. Type: string (or Expression with resultType string).
  final dynamic listAfter;
  /// Lists files before the value (inclusive) based on file/folder names’ lexicographical order. Applies under the folderPath in data set, and filter files/sub-folders under the folderPath. Type: string (or Expression with resultType string).
  final dynamic listBefore;
  /// The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  final dynamic maxConcurrentConnections;
  /// The end of file's modified datetime. Type: string (or Expression with resultType string).
  final dynamic modifiedDatetimeEnd;
  /// The start of file's modified datetime. Type: string (or Expression with resultType string).
  final dynamic modifiedDatetimeStart;
  /// Specify the root path where partition discovery starts from. Type: string (or Expression with resultType string).
  final dynamic partitionRootPath;
  /// If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  final dynamic recursive;
  /// The read setting type.
  /// Expected value is 'AzureDataLakeStoreReadSettings'.
  final String type;
  /// ADLS wildcardFileName. Type: string (or Expression with resultType string).
  final dynamic wildcardFileName;
  /// ADLS wildcardFolderPath. Type: string (or Expression with resultType string).
  final dynamic wildcardFolderPath;

  /// Creates a new [AzureDataLakeStoreReadSettings].
  /// [deleteFilesAfterCompletion] Indicates whether the source files need to be deleted after copy completion. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [disableMetricsCollection] If true, disable data store metrics collection. Default is false. Type: boolean (or Expression with resultType boolean).
  /// [enablePartitionDiscovery] Indicates whether to enable partition discovery. Type: boolean (or Expression with resultType boolean).
  /// [fileListPath] Point to a text file that lists each file (relative path to the path configured in the dataset) that you want to copy. Type: string (or Expression with resultType string).
  /// [listAfter] Lists files after the value (exclusive) based on file/folder names’ lexicographical order. Applies under the folderPath in data set, and filter files/sub-folders under the folderPath. Type: string (or Expression with resultType string).
  /// [listBefore] Lists files before the value (inclusive) based on file/folder names’ lexicographical order. Applies under the folderPath in data set, and filter files/sub-folders under the folderPath. Type: string (or Expression with resultType string).
  /// [maxConcurrentConnections] The maximum concurrent connection count for the source data store. Type: integer (or Expression with resultType integer).
  /// [modifiedDatetimeEnd] The end of file's modified datetime. Type: string (or Expression with resultType string).
  /// [modifiedDatetimeStart] The start of file's modified datetime. Type: string (or Expression with resultType string).
  /// [partitionRootPath] Specify the root path where partition discovery starts from. Type: string (or Expression with resultType string).
  /// [recursive] If true, files under the folder path will be read recursively. Default is true. Type: boolean (or Expression with resultType boolean).
  /// [type] The read setting type.
  /// [wildcardFileName] ADLS wildcardFileName. Type: string (or Expression with resultType string).
  /// [wildcardFolderPath] ADLS wildcardFolderPath. Type: string (or Expression with resultType string).
  AzureDataLakeStoreReadSettings({
    this.deleteFilesAfterCompletion,
    this.disableMetricsCollection,
    this.enablePartitionDiscovery,
    this.fileListPath,
    this.listAfter,
    this.listBefore,
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
      'enablePartitionDiscovery': ?enablePartitionDiscovery,
      'fileListPath': ?fileListPath,
      'listAfter': ?listAfter,
      'listBefore': ?listBefore,
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

  factory AzureDataLakeStoreReadSettings.fromMap(Map<String, dynamic> map) {
    return AzureDataLakeStoreReadSettings(
      deleteFilesAfterCompletion: map['deleteFilesAfterCompletion'] == null ? null : map['deleteFilesAfterCompletion'],
      disableMetricsCollection: map['disableMetricsCollection'] == null ? null : map['disableMetricsCollection'],
      enablePartitionDiscovery: map['enablePartitionDiscovery'] == null ? null : map['enablePartitionDiscovery'],
      fileListPath: map['fileListPath'] == null ? null : map['fileListPath'],
      listAfter: map['listAfter'] == null ? null : map['listAfter'],
      listBefore: map['listBefore'] == null ? null : map['listBefore'],
      maxConcurrentConnections: map['maxConcurrentConnections'] == null ? null : map['maxConcurrentConnections'],
      modifiedDatetimeEnd: map['modifiedDatetimeEnd'] == null ? null : map['modifiedDatetimeEnd'],
      modifiedDatetimeStart: map['modifiedDatetimeStart'] == null ? null : map['modifiedDatetimeStart'],
      partitionRootPath: map['partitionRootPath'] == null ? null : map['partitionRootPath'],
      recursive: map['recursive'] == null ? null : map['recursive'],
      type: map['type'] as String,
      wildcardFileName: map['wildcardFileName'] == null ? null : map['wildcardFileName'],
      wildcardFolderPath: map['wildcardFolderPath'] == null ? null : map['wildcardFolderPath'],
    );
  }
}

