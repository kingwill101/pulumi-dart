// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_file_set_response.dart';

/// Options defining a file or a set of files within a Cloud Storage bucket.
class GooglePrivacyDlpV2CloudStorageOptionsResponse {
  /// Max number of bytes to scan from a file. If a scanned file's size is bigger than this value then the rest of the bytes are omitted. Only one of `bytes_limit_per_file` and `bytes_limit_per_file_percent` can be specified. This field can't be set if de-identification is requested. For certain file types, setting this field has no effect. For more information, see [Limits on bytes scanned per file](https://cloud.google.com/dlp/docs/supported-file-types#max-byte-size-per-file).
  final String bytesLimitPerFile;
  /// Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of bytes_limit_per_file and bytes_limit_per_file_percent can be specified. This field can't be set if de-identification is requested. For certain file types, setting this field has no effect. For more information, see [Limits on bytes scanned per file](https://cloud.google.com/dlp/docs/supported-file-types#max-byte-size-per-file).
  final int bytesLimitPerFilePercent;
  /// The set of one or more files to scan.
  final GooglePrivacyDlpV2FileSetResponse fileSet;
  /// List of file type groups to include in the scan. If empty, all files are scanned and available data format processors are applied. In addition, the binary content of the selected files is always scanned as well. Images are scanned only as binary if the specified region does not support image inspection and no file_types were specified. Image inspection is restricted to 'global', 'us', 'asia', and 'europe'.
  final List<String> fileTypes;
  /// Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0.
  final int filesLimitPercent;
  final String sampleMethod;

  /// Creates a new [GooglePrivacyDlpV2CloudStorageOptionsResponse].
  /// [bytesLimitPerFile] Max number of bytes to scan from a file. If a scanned file's size is bigger than this value then the rest of the bytes are omitted. Only one of `bytes_limit_per_file` and `bytes_limit_per_file_percent` can be specified. This field can't be set if de-identification is requested. For certain file types, setting this field has no effect. For more information, see [Limits on bytes scanned per file](https://cloud.google.com/dlp/docs/supported-file-types#max-byte-size-per-file).
  /// [bytesLimitPerFilePercent] Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of bytes_limit_per_file and bytes_limit_per_file_percent can be specified. This field can't be set if de-identification is requested. For certain file types, setting this field has no effect. For more information, see [Limits on bytes scanned per file](https://cloud.google.com/dlp/docs/supported-file-types#max-byte-size-per-file).
  /// [fileSet] The set of one or more files to scan.
  /// [fileTypes] List of file type groups to include in the scan. If empty, all files are scanned and available data format processors are applied. In addition, the binary content of the selected files is always scanned as well. Images are scanned only as binary if the specified region does not support image inspection and no file_types were specified. Image inspection is restricted to 'global', 'us', 'asia', and 'europe'.
  /// [filesLimitPercent] Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0.
  /// [sampleMethod] Required.
  GooglePrivacyDlpV2CloudStorageOptionsResponse({
    required this.bytesLimitPerFile,
    required this.bytesLimitPerFilePercent,
    required this.fileSet,
    required this.fileTypes,
    required this.filesLimitPercent,
    required this.sampleMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytesLimitPerFile': bytesLimitPerFile,
      'bytesLimitPerFilePercent': bytesLimitPerFilePercent,
      'fileSet': fileSet.toMap(),
      'fileTypes': fileTypes,
      'filesLimitPercent': filesLimitPercent,
      'sampleMethod': sampleMethod,
    };
  }

  factory GooglePrivacyDlpV2CloudStorageOptionsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CloudStorageOptionsResponse(
      bytesLimitPerFile: map['bytesLimitPerFile'] as String,
      bytesLimitPerFilePercent: map['bytesLimitPerFilePercent'] as int,
      fileSet: GooglePrivacyDlpV2FileSetResponse.fromMap((map['fileSet'] as Map).cast<String, dynamic>()),
      fileTypes: (map['fileTypes'] as List).cast<String>(),
      filesLimitPercent: map['filesLimitPercent'] as int,
      sampleMethod: map['sampleMethod'] as String,
    );
  }
}

