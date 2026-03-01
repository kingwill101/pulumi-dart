// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_job_trigger_inspect_job_storage_config_cloud_storage_options_file_set.dart';

class PreventionJobTriggerInspectJobStorageConfigCloudStorageOptions {
  /// Max number of bytes to scan from a file. If a scanned file's size is bigger than this value
  /// then the rest of the bytes are omitted.
  final int? bytesLimitPerFile;
  /// Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down.
  /// Must be between 0 and 100, inclusively. Both 0 and 100 means no limit.
  final int? bytesLimitPerFilePercent;
  /// Set of files to scan.
  /// Structure is documented below.
  final PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet fileSet;
  /// List of file type groups to include in the scan. If empty, all files are scanned and available data
  /// format processors are applied. In addition, the binary content of the selected files is always scanned as well.
  /// Images are scanned only as binary if the specified region does not support image inspection and no fileTypes were specified.
  /// Each value may be one of: `BINARY_FILE`, `TEXT_FILE`, `IMAGE`, `WORD`, `PDF`, `AVRO`, `CSV`, `TSV`, `POWERPOINT`, `EXCEL`.
  final List<String>? fileTypes;
  /// Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down.
  /// Must be between 0 and 100, inclusively. Both 0 and 100 means no limit.
  final int? filesLimitPercent;
  /// How to sample bytes if not all bytes are scanned. Meaningful only when used in conjunction with bytesLimitPerFile.
  /// If not specified, scanning would start from the top.
  /// Possible values are: `TOP`, `RANDOM_START`.
  final String? sampleMethod;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigCloudStorageOptions].
  /// [bytesLimitPerFile] Max number of bytes to scan from a file. If a scanned file's size is bigger than this value
  /// [bytesLimitPerFilePercent] Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down.
  /// [fileSet] Set of files to scan.
  /// [fileTypes] List of file type groups to include in the scan. If empty, all files are scanned and available data
  /// [filesLimitPercent] Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down.
  /// [sampleMethod] How to sample bytes if not all bytes are scanned. Meaningful only when used in conjunction with bytesLimitPerFile.
  PreventionJobTriggerInspectJobStorageConfigCloudStorageOptions({
    this.bytesLimitPerFile,
    this.bytesLimitPerFilePercent,
    required this.fileSet,
    this.fileTypes,
    this.filesLimitPercent,
    this.sampleMethod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bytesLimitPerFile': ?bytesLimitPerFile,
      'bytesLimitPerFilePercent': ?bytesLimitPerFilePercent,
      'fileSet': fileSet.toMap(),
      'fileTypes': ?fileTypes,
      'filesLimitPercent': ?filesLimitPercent,
      'sampleMethod': ?sampleMethod,
    };
  }

  factory PreventionJobTriggerInspectJobStorageConfigCloudStorageOptions.fromMap(Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobStorageConfigCloudStorageOptions(
      bytesLimitPerFile: map['bytesLimitPerFile'] == null ? null : map['bytesLimitPerFile'] as int,
      bytesLimitPerFilePercent: map['bytesLimitPerFilePercent'] == null ? null : map['bytesLimitPerFilePercent'] as int,
      fileSet: PreventionJobTriggerInspectJobStorageConfigCloudStorageOptionsFileSet.fromMap((map['fileSet'] as Map).cast<String, dynamic>()),
      fileTypes: map['fileTypes'] == null ? null : (map['fileTypes'] as List).cast<String>(),
      filesLimitPercent: map['filesLimitPercent'] == null ? null : map['filesLimitPercent'] as int,
      sampleMethod: map['sampleMethod'] == null ? null : map['sampleMethod'] as String,
    );
  }
}

