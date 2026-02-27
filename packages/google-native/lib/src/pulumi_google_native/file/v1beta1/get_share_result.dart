// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'nfs_export_options_response2.dart';

/// Result data returned by getShare.
class GetShareResult {
  /// Immutable. Full name of the Cloud Filestore Backup resource that this Share is restored from, in the format of projects/{project_id}/locations/{location_id}/backups/{backup_id}. Empty, if the Share is created from scratch and not restored from a backup.
  final String backup;

  /// File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes. Must be greater than 0.
  final String capacityGb;

  /// The time when the share was created.
  final String createTime;

  /// A description of the share with 2048 characters or less. Requests with longer descriptions will be rejected.
  final String description;

  /// Resource labels to represent user provided metadata.
  final Map<String, String> labels;

  /// The mount name of the share. Must be 63 characters or less and consist of uppercase or lowercase letters, numbers, and underscores.
  final String mountName;

  /// The resource name of the share, in the format `projects/{project_id}/locations/{location_id}/instances/{instance_id}/shares/{share_id}`.
  final String name;

  /// Nfs Export Options. There is a limit of 10 export options per file share.
  final List<NfsExportOptionsResponse2> nfsExportOptions;

  /// The share state.
  final String state;

  GetShareResult({
    required this.backup,
    required this.capacityGb,
    required this.createTime,
    required this.description,
    required this.labels,
    required this.mountName,
    required this.name,
    required this.nfsExportOptions,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backup'] = backup;
    map['capacityGb'] = capacityGb;
    map['createTime'] = createTime;
    map['description'] = description;
    map['labels'] = labels;
    map['mountName'] = mountName;
    map['name'] = name;
    map['nfsExportOptions'] =
        Input.encodeList<NfsExportOptionsResponse2, Map<String, dynamic>>(
            nfsExportOptions, (value) => value.toMap());
    map['state'] = state;
    return map;
  }

  factory GetShareResult.fromMap(Map<String, dynamic> map) {
    return GetShareResult(
      backup: map['backup'] as String,
      capacityGb: map['capacityGb'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      mountName: map['mountName'] as String,
      name: map['name'] as String,
      nfsExportOptions: Input.decodeList<NfsExportOptionsResponse2>(
          map['nfsExportOptions'],
          (value) => NfsExportOptionsResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
    );
  }
}
