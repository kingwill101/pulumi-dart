// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'import_data_file_format2.dart';

/// The set of arguments for ImportDataFile.
class ImportDataFileArgs2 {
  /// Optional. User-friendly display name. Maximum length is 256 characters.
  final Input<String>? displayName;

  /// The payload format.
  final Input<ImportDataFileFormat2> format;

  /// Required. The ID of the new data file.
  final Input<String> importDataFileId;
  final Input<String> importJobId;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Information about a file that is uploaded to a storage service.
  final Input<Map<String, dynamic>>? uploadFileInfo;

  ImportDataFileArgs2({
    this.displayName,
    required this.format,
    required this.importDataFileId,
    required this.importJobId,
    this.location,
    this.project,
    this.requestId,
    this.uploadFileInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['format'] = Input.mapInputValue<ImportDataFileFormat2, String>(
        format, (value) => value.value);
    map['importDataFileId'] = importDataFileId;
    map['importJobId'] = importJobId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final uploadFileInfoValue = uploadFileInfo;
    if (uploadFileInfoValue != null) {
      map['uploadFileInfo'] = uploadFileInfoValue;
    }
    return map;
  }

  factory ImportDataFileArgs2.fromMap(Map<String, dynamic> map) {
    return ImportDataFileArgs2(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      format: Input.asInput<ImportDataFileFormat2>(map['format']),
      importDataFileId: Input.asInput<String>(map['importDataFileId']),
      importJobId: Input.asInput<String>(map['importJobId']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      uploadFileInfo:
          Input.asOptionalInput<Map<String, dynamic>>(map['uploadFileInfo']),
    );
  }
}
