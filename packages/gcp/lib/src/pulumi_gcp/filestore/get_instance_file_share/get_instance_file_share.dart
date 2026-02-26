// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_file_share_nfs_export_option/get_instance_file_share_nfs_export_option.dart';

class GetInstanceFileShare {
  /// File share capacity in GiB. This must be at least 1024 GiB
  /// for the standard tier, or 2560 GiB for the premium tier.
  final int capacityGb;

  /// The name of a Filestore instance.
  ///
  /// - - -
  final String name;

  /// Nfs Export Options. There is a limit of 10 export options per file share.
  final List<GetInstanceFileShareNfsExportOption> nfsExportOptions;

  /// The resource name of the backup, in the format
  /// projects/{projectId}/locations/{locationId}/backups/{backupId},
  /// that this file share has been restored from.
  final String sourceBackup;

  GetInstanceFileShare({
    required this.capacityGb,
    required this.name,
    required this.nfsExportOptions,
    required this.sourceBackup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityGb'] = capacityGb;
    map['name'] = name;
    map['nfsExportOptions'] = Input.encodeList<
        GetInstanceFileShareNfsExportOption,
        Map<String, dynamic>>(nfsExportOptions, (value) => value.toMap());
    map['sourceBackup'] = sourceBackup;
    return map;
  }

  factory GetInstanceFileShare.fromMap(Map<String, dynamic> map) {
    return GetInstanceFileShare(
      capacityGb: map['capacityGb'] as int,
      name: map['name'] as String,
      nfsExportOptions: Input.decodeList<GetInstanceFileShareNfsExportOption>(
          map['nfsExportOptions'],
          (value) => GetInstanceFileShareNfsExportOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      sourceBackup: map['sourceBackup'] as String,
    );
  }
}
