// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'nfs_export_options2.dart';

/// The set of arguments for Share.
class ShareArgs {
  /// Immutable. Full name of the Cloud Filestore Backup resource that this Share is restored from, in the format of projects/{project_id}/locations/{location_id}/backups/{backup_id}. Empty, if the Share is created from scratch and not restored from a backup.
  final Input<String>? backup;

  /// File share capacity in gigabytes (GB). Filestore defines 1 GB as 1024^3 bytes. Must be greater than 0.
  final Input<String>? capacityGb;

  /// A description of the share with 2048 characters or less. Requests with longer descriptions will be rejected.
  final Input<String>? description;
  final Input<String> instanceId;

  /// Resource labels to represent user provided metadata.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The mount name of the share. Must be 63 characters or less and consist of uppercase or lowercase letters, numbers, and underscores.
  final Input<String>? mountName;

  /// Nfs Export Options. There is a limit of 10 export options per file share.
  final Input<List<NfsExportOptions2>>? nfsExportOptions;
  final Input<String>? project;

  /// Required. The ID to use for the share. The ID must be unique within the specified instance. This value must start with a lowercase letter followed by up to 62 lowercase letters, numbers, or hyphens, and cannot end with a hyphen.
  final Input<String> shareId;

  ShareArgs({
    this.backup,
    this.capacityGb,
    this.description,
    required this.instanceId,
    this.labels,
    this.location,
    this.mountName,
    this.nfsExportOptions,
    this.project,
    required this.shareId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupValue = backup;
    if (backupValue != null) {
      map['backup'] = backupValue;
    }
    final capacityGbValue = capacityGb;
    if (capacityGbValue != null) {
      map['capacityGb'] = capacityGbValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['instanceId'] = instanceId;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final mountNameValue = mountName;
    if (mountNameValue != null) {
      map['mountName'] = mountNameValue;
    }
    final nfsExportOptionsValue = nfsExportOptions;
    if (nfsExportOptionsValue != null) {
      map['nfsExportOptions'] = Input.mapOptionalInputValue<
              List<NfsExportOptions2>, List<Map<String, dynamic>>>(
          nfsExportOptionsValue,
          (value) => Input.encodeList<NfsExportOptions2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['shareId'] = shareId;
    return map;
  }

  factory ShareArgs.fromMap(Map<String, dynamic> map) {
    return ShareArgs(
      backup: Input.asOptionalInput<String>(map['backup']),
      capacityGb: Input.asOptionalInput<String>(map['capacityGb']),
      description: Input.asOptionalInput<String>(map['description']),
      instanceId: Input.asInput<String>(map['instanceId']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      mountName: Input.asOptionalInput<String>(map['mountName']),
      nfsExportOptions: Input.asOptionalInput<List<NfsExportOptions2>>(
          map['nfsExportOptions']),
      project: Input.asOptionalInput<String>(map['project']),
      shareId: Input.asInput<String>(map['shareId']),
    );
  }
}
