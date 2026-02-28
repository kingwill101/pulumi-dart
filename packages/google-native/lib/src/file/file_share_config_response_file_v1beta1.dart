// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_export_options_response_file_v1beta1.dart';

/// File share configuration for the instance.
class FileShareConfigResponseFileV1beta1 {
  /// File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes.
  final String capacityGb;

  /// The name of the file share (must be 32 characters or less for Enterprise and High Scale SSD tiers and 16 characters or less for all other tiers).
  final String name;

  /// Nfs Export Options. There is a limit of 10 export options per file share.
  final List<NfsExportOptionsResponseFileV1beta1> nfsExportOptions;

  /// The resource name of the backup, in the format `projects/{project_id}/locations/{location_id}/backups/{backup_id}`, that this file share has been restored from.
  final String sourceBackup;

  /// Creates a new [FileShareConfigResponseFileV1beta1].
  /// [capacityGb] File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes.
  /// [name] The name of the file share (must be 32 characters or less for Enterprise and High Scale SSD tiers and 16 characters or less for all other tiers).
  /// [nfsExportOptions] Nfs Export Options. There is a limit of 10 export options per file share.
  /// [sourceBackup] The resource name of the backup, in the format `projects/{project_id}/locations/{location_id}/backups/{backup_id}`, that this file share has been restored from.
  FileShareConfigResponseFileV1beta1({
    required this.capacityGb,
    required this.name,
    required this.nfsExportOptions,
    required this.sourceBackup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityGb'] = capacityGb;
    map['name'] = name;
    map['nfsExportOptions'] = pulumi.Input.encodeList<
        NfsExportOptionsResponseFileV1beta1,
        Map<String, dynamic>>(nfsExportOptions, (value) => value.toMap());
    map['sourceBackup'] = sourceBackup;
    return map;
  }

  factory FileShareConfigResponseFileV1beta1.fromMap(Map<String, dynamic> map) {
    return FileShareConfigResponseFileV1beta1(
      capacityGb: map['capacityGb'] as String,
      name: map['name'] as String,
      nfsExportOptions:
          pulumi.Input.decodeList<NfsExportOptionsResponseFileV1beta1>(
              map['nfsExportOptions'],
              (value) => NfsExportOptionsResponseFileV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceBackup: map['sourceBackup'] as String,
    );
  }
}
