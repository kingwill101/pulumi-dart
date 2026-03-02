// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The location of file server dataset.
class AzureFileStorageLocationResponse {
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileName;
  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? folderPath;
  /// Type of dataset storage location.
  /// Expected value is 'AzureFileStorageLocation'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureFileStorageLocationResponse].
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  AzureFileStorageLocationResponse({
    this.fileName,
    this.folderPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': ?fileName,
      'folderPath': ?folderPath,
      'type': type,
    };
  }

  factory AzureFileStorageLocationResponse.fromMap(Map<String, dynamic> map) {
    return AzureFileStorageLocationResponse(
      fileName: map['fileName'] == null ? null : (map['fileName']).input(),
      folderPath: map['folderPath'] == null ? null : (map['folderPath']).input(),
      type: (map['type'] as String).input(),
    );
  }
}

