// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'nfs_export_options_response2.dart';

/// File share configuration for the instance.
class FileShareConfigResponse2 {
  /// File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes.
  final String capacityGb;

  /// The name of the file share (must be 32 characters or less for Enterprise and High Scale SSD tiers and 16 characters or less for all other tiers).
  final String name;

  /// Nfs Export Options. There is a limit of 10 export options per file share.
  final List<NfsExportOptionsResponse2> nfsExportOptions;

  /// The resource name of the backup, in the format `projects/{project_id}/locations/{location_id}/backups/{backup_id}`, that this file share has been restored from.
  final String sourceBackup;

  FileShareConfigResponse2({
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
        Input.encodeList<NfsExportOptionsResponse2, Map<String, dynamic>>(
            nfsExportOptions, (value) => value.toMap());
    map['sourceBackup'] = sourceBackup;
    return map;
  }

  factory FileShareConfigResponse2.fromMap(Map<String, dynamic> map) {
    return FileShareConfigResponse2(
      capacityGb: map['capacityGb'] as String,
      name: map['name'] as String,
      nfsExportOptions: Input.decodeList<NfsExportOptionsResponse2>(
          map['nfsExportOptions'],
          (value) => NfsExportOptionsResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      sourceBackup: map['sourceBackup'] as String,
    );
  }
}
