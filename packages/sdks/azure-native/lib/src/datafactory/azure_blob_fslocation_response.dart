// ignore_for_file: unused_element, unnecessary_cast


/// The location of azure blobFS dataset.
class AzureBlobFSLocationResponse {
  /// Specify the file name of dataset. Type: string (or Expression with resultType string).
  final dynamic fileName;
  /// Specify the fileSystem of azure blobFS. Type: string (or Expression with resultType string).
  final dynamic fileSystem;
  /// Specify the folder path of dataset. Type: string (or Expression with resultType string)
  final dynamic folderPath;
  /// Type of dataset storage location.
  /// Expected value is 'AzureBlobFSLocation'.
  final String type;

  /// Creates a new [AzureBlobFSLocationResponse].
  /// [fileName] Specify the file name of dataset. Type: string (or Expression with resultType string).
  /// [fileSystem] Specify the fileSystem of azure blobFS. Type: string (or Expression with resultType string).
  /// [folderPath] Specify the folder path of dataset. Type: string (or Expression with resultType string)
  /// [type] Type of dataset storage location.
  AzureBlobFSLocationResponse({
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

  factory AzureBlobFSLocationResponse.fromMap(Map<String, dynamic> map) {
    return AzureBlobFSLocationResponse(
      fileName: map['fileName'] == null ? null : map['fileName'],
      fileSystem: map['fileSystem'] == null ? null : map['fileSystem'],
      folderPath: map['folderPath'] == null ? null : map['folderPath'],
      type: map['type'] as String,
    );
  }
}

