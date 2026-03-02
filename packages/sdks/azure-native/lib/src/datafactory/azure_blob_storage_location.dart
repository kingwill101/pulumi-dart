// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The location of azure blob dataset.
class AzureBlobStorageLocation {
  /// Specify the container of azure blob. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? container;
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? fileName;
  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? folderPath;
  /// Type of dataset storage location.
  /// Expected value is 'AzureBlobStorageLocation'.
  final pulumi.Input<String> type;

  /// Creates a new [AzureBlobStorageLocation].
  /// [container] Specify the container of azure blob. Type: string (or Expression with resultType string).
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  AzureBlobStorageLocation({
    this.container,
    this.fileName,
    this.folderPath,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?container,
      'fileName': ?fileName,
      'folderPath': ?folderPath,
      'type': type,
    };
  }

  factory AzureBlobStorageLocation.fromMap(Map<String, dynamic> map) {
    return AzureBlobStorageLocation(
      container: map['container'] == null ? null : (map['container']!).input(),
      fileName: map['fileName'] == null ? null : (map['fileName']!).input(),
      folderPath: map['folderPath'] == null ? null : (map['folderPath']!).input(),
      type: (map['type'] as String).input(),
    );
  }
}

