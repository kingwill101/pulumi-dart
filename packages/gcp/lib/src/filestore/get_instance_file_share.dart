// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_file_share_nfs_export_option.dart';

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

  /// Creates a new [GetInstanceFileShare].
  /// [capacityGb] File share capacity in GiB. This must be at least 1024 GiB
  /// [name] The name of a Filestore instance.
  /// [nfsExportOptions] Nfs Export Options. There is a limit of 10 export options per file share.
  /// [sourceBackup] The resource name of the backup, in the format
  GetInstanceFileShare({
    required this.capacityGb,
    required this.name,
    required this.nfsExportOptions,
    required this.sourceBackup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityGb': capacityGb,
      'name': name,
      'nfsExportOptions': pulumi.Input.encodeList<GetInstanceFileShareNfsExportOption, Map<String, dynamic>>(nfsExportOptions, (value) => value.toMap()),
      'sourceBackup': sourceBackup,
    };
  }

  factory GetInstanceFileShare.fromMap(Map<String, dynamic> map) {
    return GetInstanceFileShare(
      capacityGb: map['capacityGb'] as int,
      name: map['name'] as String,
      nfsExportOptions: pulumi.Input.decodeList<GetInstanceFileShareNfsExportOption>(map['nfsExportOptions'], (value) => GetInstanceFileShareNfsExportOption.fromMap((value as Map).cast<String, dynamic>())),
      sourceBackup: map['sourceBackup'] as String,
    );
  }
}

