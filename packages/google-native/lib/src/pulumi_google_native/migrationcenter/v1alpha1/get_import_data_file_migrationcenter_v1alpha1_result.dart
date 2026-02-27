// ignore_for_file: unused_element, unnecessary_cast

import 'upload_file_info_response_migrationcenter_v1alpha1.dart';

/// Result data returned by getImportDataFile.
class GetImportDataFileMigrationcenterV1alpha1Result {
  /// The timestamp when the file was created.
  final String createTime;

  /// Optional. User-friendly display name. Maximum length is 256 characters.
  final String displayName;

  /// The payload format.
  final String format;

  /// The name of the file.
  final String name;

  /// The state of the import data file.
  final String state;

  /// Information about a file that is uploaded to a storage service.
  final UploadFileInfoResponseMigrationcenterV1alpha1 uploadFileInfo;

  GetImportDataFileMigrationcenterV1alpha1Result({
    required this.createTime,
    required this.displayName,
    required this.format,
    required this.name,
    required this.state,
    required this.uploadFileInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['format'] = format;
    map['name'] = name;
    map['state'] = state;
    map['uploadFileInfo'] = uploadFileInfo.toMap();
    return map;
  }

  factory GetImportDataFileMigrationcenterV1alpha1Result.fromMap(
      Map<String, dynamic> map) {
    return GetImportDataFileMigrationcenterV1alpha1Result(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      format: map['format'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      uploadFileInfo: UploadFileInfoResponseMigrationcenterV1alpha1.fromMap(
          (map['uploadFileInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
