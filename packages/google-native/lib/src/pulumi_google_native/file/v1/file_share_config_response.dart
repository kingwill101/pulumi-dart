// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_export_options_response.dart';

/// File share configuration for the instance.
class FileShareConfigResponse {
  /// File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes.
  final String capacityGb;

  /// The name of the file share (must be 16 characters or less).
  final String name;

  /// Nfs Export Options. There is a limit of 10 export options per file share.
  final List<NfsExportOptionsResponse> nfsExportOptions;

  /// The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}/backups/{backup_id}`, that this file share has been restored from.
  final String sourceBackup;

  FileShareConfigResponse({
    required this.capacityGb,
    required this.name,
    required this.nfsExportOptions,
    required this.sourceBackup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityGb'] = capacityGb;
    map['name'] = name;
    map['nfsExportOptions'] =
        pulumi.Input.encodeList<NfsExportOptionsResponse, Map<String, dynamic>>(
            nfsExportOptions, (value) => value.toMap());
    map['sourceBackup'] = sourceBackup;
    return map;
  }

  factory FileShareConfigResponse.fromMap(Map<String, dynamic> map) {
    return FileShareConfigResponse(
      capacityGb: map['capacityGb'] as String,
      name: map['name'] as String,
      nfsExportOptions: pulumi.Input.decodeList<NfsExportOptionsResponse>(
          map['nfsExportOptions'],
          (value) => NfsExportOptionsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      sourceBackup: map['sourceBackup'] as String,
    );
  }
}
