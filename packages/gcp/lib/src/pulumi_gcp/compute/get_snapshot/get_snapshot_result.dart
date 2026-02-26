// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_snapshot_snapshot_encryption_key/get_snapshot_snapshot_encryption_key.dart';
import '../get_snapshot_source_disk_encryption_key/get_snapshot_source_disk_encryption_key.dart';

/// Result data returned by getSnapshot.
class GetSnapshotResult {
  final String chainName;
  final String creationTimestamp;
  final String description;
  final int diskSizeGb;
  final Map<String, String> effectiveLabels;
  final String? filter;
  final bool guestFlush;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String labelFingerprint;
  final Map<String, String> labels;
  final List<String> licenses;
  final bool? mostRecent;
  final String? name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String selfLink;
  final List<GetSnapshotSnapshotEncryptionKey> snapshotEncryptionKeys;
  final int snapshotId;
  final String snapshotType;
  final String sourceDisk;
  final List<GetSnapshotSourceDiskEncryptionKey> sourceDiskEncryptionKeys;
  final String sourceInstantSnapshot;
  final int storageBytes;
  final List<String> storageLocations;
  final String zone;

  GetSnapshotResult({
    required this.chainName,
    required this.creationTimestamp,
    required this.description,
    required this.diskSizeGb,
    required this.effectiveLabels,
    this.filter,
    required this.guestFlush,
    required this.id,
    required this.labelFingerprint,
    required this.labels,
    required this.licenses,
    this.mostRecent,
    this.name,
    this.project,
    required this.pulumiLabels,
    required this.selfLink,
    required this.snapshotEncryptionKeys,
    required this.snapshotId,
    required this.snapshotType,
    required this.sourceDisk,
    required this.sourceDiskEncryptionKeys,
    required this.sourceInstantSnapshot,
    required this.storageBytes,
    required this.storageLocations,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['chainName'] = chainName;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['diskSizeGb'] = diskSizeGb;
    map['effectiveLabels'] = effectiveLabels;
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    map['guestFlush'] = guestFlush;
    map['id'] = id;
    map['labelFingerprint'] = labelFingerprint;
    map['labels'] = labels;
    map['licenses'] = licenses;
    final mostRecentValue = mostRecent;
    if (mostRecentValue != null) {
      map['mostRecent'] = mostRecentValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['selfLink'] = selfLink;
    map['snapshotEncryptionKeys'] = Input.encodeList<
        GetSnapshotSnapshotEncryptionKey,
        Map<String, dynamic>>(snapshotEncryptionKeys, (value) => value.toMap());
    map['snapshotId'] = snapshotId;
    map['snapshotType'] = snapshotType;
    map['sourceDisk'] = sourceDisk;
    map['sourceDiskEncryptionKeys'] = Input.encodeList<
            GetSnapshotSourceDiskEncryptionKey, Map<String, dynamic>>(
        sourceDiskEncryptionKeys, (value) => value.toMap());
    map['sourceInstantSnapshot'] = sourceInstantSnapshot;
    map['storageBytes'] = storageBytes;
    map['storageLocations'] = storageLocations;
    map['zone'] = zone;
    return map;
  }

  factory GetSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetSnapshotResult(
      chainName: map['chainName'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      diskSizeGb: map['diskSizeGb'] as int,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      filter: map['filter'] == null ? null : map['filter'] as String,
      guestFlush: map['guestFlush'] as bool,
      id: map['id'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      licenses: (map['licenses'] as List).cast<String>(),
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      selfLink: map['selfLink'] as String,
      snapshotEncryptionKeys:
          Input.decodeList<GetSnapshotSnapshotEncryptionKey>(
              map['snapshotEncryptionKeys'],
              (value) => GetSnapshotSnapshotEncryptionKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      snapshotId: map['snapshotId'] as int,
      snapshotType: map['snapshotType'] as String,
      sourceDisk: map['sourceDisk'] as String,
      sourceDiskEncryptionKeys:
          Input.decodeList<GetSnapshotSourceDiskEncryptionKey>(
              map['sourceDiskEncryptionKeys'],
              (value) => GetSnapshotSourceDiskEncryptionKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceInstantSnapshot: map['sourceInstantSnapshot'] as String,
      storageBytes: map['storageBytes'] as int,
      storageLocations: (map['storageLocations'] as List).cast<String>(),
      zone: map['zone'] as String,
    );
  }
}
