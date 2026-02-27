// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../snapshot_snapshot_encryption_key/snapshot_snapshot_encryption_key.dart';
import '../snapshot_source_disk_encryption_key/snapshot_source_disk_encryption_key.dart';

/// The set of arguments for Snapshot.
class SnapshotArgs {
  /// Creates the new snapshot in the snapshot chain labeled with the
  /// specified name. The chain name must be 1-63 characters long and
  /// comply with RFC1035. This is an uncommon option only for advanced
  /// service owners who needs to create separate snapshot chains, for
  /// example, for chargeback tracking.  When you describe your snapshot
  /// resource, this field is visible only if it has a non-empty value.
  final Input<String>? chainName;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Whether to attempt an application consistent snapshot by informing the OS to prepare for the snapshot process.
  final Input<bool>? guestFlush;

  /// Labels to apply to this Snapshot.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Encrypts the snapshot using a customer-supplied encryption key.
  /// After you encrypt a snapshot using a customer-supplied key, you must
  /// provide the same key if you use the snapshot later. For example, you
  /// must provide the encryption key when you create a disk from the
  /// encrypted snapshot in a future request.
  /// Customer-supplied encryption keys do not protect access to metadata of
  /// the snapshot.
  /// If you do not provide an encryption key when creating the snapshot,
  /// then the snapshot will be encrypted using an automatically generated
  /// key and you do not need to provide a key to use the snapshot later.
  /// Structure is documented below.
  final Input<SnapshotSnapshotEncryptionKey>? snapshotEncryptionKey;

  /// Indicates the type of the snapshot.
  /// Possible values are: `ARCHIVE`, `STANDARD`.
  final Input<String>? snapshotType;

  /// A reference to the disk used to create this snapshot.
  final Input<String>? sourceDisk;

  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  final Input<SnapshotSourceDiskEncryptionKey>? sourceDiskEncryptionKey;

  /// A reference to the instant snapshot used to create this snapshot.
  final Input<String>? sourceInstantSnapshot;

  /// Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  final Input<List<String>>? storageLocations;

  /// A reference to the zone where the disk is hosted.
  final Input<String>? zone;

  SnapshotArgs({
    this.chainName,
    this.description,
    this.guestFlush,
    this.labels,
    this.name,
    this.project,
    this.snapshotEncryptionKey,
    this.snapshotType,
    this.sourceDisk,
    this.sourceDiskEncryptionKey,
    this.sourceInstantSnapshot,
    this.storageLocations,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final chainNameValue = chainName;
    if (chainNameValue != null) {
      map['chainName'] = chainNameValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final guestFlushValue = guestFlush;
    if (guestFlushValue != null) {
      map['guestFlush'] = guestFlushValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final snapshotEncryptionKeyValue = snapshotEncryptionKey;
    if (snapshotEncryptionKeyValue != null) {
      map['snapshotEncryptionKey'] = Input.mapOptionalInputValue<
              SnapshotSnapshotEncryptionKey, Map<String, dynamic>>(
          snapshotEncryptionKeyValue, (value) => value.toMap());
    }
    final snapshotTypeValue = snapshotType;
    if (snapshotTypeValue != null) {
      map['snapshotType'] = snapshotTypeValue;
    }
    final sourceDiskValue = sourceDisk;
    if (sourceDiskValue != null) {
      map['sourceDisk'] = sourceDiskValue;
    }
    final sourceDiskEncryptionKeyValue = sourceDiskEncryptionKey;
    if (sourceDiskEncryptionKeyValue != null) {
      map['sourceDiskEncryptionKey'] = Input.mapOptionalInputValue<
              SnapshotSourceDiskEncryptionKey, Map<String, dynamic>>(
          sourceDiskEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceInstantSnapshotValue = sourceInstantSnapshot;
    if (sourceInstantSnapshotValue != null) {
      map['sourceInstantSnapshot'] = sourceInstantSnapshotValue;
    }
    final storageLocationsValue = storageLocations;
    if (storageLocationsValue != null) {
      map['storageLocations'] = storageLocationsValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      chainName: Input.asOptionalInput<String>(map['chainName']),
      description: Input.asOptionalInput<String>(map['description']),
      guestFlush: Input.asOptionalInput<bool>(map['guestFlush']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      snapshotEncryptionKey:
          Input.asOptionalInput<SnapshotSnapshotEncryptionKey>(
              map['snapshotEncryptionKey']),
      snapshotType: Input.asOptionalInput<String>(map['snapshotType']),
      sourceDisk: Input.asOptionalInput<String>(map['sourceDisk']),
      sourceDiskEncryptionKey:
          Input.asOptionalInput<SnapshotSourceDiskEncryptionKey>(
              map['sourceDiskEncryptionKey']),
      sourceInstantSnapshot:
          Input.asOptionalInput<String>(map['sourceInstantSnapshot']),
      storageLocations:
          Input.asOptionalInput<List<String>>(map['storageLocations']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
