// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'nfs_export_options.dart';

/// File share configuration for the instance.
class FileShareConfig {
  /// File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes.
  final String? capacityGb;

  /// The name of the file share (must be 16 characters or less).
  final String? name;

  /// Nfs Export Options. There is a limit of 10 export options per file share.
  final List<NfsExportOptions>? nfsExportOptions;

  /// The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}/backups/{backup_id}`, that this file share has been restored from.
  final String? sourceBackup;

  FileShareConfig({
    this.capacityGb,
    this.name,
    this.nfsExportOptions,
    this.sourceBackup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityGbValue = capacityGb;
    if (capacityGbValue != null) {
      map['capacityGb'] = capacityGbValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nfsExportOptionsValue = nfsExportOptions;
    if (nfsExportOptionsValue != null) {
      map['nfsExportOptions'] =
          Input.encodeList<NfsExportOptions, Map<String, dynamic>>(
              nfsExportOptionsValue, (value) => value.toMap());
    }
    final sourceBackupValue = sourceBackup;
    if (sourceBackupValue != null) {
      map['sourceBackup'] = sourceBackupValue;
    }
    return map;
  }

  factory FileShareConfig.fromMap(Map<String, dynamic> map) {
    return FileShareConfig(
      capacityGb:
          map['capacityGb'] == null ? null : map['capacityGb'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nfsExportOptions: map['nfsExportOptions'] == null
          ? null
          : Input.decodeList<NfsExportOptions>(
              map['nfsExportOptions'],
              (value) => NfsExportOptions.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceBackup:
          map['sourceBackup'] == null ? null : map['sourceBackup'] as String,
    );
  }
}
