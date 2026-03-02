// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The location of azure blobFS dataset.
class AzureBlobFSLocation {
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileName;
  /// Specify the fileSystem of azure blobFS. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileSystem;
  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? folderPath;
  /// Type of dataset storage location.
  /// Expected value is 'AzureBlobFSLocation'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureBlobFSLocation].
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [fileSystem] Specify the fileSystem of azure blobFS. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  AzureBlobFSLocation({
    this.fileName,
    this.fileSystem,
    this.folderPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': ?fileName,
      'fileSystem': ?fileSystem,
      'folderPath': ?folderPath,
      'type': type,
    };
  }

  factory AzureBlobFSLocation.fromMap(Map<String, dynamic> map) {
    return AzureBlobFSLocation(
      fileName: map['fileName'] == null ? null : (map['fileName']!).input(),
      fileSystem: map['fileSystem'] == null ? null : (map['fileSystem']!).input(),
      folderPath: map['folderPath'] == null ? null : (map['folderPath']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

