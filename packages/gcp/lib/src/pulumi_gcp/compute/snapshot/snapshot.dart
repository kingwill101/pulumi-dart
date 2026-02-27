import 'package:pulumi/pulumi.dart';
import '../snapshot_snapshot_encryption_key/snapshot_snapshot_encryption_key.dart';
import '../snapshot_source_disk_encryption_key/snapshot_source_disk_encryption_key.dart';
import 'snapshot_args.dart';

/// Represents a Persistent Disk Snapshot resource.
///
/// Use snapshots to back up data from your persistent disks. Snapshots are
/// different from public images and custom images, which are used primarily
/// to create instances or configure instance templates. Snapshots are useful
/// for periodic backup of the data on your persistent disks. You can create
/// snapshots from persistent disks even while they are attached to running
/// instances.
///
/// Snapshots are incremental, so you can create regular snapshots on a
/// persistent disk faster and at a much lower cost than if you regularly
/// created a full image of the disk.
///
///
/// To get more information about Snapshot, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/snapshots)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/disks/create-snapshots)
///
/// > **Warning:** All arguments including the following potentially sensitive
/// values will be stored in the raw state as plain text: `snapshot_encryption_key.raw_key`, `snapshot_encryption_key.rsa_encrypted_key`, `source_disk_encryption_key.raw_key`, `source_disk_encryption_key.rsa_encrypted_key`.
///
/// ## Example Usage
///
/// ### Snapshot Basic
///
///
///
/// ### Snapshot Basic2
///
///
///
/// ### Snapshot Basic Source Instant Snapshot
///
///
///
/// ### Snapshot Chainname
///
///
///
///
/// ## Import
///
/// Snapshot can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/snapshots/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Snapshot can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/snapshot:Snapshot default projects/{{project}}/global/snapshots/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/snapshot:Snapshot default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/snapshot:Snapshot default {{name}}
/// ```
class Snapshot extends CustomResource {
  /// Creates the new snapshot in the snapshot chain labeled with the
  /// specified name. The chain name must be 1-63 characters long and
  /// comply with RFC1035. This is an uncommon option only for advanced
  /// service owners who needs to create separate snapshot chains, for
  /// example, for chargeback tracking.  When you describe your snapshot
  /// resource, this field is visible only if it has a non-empty value.
  late final Output<String?> chainName;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Size of the snapshot, specified in GB.
  late final Output<int> diskSizeGb;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Whether to attempt an application consistent snapshot by informing the OS to prepare for the snapshot process.
  late final Output<bool?> guestFlush;

  /// The fingerprint used for optimistic locking of this resource. Used
  /// internally during updates.
  late final Output<String> labelFingerprint;

  /// Labels to apply to this Snapshot.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// A list of public visible licenses that apply to this snapshot. This
  /// can be because the original image had licenses attached (such as a
  /// Windows image).  snapshotEncryptionKey nested object Encrypts the
  /// snapshot using a customer-supplied encryption key.
  late final Output<List<String>> licenses;

  /// Name of the resource; provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The URI of the created resource.
  late final Output<String> selfLink;

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
  late final Output<SnapshotSnapshotEncryptionKey?> snapshotEncryptionKey;

  /// The unique identifier for the resource.
  late final Output<int> snapshotId;

  /// Indicates the type of the snapshot.
  /// Possible values are: `ARCHIVE`, `STANDARD`.
  late final Output<String?> snapshotType;

  /// A reference to the disk used to create this snapshot.
  late final Output<String> sourceDisk;

  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  late final Output<SnapshotSourceDiskEncryptionKey?> sourceDiskEncryptionKey;

  /// A reference to the instant snapshot used to create this snapshot.
  late final Output<String?> sourceInstantSnapshot;

  /// A size of the storage used by the snapshot. As snapshots share
  /// storage, this number is expected to change with snapshot
  /// creation/deletion.
  late final Output<int> storageBytes;

  /// Cloud Storage bucket storage location of the snapshot (regional or multi-regional).
  late final Output<List<String>> storageLocations;

  /// A reference to the zone where the disk is hosted.
  late final Output<String> zone;

  Snapshot(
    String name, {
    SnapshotArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/snapshot:Snapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.chainName = registerOutput<String?>('chainName');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.diskSizeGb = registerOutput<int>('diskSizeGb');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.guestFlush = registerOutput<bool?>('guestFlush');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.licenses = registerOutput<List<String>>('licenses');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.selfLink = registerOutput<String>('selfLink');
    this.snapshotEncryptionKey =
        registerOutput<SnapshotSnapshotEncryptionKey?>('snapshotEncryptionKey');
    this.snapshotId = registerOutput<int>('snapshotId');
    this.snapshotType = registerOutput<String?>('snapshotType');
    this.sourceDisk = registerOutput<String>('sourceDisk');
    this.sourceDiskEncryptionKey =
        registerOutput<SnapshotSourceDiskEncryptionKey?>(
            'sourceDiskEncryptionKey');
    this.sourceInstantSnapshot =
        registerOutput<String?>('sourceInstantSnapshot');
    this.storageBytes = registerOutput<int>('storageBytes');
    this.storageLocations = registerOutput<List<String>>('storageLocations');
    this.zone = registerOutput<String>('zone');
  }
}
