// ignore_for_file: unused_element, unnecessary_cast


/// Filter details to transfer Azure files
class AzureFileFilterDetailsResponse {
  /// List of full path of the files to be transferred.
  final List<String>? filePathList;
  /// Prefix list of the Azure files to be transferred.
  final List<String>? filePrefixList;
  /// List of file shares to be transferred.
  final List<String>? fileShareList;

  /// Creates a new [AzureFileFilterDetailsResponse].
  /// [filePathList] List of full path of the files to be transferred.
  /// [filePrefixList] Prefix list of the Azure files to be transferred.
  /// [fileShareList] List of file shares to be transferred.
  AzureFileFilterDetailsResponse({
    this.filePathList,
    this.filePrefixList,
    this.fileShareList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePathList': ?filePathList,
      'filePrefixList': ?filePrefixList,
      'fileShareList': ?fileShareList,
    };
  }

  factory AzureFileFilterDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AzureFileFilterDetailsResponse(
      filePathList: map['filePathList'] == null ? null : (map['filePathList'] as List).cast<String>(),
      filePrefixList: map['filePrefixList'] == null ? null : (map['filePrefixList'] as List).cast<String>(),
      fileShareList: map['fileShareList'] == null ? null : (map['fileShareList'] as List).cast<String>(),
    );
  }
}

