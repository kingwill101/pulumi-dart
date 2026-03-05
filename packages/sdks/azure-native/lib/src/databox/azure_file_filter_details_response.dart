// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter details to transfer Azure files
class AzureFileFilterDetailsResponse {
  /// List of full path of the files to be transferred.
  final pulumi.Input<List<String>>? filePathList;
  /// Prefix list of the Azure files to be transferred.
  final pulumi.Input<List<String>>? filePrefixList;
  /// List of file shares to be transferred.
  final pulumi.Input<List<String>>? fileShareList;

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
      filePathList: (() { final guardedValue = map['filePathList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      filePrefixList: (() { final guardedValue = map['filePrefixList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      fileShareList: (() { final guardedValue = map['fileShareList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

