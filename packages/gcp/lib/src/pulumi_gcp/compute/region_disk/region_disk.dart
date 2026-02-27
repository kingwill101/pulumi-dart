import 'package:pulumi/pulumi.dart' as pulumi;
import '../region_disk_async_primary_disk/region_disk_async_primary_disk.dart';
import '../region_disk_disk_encryption_key/region_disk_disk_encryption_key.dart';
import '../region_disk_guest_os_feature/region_disk_guest_os_feature.dart';
import '../region_disk_source_snapshot_encryption_key/region_disk_source_snapshot_encryption_key.dart';
import 'region_disk_args.dart';

/// Persistent disks are durable storage devices that function similarly to
/// the physical disks in a desktop or a server. Compute Engine manages the
/// hardware behind these devices to ensure data redundancy and optimize
/// performance for you. Persistent disks are available as either standard
/// hard disk drives (HDD) or solid-state drives (SSD).
///
/// Persistent disks are located independently from your virtual machine
/// instances, so you can detach or move persistent disks to keep your data
/// even after you delete your instances. Persistent disk performance scales
/// automatically with size, so you can resize your existing persistent disks
/// or add more persistent disks to an instance to meet your performance and
/// storage space requirements.
///
/// Add a persistent disk to your instance when you need reliable and
/// affordable storage with consistent performance characteristics.
///
///
/// To get more information about RegionDisk, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionDisks)
/// * How-to Guides
/// * [Adding or Resizing Regional Persistent Disks](https://cloud.google.com/compute/docs/disks/regional-persistent-disk)
///
/// > **Warning:** All arguments including the following potentially sensitive
/// values will be stored in the raw state as plain text: `disk_encryption_key.raw_key`, `disk_encryption_key.rsa_encrypted_key`.
///
/// ## Example Usage
///
/// ### Region Disk Basic
///
///
///
/// ### Region Disk Async
///
///
///
/// ### Region Disk Features
///
///
///
/// ### Region Disk Hyperdisk Balanced Ha Write Many
///
///
///
///
/// ## Import
///
/// RegionDisk can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/disks/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionDisk can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionDisk:RegionDisk default projects/{{project}}/regions/{{region}}/disks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionDisk:RegionDisk default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionDisk:RegionDisk default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionDisk:RegionDisk default {{name}}
/// ```
class RegionDisk extends pulumi.CustomResource {
  /// The access mode of the disk.
  /// For example:
  /// * READ_WRITE_SINGLE: The default AccessMode, means the disk can be attached to single instance in RW mode.
  /// * READ_WRITE_MANY: The AccessMode means the disk can be attached to multiple instances in RW mode.
  /// * READ_ONLY_SINGLE: The AccessMode means the disk can be attached to multiple instances in RO mode.
  /// The AccessMode is only valid for Hyperdisk disk types.
  late final pulumi.Output<String> accessMode;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionDiskAsyncPrimaryDisk?> asyncPrimaryDisk;

  /// If set to true, a snapshot of the disk will be created before it is destroyed.
  /// If your disk is encrypted with customer managed encryption keys these will be reused for the snapshot creation.
  /// The name of the snapshot by default will be `{{disk-name}}-YYYYMMDD-HHmm`
  late final pulumi.Output<bool?> createSnapshotBeforeDestroy;

  /// This will set a custom name prefix for the snapshot that's created when the disk is deleted.
  late final pulumi.Output<String?> createSnapshotBeforeDestroyPrefix;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;

  /// Encrypts the disk using a customer-supplied encryption key.
  /// After you encrypt a disk with a customer-supplied key, you must
  /// provide the same key if you use the disk later (e.g. to create a disk
  /// snapshot or an image, or to attach the disk to a virtual machine).
  /// Customer-supplied encryption keys do not protect access to metadata of
  /// the disk.
  /// If you do not provide an encryption key when creating the disk, then
  /// the disk will be encrypted using an automatically generated key and
  /// you do not need to provide a key to use the disk later.
  /// Structure is documented below.
  late final pulumi.Output<RegionDiskDiskEncryptionKey?> diskEncryptionKey;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> diskId;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// A list of features to enable on the guest operating system.
  /// Applicable only for bootable disks.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionDiskGuestOsFeature>> guestOsFeatures;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  ///
  /// > **Warning:** `interface` is deprecated and will be removed in a future major release. This field is no longer used and can be safely removed from your configurations; disk interfaces are automatically determined on attachment.
  late final pulumi.Output<String?> interface;

  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  late final pulumi.Output<String> labelFingerprint;

  /// Labels to apply to this disk.  A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Last attach timestamp in RFC3339 text format.
  late final pulumi.Output<String> lastAttachTimestamp;

  /// Last detach timestamp in RFC3339 text format.
  late final pulumi.Output<String> lastDetachTimestamp;

  /// Any applicable license URI.
  late final pulumi.Output<List<String>> licenses;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// Physical block size of the persistent disk, in bytes. If not present
  /// in a request, a default value is used. Currently supported sizes
  /// are 4096 and 16384, other sizes may be added in the future.
  /// If an unsupported value is requested, the error message will list
  /// the supported values for the caller's project.
  late final pulumi.Output<int> physicalBlockSizeBytes;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second
  /// that the disk can handle. Values must be between 10,000 and 120,000.
  /// For more details, see the Extreme persistent disk [documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk).
  late final pulumi.Output<int> provisionedIops;

  /// Indicates how much throughput to provision for the disk. This sets the number of throughput
  /// mb per second that the disk can handle. Values must be greater than or equal to 1.
  late final pulumi.Output<int> provisionedThroughput;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// A reference to the region where the disk resides.
  late final pulumi.Output<String> region;

  /// URLs of the zones where the disk should be replicated to.
  late final pulumi.Output<List<String>> replicaZones;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Size of the persistent disk, specified in GB. You can specify this
  /// field when creating a persistent disk using the sourceImage or
  /// sourceSnapshot parameter, or specify it alone to create an empty
  /// persistent disk.
  /// If you specify this field along with sourceImage or sourceSnapshot,
  /// the value of sizeGb must not be less than the size of the sourceImage
  /// or the size of the snapshot.
  late final pulumi.Output<int> size;

  /// The source snapshot used to create this disk. You can provide this as
  /// a partial or full URL to the resource. For example, the following are
  /// valid values:
  /// * `https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot`
  /// * `projects/project/global/snapshots/snapshot`
  /// * `global/snapshots/snapshot`
  late final pulumi.Output<String?> snapshot;

  /// The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
  /// For example, the following are valid values:
  /// * https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/disks/{disk}
  /// * https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/disks/{disk}
  /// * projects/{project}/zones/{zone}/disks/{disk}
  /// * projects/{project}/regions/{region}/disks/{disk}
  /// * zones/{zone}/disks/{disk}
  /// * regions/{region}/disks/{disk}
  late final pulumi.Output<String?> sourceDisk;

  /// The ID value of the disk used to create this image. This value may
  /// be used to determine whether the image was taken from the current
  /// or a previous instance of a given disk name.
  late final pulumi.Output<String> sourceDiskId;

  /// The customer-supplied encryption key of the source snapshot. Required
  /// if the source snapshot is protected by a customer-supplied encryption
  /// key.
  /// Structure is documented below.
  late final pulumi.Output<RegionDiskSourceSnapshotEncryptionKey?>
      sourceSnapshotEncryptionKey;

  /// The unique ID of the snapshot used to create this disk. This value
  /// identifies the exact snapshot that was used to create this persistent
  /// disk. For example, if you created the persistent disk from a snapshot
  /// that was later deleted and recreated under the same name, the source
  /// snapshot ID would identify the exact version of the snapshot that was
  /// used.
  late final pulumi.Output<String> sourceSnapshotId;

  /// URL of the disk type resource describing which disk type to use to
  /// create the disk. Provide this when creating the disk.
  late final pulumi.Output<String?> type;

  /// Links to the users of the disk (attached instances) in form:
  /// project/zones/zone/instances/instance
  late final pulumi.Output<List<String>> users;

  RegionDisk(
    String name, {
    RegionDiskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionDisk:RegionDisk',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessMode = registerOutput<String>('accessMode');
    this.asyncPrimaryDisk =
        registerOutput<RegionDiskAsyncPrimaryDisk?>('asyncPrimaryDisk');
    this.createSnapshotBeforeDestroy =
        registerOutput<bool?>('createSnapshotBeforeDestroy');
    this.createSnapshotBeforeDestroyPrefix =
        registerOutput<String?>('createSnapshotBeforeDestroyPrefix');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.diskEncryptionKey =
        registerOutput<RegionDiskDiskEncryptionKey?>('diskEncryptionKey');
    this.diskId = registerOutput<String>('diskId');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.guestOsFeatures =
        registerOutput<List<RegionDiskGuestOsFeature>>('guestOsFeatures');
    this.interface = registerOutput<String?>('interface');
    this.labelFingerprint = registerOutput<String>('labelFingerprint');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.lastAttachTimestamp = registerOutput<String>('lastAttachTimestamp');
    this.lastDetachTimestamp = registerOutput<String>('lastDetachTimestamp');
    this.licenses = registerOutput<List<String>>('licenses');
    this.name = registerOutput<String>('name');
    this.physicalBlockSizeBytes = registerOutput<int>('physicalBlockSizeBytes');
    this.project = registerOutput<String>('project');
    this.provisionedIops = registerOutput<int>('provisionedIops');
    this.provisionedThroughput = registerOutput<int>('provisionedThroughput');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.replicaZones = registerOutput<List<String>>('replicaZones');
    this.selfLink = registerOutput<String>('selfLink');
    this.size = registerOutput<int>('size');
    this.snapshot = registerOutput<String?>('snapshot');
    this.sourceDisk = registerOutput<String?>('sourceDisk');
    this.sourceDiskId = registerOutput<String>('sourceDiskId');
    this.sourceSnapshotEncryptionKey =
        registerOutput<RegionDiskSourceSnapshotEncryptionKey?>(
            'sourceSnapshotEncryptionKey');
    this.sourceSnapshotId = registerOutput<String>('sourceSnapshotId');
    this.type = registerOutput<String?>('type');
    this.users = registerOutput<List<String>>('users');
  }
}
