// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_snapshot_encryption_key.dart';
import 'snapshot_source_disk_encryption_key.dart';

/// {@template pulumi_compute_snapshot_snapshot_args_doc}
/// The set of arguments for Snapshot.
/// {@endtemplate}
/// {@macro pulumi_compute_snapshot_snapshot_args_doc}
class SnapshotArgs {
  /// Creates the new snapshot in the snapshot chain labeled with the
  /// specified name. The chain name must be 1-63 characters long and
  /// comply with RFC1035. This is an uncommon option only for advanced
  /// service owners who needs to create separate snapshot chains, for
  /// example, for chargeback tracking.  When you describe your snapshot
  /// resource, this field is visible only if it has a non-empty value.
  final pulumi.Input<String>? chainName;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Whether to attempt an application consistent snapshot by informing the OS to prepare for the snapshot process.
  final pulumi.Input<bool>? guestFlush;

  /// Labels to apply to this Snapshot.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

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
  final pulumi.Input<SnapshotSnapshotEncryptionKey>? snapshotEncryptionKey;

  /// Indicates the type of the snapshot.
  /// Possible values are: `ARCHIVE`, `STANDARD`.
  final pulumi.Input<String>? snapshotType;

  /// A reference to the disk used to create this snapshot.
  final pulumi.Input<String>? sourceDisk;

  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  final pulumi.Input<SnapshotSourceDiskEncryptionKey>? sourceDiskEncryptionKey;

  /// A reference to the instant snapshot used to create this snapshot.
  final pulumi.Input<String>? sourceInstantSnapshot;

  /// Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  final pulumi.Input<List<String>>? storageLocations;

  /// A reference to the zone where the disk is hosted.
  final pulumi.Input<String>? zone;

  /// Creates a new [SnapshotArgs].
  /// [chainName] Creates the new snapshot in the snapshot chain labeled with the
  /// [description] An optional description of this resource.
  /// [guestFlush] Whether to attempt an application consistent snapshot by informing the OS to prepare for the snapshot process.
  /// [labels] Labels to apply to this Snapshot.
  /// [name] Name of the resource; provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [snapshotEncryptionKey] Encrypts the snapshot using a customer-supplied encryption key.
  /// [snapshotType] Indicates the type of the snapshot.
  /// [sourceDisk] A reference to the disk used to create this snapshot.
  /// [sourceDiskEncryptionKey] The customer-supplied encryption key of the source snapshot. Required
  /// [sourceInstantSnapshot] A reference to the instant snapshot used to create this snapshot.
  /// [storageLocations] Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  /// [zone] A reference to the zone where the disk is hosted.
  SnapshotArgs({
    String? chainName,
    String? description,
    bool? guestFlush,
    Map<String, String>? labels,
    String? name,
    String? project,
    SnapshotSnapshotEncryptionKey? snapshotEncryptionKey,
    String? snapshotType,
    String? sourceDisk,
    SnapshotSourceDiskEncryptionKey? sourceDiskEncryptionKey,
    String? sourceInstantSnapshot,
    List<String>? storageLocations,
    String? zone,
  }) : chainName = pulumi.Input.asOptionalInput<String>(chainName),
       description = pulumi.Input.asOptionalInput<String>(description),
       guestFlush = pulumi.Input.asOptionalInput<bool>(guestFlush),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       snapshotEncryptionKey =
           pulumi.Input.asOptionalInput<SnapshotSnapshotEncryptionKey>(
             snapshotEncryptionKey,
           ),
       snapshotType = pulumi.Input.asOptionalInput<String>(snapshotType),
       sourceDisk = pulumi.Input.asOptionalInput<String>(sourceDisk),
       sourceDiskEncryptionKey =
           pulumi.Input.asOptionalInput<SnapshotSourceDiskEncryptionKey>(
             sourceDiskEncryptionKey,
           ),
       sourceInstantSnapshot = pulumi.Input.asOptionalInput<String>(
         sourceInstantSnapshot,
       ),
       storageLocations = pulumi.Input.asOptionalInput<List<String>>(
         storageLocations,
       ),
       zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chainName': ?chainName,
      'description': ?description,
      'guestFlush': ?guestFlush,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'snapshotEncryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            SnapshotSnapshotEncryptionKey,
            Map<String, dynamic>
          >(snapshotEncryptionKey, (value) => value.toMap()),
      'snapshotType': ?snapshotType,
      'sourceDisk': ?sourceDisk,
      'sourceDiskEncryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            SnapshotSourceDiskEncryptionKey,
            Map<String, dynamic>
          >(sourceDiskEncryptionKey, (value) => value.toMap()),
      'sourceInstantSnapshot': ?sourceInstantSnapshot,
      'storageLocations': ?storageLocations,
      'zone': ?zone,
    };
  }

  factory SnapshotArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs(
      chainName: map['chainName'] == null ? null : map['chainName'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      guestFlush: map['guestFlush'] == null ? null : map['guestFlush'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      snapshotEncryptionKey: map['snapshotEncryptionKey'] == null
          ? null
          : SnapshotSnapshotEncryptionKey.fromMap(
              (map['snapshotEncryptionKey'] as Map).cast<String, dynamic>(),
            ),
      snapshotType: map['snapshotType'] == null
          ? null
          : map['snapshotType'] as String,
      sourceDisk: map['sourceDisk'] == null
          ? null
          : map['sourceDisk'] as String,
      sourceDiskEncryptionKey: map['sourceDiskEncryptionKey'] == null
          ? null
          : SnapshotSourceDiskEncryptionKey.fromMap(
              (map['sourceDiskEncryptionKey'] as Map).cast<String, dynamic>(),
            ),
      sourceInstantSnapshot: map['sourceInstantSnapshot'] == null
          ? null
          : map['sourceInstantSnapshot'] as String,
      storageLocations: map['storageLocations'] == null
          ? null
          : (map['storageLocations'] as List).cast<String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
