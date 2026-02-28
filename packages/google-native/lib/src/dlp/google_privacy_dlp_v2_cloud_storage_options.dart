// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_cloud_storage_options_file_types_item.dart';
import 'google_privacy_dlp_v2_cloud_storage_options_sample_method.dart';
import 'google_privacy_dlp_v2_file_set.dart';

/// Options defining a file or a set of files within a Cloud Storage bucket.
class GooglePrivacyDlpV2CloudStorageOptions {
  /// Max number of bytes to scan from a file. If a scanned file's size is bigger than this value then the rest of the bytes are omitted. Only one of `bytes_limit_per_file` and `bytes_limit_per_file_percent` can be specified. This field can't be set if de-identification is requested. For certain file types, setting this field has no effect. For more information, see [Limits on bytes scanned per file](https://cloud.google.com/dlp/docs/supported-file-types#max-byte-size-per-file).
  final String? bytesLimitPerFile;

  /// Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of bytes_limit_per_file and bytes_limit_per_file_percent can be specified. This field can't be set if de-identification is requested. For certain file types, setting this field has no effect. For more information, see [Limits on bytes scanned per file](https://cloud.google.com/dlp/docs/supported-file-types#max-byte-size-per-file).
  final int? bytesLimitPerFilePercent;

  /// The set of one or more files to scan.
  final GooglePrivacyDlpV2FileSet? fileSet;

  /// List of file type groups to include in the scan. If empty, all files are scanned and available data format processors are applied. In addition, the binary content of the selected files is always scanned as well. Images are scanned only as binary if the specified region does not support image inspection and no file_types were specified. Image inspection is restricted to 'global', 'us', 'asia', and 'europe'.
  final List<GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem>? fileTypes;

  /// Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0.
  final int? filesLimitPercent;
  final GooglePrivacyDlpV2CloudStorageOptionsSampleMethod? sampleMethod;

  /// Creates a new [GooglePrivacyDlpV2CloudStorageOptions].
  /// [bytesLimitPerFile] Max number of bytes to scan from a file. If a scanned file's size is bigger than this value then the rest of the bytes are omitted. Only one of `bytes_limit_per_file` and `bytes_limit_per_file_percent` can be specified. This field can't be set if de-identification is requested. For certain file types, setting this field has no effect. For more information, see [Limits on bytes scanned per file](https://cloud.google.com/dlp/docs/supported-file-types#max-byte-size-per-file).
  /// [bytesLimitPerFilePercent] Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of bytes_limit_per_file and bytes_limit_per_file_percent can be specified. This field can't be set if de-identification is requested. For certain file types, setting this field has no effect. For more information, see [Limits on bytes scanned per file](https://cloud.google.com/dlp/docs/supported-file-types#max-byte-size-per-file).
  /// [fileSet] The set of one or more files to scan.
  /// [fileTypes] List of file type groups to include in the scan. If empty, all files are scanned and available data format processors are applied. In addition, the binary content of the selected files is always scanned as well. Images are scanned only as binary if the specified region does not support image inspection and no file_types were specified. Image inspection is restricted to 'global', 'us', 'asia', and 'europe'.
  /// [filesLimitPercent] Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0.
  /// [sampleMethod] Optional.
  GooglePrivacyDlpV2CloudStorageOptions({
    this.bytesLimitPerFile,
    this.bytesLimitPerFilePercent,
    this.fileSet,
    this.fileTypes,
    this.filesLimitPercent,
    this.sampleMethod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bytesLimitPerFileValue = bytesLimitPerFile;
    if (bytesLimitPerFileValue != null) {
      map['bytesLimitPerFile'] = bytesLimitPerFileValue;
    }
    final bytesLimitPerFilePercentValue = bytesLimitPerFilePercent;
    if (bytesLimitPerFilePercentValue != null) {
      map['bytesLimitPerFilePercent'] = bytesLimitPerFilePercentValue;
    }
    final fileSetValue = fileSet;
    if (fileSetValue != null) {
      map['fileSet'] = fileSetValue.toMap();
    }
    final fileTypesValue = fileTypes;
    if (fileTypesValue != null) {
      map['fileTypes'] = pulumi.Input.encodeList<
          GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem,
          String>(fileTypesValue, (value) => value.value);
    }
    final filesLimitPercentValue = filesLimitPercent;
    if (filesLimitPercentValue != null) {
      map['filesLimitPercent'] = filesLimitPercentValue;
    }
    final sampleMethodValue = sampleMethod;
    if (sampleMethodValue != null) {
      map['sampleMethod'] = sampleMethodValue.value;
    }
    return map;
  }

  factory GooglePrivacyDlpV2CloudStorageOptions.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CloudStorageOptions(
      bytesLimitPerFile: map['bytesLimitPerFile'] == null
          ? null
          : map['bytesLimitPerFile'] as String,
      bytesLimitPerFilePercent: map['bytesLimitPerFilePercent'] == null
          ? null
          : map['bytesLimitPerFilePercent'] as int,
      fileSet: map['fileSet'] == null
          ? null
          : GooglePrivacyDlpV2FileSet.fromMap(
              (map['fileSet'] as Map).cast<String, dynamic>()),
      fileTypes: map['fileTypes'] == null
          ? null
          : pulumi.Input.decodeList<
                  GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem>(
              map['fileTypes'],
              (value) =>
                  GooglePrivacyDlpV2CloudStorageOptionsFileTypesItem.fromValue(
                      value as String)),
      filesLimitPercent: map['filesLimitPercent'] == null
          ? null
          : map['filesLimitPercent'] as int,
      sampleMethod: map['sampleMethod'] == null
          ? null
          : GooglePrivacyDlpV2CloudStorageOptionsSampleMethod.fromValue(
              map['sampleMethod'] as String),
    );
  }
}
