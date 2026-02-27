// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getFolderBigQueryExport.
class GetFolderBigQueryExportArgs {
  final pulumi.Input<String> bigQueryExportId;
  final pulumi.Input<String> folderId;

  GetFolderBigQueryExportArgs({
    required this.bigQueryExportId,
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigQueryExportId'] = bigQueryExportId;
    map['folderId'] = folderId;
    return map;
  }

  factory GetFolderBigQueryExportArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderBigQueryExportArgs(
      bigQueryExportId: pulumi.Input.asInput<String>(map['bigQueryExportId']),
      folderId: pulumi.Input.asInput<String>(map['folderId']),
    );
  }
}
