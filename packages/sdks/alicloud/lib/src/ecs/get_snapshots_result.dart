// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_snapshots_snapshot.dart';

/// Result data returned by getSnapshots.
class GetSnapshotsResult {
  final String? category;
  final bool? dryRun;
  /// Whether the snapshot is encrypted or not.
  final bool? encrypted;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of snapshot IDs.
  final List<String> ids;
  final String? kmsKeyId;
  final String? nameRegex;
  /// A list of snapshots names.
  final List<String> names;
  final String? outputFile;
  final String? resourceGroupId;
  final String? snapshotLinkId;
  final String? snapshotName;
  final String? snapshotType;
  /// A list of snapshots. Each element contains the following attributes:
  final List<GetSnapshotsSnapshot> snapshots;
  /// Source disk attribute. Value range: `System`,`Data`.
  final String? sourceDiskType;
  /// The snapshot status. Value range: `progressing`, `accomplished` and `failed`.
  final String? status;
  /// A map of tags assigned to the snapshot.
  final Map<String, String>? tags;
  final String? type;
  /// Whether the snapshots are used to create resources or not. Value range: `image`, `disk`, `image_disk` and `none`.
  final String? usage;

  /// Creates a new [GetSnapshotsResult].
  /// [category] Optional.
  /// [dryRun] Optional.
  /// [encrypted] Whether the snapshot is encrypted or not.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of snapshot IDs.
  /// [kmsKeyId] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of snapshots names.
  /// [outputFile] Optional.
  /// [resourceGroupId] Optional.
  /// [snapshotLinkId] Optional.
  /// [snapshotName] Optional.
  /// [snapshotType] Optional.
  /// [snapshots] A list of snapshots. Each element contains the following attributes:
  /// [sourceDiskType] Source disk attribute. Value range: `System`,`Data`.
  /// [status] The snapshot status. Value range: `progressing`, `accomplished` and `failed`.
  /// [tags] A map of tags assigned to the snapshot.
  /// [type] Optional.
  /// [usage] Whether the snapshots are used to create resources or not. Value range: `image`, `disk`, `image_disk` and `none`.
  GetSnapshotsResult({
    this.category,
    this.dryRun,
    this.encrypted,
    required this.id,
    required this.ids,
    this.kmsKeyId,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.resourceGroupId,
    this.snapshotLinkId,
    this.snapshotName,
    this.snapshotType,
    required this.snapshots,
    this.sourceDiskType,
    this.status,
    this.tags,
    this.type,
    this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'dryRun': ?dryRun,
      'encrypted': ?encrypted,
      'id': id,
      'ids': ids,
      'kmsKeyId': ?kmsKeyId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'snapshotLinkId': ?snapshotLinkId,
      'snapshotName': ?snapshotName,
      'snapshotType': ?snapshotType,
      'snapshots': pulumi.Input.encodeList<GetSnapshotsSnapshot, Map<String, dynamic>>(snapshots, (value) => value.toMap()),
      'sourceDiskType': ?sourceDiskType,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
      'usage': ?usage,
    };
  }

  factory GetSnapshotsResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsResult(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      encrypted: (() { final guardedValue = map['encrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotLinkId: (() { final guardedValue = map['snapshotLinkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotName: (() { final guardedValue = map['snapshotName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotType: (() { final guardedValue = map['snapshotType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshots: pulumi.Input.decodeList<GetSnapshotsSnapshot>(map['snapshots']!, (value) => GetSnapshotsSnapshot.fromMap((value as Map).cast<String, dynamic>())),
      sourceDiskType: (() { final guardedValue = map['sourceDiskType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      usage: (() { final guardedValue = map['usage']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

