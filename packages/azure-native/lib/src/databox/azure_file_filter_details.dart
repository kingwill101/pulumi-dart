// ignore_for_file: unused_element, unnecessary_cast


/// Filter details to transfer Azure files
class AzureFileFilterDetails {
  /// List of full path of the files to be transferred.
  final List<String>? filePathList;
  /// Prefix list of the Azure files to be transferred.
  final List<String>? filePrefixList;
  /// List of file shares to be transferred.
  final List<String>? fileShareList;

  /// Creates a new [AzureFileFilterDetails].
  /// [filePathList] List of full path of the files to be transferred.
  /// [filePrefixList] Prefix list of the Azure files to be transferred.
  /// [fileShareList] List of file shares to be transferred.
  AzureFileFilterDetails({
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

  factory AzureFileFilterDetails.fromMap(Map<String, dynamic> map) {
    return AzureFileFilterDetails(
      filePathList: map['filePathList'] == null ? null : (map['filePathList'] as List).cast<String>(),
      filePrefixList: map['filePrefixList'] == null ? null : (map['filePrefixList'] as List).cast<String>(),
      fileShareList: map['fileShareList'] == null ? null : (map['fileShareList'] as List).cast<String>(),
    );
  }
}

