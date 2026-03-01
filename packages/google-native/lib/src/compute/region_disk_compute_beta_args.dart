// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_encryption_key_compute_beta.dart';
import 'disk_async_replication_compute_beta.dart';
import 'disk_params_compute_beta.dart';
import 'guest_os_feature_compute_beta.dart';
import 'region_disk_architecture_compute_beta.dart';
import 'region_disk_interface_compute_beta.dart';
import 'region_disk_storage_type_compute_beta.dart';

/// {@template pulumi_compute_beta_region_disk_compute_beta_args_doc}
/// The set of arguments for RegionDisk.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_region_disk_compute_beta_args_doc}
class RegionDiskComputeBetaArgs {
  /// The architecture of the disk. Valid values are ARM64 or X86_64.
  final pulumi.Input<RegionDiskArchitectureComputeBeta>? architecture;

  /// Disk asynchronously replicated into this disk.
  final pulumi.Input<DiskAsyncReplicationComputeBeta>? asyncPrimaryDisk;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Encrypts the disk using a customer-supplied encryption key or a customer-managed encryption key. Encryption keys do not protect access to metadata of the disk. After you encrypt a disk with a customer-supplied key, you must provide the same key if you use the disk later. For example, to create a disk snapshot, to create a disk image, to create a machine image, or to attach the disk to a virtual machine. After you encrypt a disk with a customer-managed key, the diskEncryptionKey.kmsKeyName is set to a key *version* name once the disk is created. The disk is encrypted with this version of the key. In the response, diskEncryptionKey.kmsKeyName appears in the following format: "diskEncryptionKey.kmsKeyName": "projects/kms_project_id/locations/region/keyRings/ key_region/cryptoKeys/key /cryptoKeysVersions/version If you do not provide an encryption key when creating the disk, then the disk is encrypted using an automatically generated key and you don't need to provide a key to use the disk later.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>? diskEncryptionKey;

  /// Whether this disk is using confidential compute mode.
  final pulumi.Input<bool>? enableConfidentialCompute;

  /// Specifies whether the disk restored from a source snapshot should erase Windows specific VSS signature.
  final pulumi.Input<bool>? eraseWindowsVssSignature;

  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  final pulumi.Input<List<GuestOsFeatureComputeBeta>>? guestOsFeatures;

  /// [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  final pulumi.Input<RegionDiskInterfaceComputeBeta>? interface;

  /// Labels to apply to this disk. These can be later modified by the setLabels method.
  final pulumi.Input<Map<String, String>>? labels;

  /// Integer license codes indicating which licenses are attached to this disk.
  final pulumi.Input<List<String>>? licenseCodes;

  /// A list of publicly visible licenses. Reserved for Google's use.
  final pulumi.Input<List<String>>? licenses;

  /// An opaque location hint used to place the disk close to other resources. This field is for use by internal tools that use the public API.
  final pulumi.Input<String>? locationHint;

  /// Indicates whether or not the disk can be read/write attached to more than one instance.
  final pulumi.Input<bool>? multiWriter;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// Internal use only.
  final pulumi.Input<String>? options;

  /// Input only. [Input Only] Additional params passed with the request, but not persisted as part of resource payload.
  final pulumi.Input<DiskParamsComputeBeta>? params;

  /// Physical block size of the persistent disk, in bytes. If not present in a request, a default value is used. The currently supported size is 4096, other sizes may be added in the future. If an unsupported value is requested, the error message will list the supported values for the caller's project.
  final pulumi.Input<String>? physicalBlockSizeBytes;
  final pulumi.Input<String>? project;

  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Values must be between 10,000 and 120,000. For more details, see the Extreme persistent disk documentation.
  final pulumi.Input<String>? provisionedIops;

  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. Values must be between 1 and 7,124.
  final pulumi.Input<String>? provisionedThroughput;
  final pulumi.Input<String> region;

  /// URLs of the zones where the disk should be replicated to. Only applicable for regional resources.
  final pulumi.Input<List<String>>? replicaZones;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Resource policies applied to this disk for automatic snapshot creations.
  final pulumi.Input<List<String>>? resourcePolicies;

  /// Size, in GB, of the persistent disk. You can specify this field when creating a persistent disk using the sourceImage, sourceSnapshot, or sourceDisk parameter, or specify it alone to create an empty persistent disk. If you specify this field along with a source, the value of sizeGb must not be less than the size of the source. Acceptable values are greater than 0.
  final pulumi.Input<String>? sizeGb;

  /// The source disk used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - https://www.googleapis.com/compute/v1/projects/project/regions/region /disks/disk - projects/project/zones/zone/disks/disk - projects/project/regions/region/disks/disk - zones/zone/disks/disk - regions/region/disks/disk
  final pulumi.Input<String>? sourceDisk;

  /// The source image used to create this disk. If the source image is deleted, this field will not be set. To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-9 to use the latest Debian 9 image: projects/debian-cloud/global/images/family/debian-9 Alternatively, use a specific version of a public operating system image: projects/debian-cloud/global/images/debian-9-stretch-vYYYYMMDD To create a disk with a custom image that you created, specify the image name in the following format: global/images/my-custom-image You can also specify a custom image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name: global/images/family/my-image-family
  final pulumi.Input<String>? sourceImage;

  /// The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>?
  sourceImageEncryptionKey;

  /// The source instant snapshot used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instantSnapshots/instantSnapshot - projects/project/zones/zone/instantSnapshots/instantSnapshot - zones/zone/instantSnapshots/instantSnapshot
  final pulumi.Input<String>? sourceInstantSnapshot;

  /// The source snapshot used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project /global/snapshots/snapshot - projects/project/global/snapshots/snapshot - global/snapshots/snapshot
  final pulumi.Input<String>? sourceSnapshot;

  /// The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
  final pulumi.Input<CustomerEncryptionKeyComputeBeta>?
  sourceSnapshotEncryptionKey;

  /// The full Google Cloud Storage URI where the disk image is stored. This file must be a gzip-compressed tarball whose name ends in .tar.gz or virtual machine disk whose name ends in vmdk. Valid URIs may start with gs:// or https://storage.googleapis.com/. This flag is not optimized for creating multiple disks from a source storage object. To create many disks from a source storage object, use gcloud compute images import instead.
  final pulumi.Input<String>? sourceStorageObject;

  /// [Deprecated] Storage type of the persistent disk.
  final pulumi.Input<RegionDiskStorageTypeComputeBeta>? storageType;

  /// URL of the disk type resource describing which disk type to use to create the disk. Provide this when creating the disk. For example: projects/project /zones/zone/diskTypes/pd-ssd . See Persistent disk types.
  final pulumi.Input<String>? type;

  /// A list of publicly visible user-licenses. Unlike regular licenses, user provided licenses can be modified after the disk is created. This includes a list of URLs to the license resource. For example, to provide a debian license: https://www.googleapis.com/compute/v1/projects/debian-cloud/global/licenses/debian-9-stretch
  final pulumi.Input<List<String>>? userLicenses;

  /// Creates a new [RegionDiskComputeBetaArgs].
  /// [architecture] The architecture of the disk. Valid values are ARM64 or X86_64.
  /// [asyncPrimaryDisk] Disk asynchronously replicated into this disk.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [diskEncryptionKey] Encrypts the disk using a customer-supplied encryption key or a customer-managed encryption key. Encryption keys do not protect access to metadata of the disk. After you encrypt a disk with a customer-supplied key, you must provide the same key if you use the disk later. For example, to create a disk snapshot, to create a disk image, to create a machine image, or to attach the disk to a virtual machine. After you encrypt a disk with a customer-managed key, the diskEncryptionKey.kmsKeyName is set to a key *version* name once the disk is created. The disk is encrypted with this version of the key. In the response, diskEncryptionKey.kmsKeyName appears in the following format: "diskEncryptionKey.kmsKeyName": "projects/kms_project_id/locations/region/keyRings/ key_region/cryptoKeys/key /cryptoKeysVersions/version If you do not provide an encryption key when creating the disk, then the disk is encrypted using an automatically generated key and you don't need to provide a key to use the disk later.
  /// [enableConfidentialCompute] Whether this disk is using confidential compute mode.
  /// [eraseWindowsVssSignature] Specifies whether the disk restored from a source snapshot should erase Windows specific VSS signature.
  /// [guestOsFeatures] A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  /// [interface] [Deprecated] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI.
  /// [labels] Labels to apply to this disk. These can be later modified by the setLabels method.
  /// [licenseCodes] Integer license codes indicating which licenses are attached to this disk.
  /// [licenses] A list of publicly visible licenses. Reserved for Google's use.
  /// [locationHint] An opaque location hint used to place the disk close to other resources. This field is for use by internal tools that use the public API.
  /// [multiWriter] Indicates whether or not the disk can be read/write attached to more than one instance.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [options] Internal use only.
  /// [params] Input only. [Input Only] Additional params passed with the request, but not persisted as part of resource payload.
  /// [physicalBlockSizeBytes] Physical block size of the persistent disk, in bytes. If not present in a request, a default value is used. The currently supported size is 4096, other sizes may be added in the future. If an unsupported value is requested, the error message will list the supported values for the caller's project.
  /// [project] Optional.
  /// [provisionedIops] Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Values must be between 10,000 and 120,000. For more details, see the Extreme persistent disk documentation.
  /// [provisionedThroughput] Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. Values must be between 1 and 7,124.
  /// [region] Required.
  /// [replicaZones] URLs of the zones where the disk should be replicated to. Only applicable for regional resources.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [resourcePolicies] Resource policies applied to this disk for automatic snapshot creations.
  /// [sizeGb] Size, in GB, of the persistent disk. You can specify this field when creating a persistent disk using the sourceImage, sourceSnapshot, or sourceDisk parameter, or specify it alone to create an empty persistent disk. If you specify this field along with a source, the value of sizeGb must not be less than the size of the source. Acceptable values are greater than 0.
  /// [sourceDisk] The source disk used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - https://www.googleapis.com/compute/v1/projects/project/regions/region /disks/disk - projects/project/zones/zone/disks/disk - projects/project/regions/region/disks/disk - zones/zone/disks/disk - regions/region/disks/disk
  /// [sourceImage] The source image used to create this disk. If the source image is deleted, this field will not be set. To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-9 to use the latest Debian 9 image: projects/debian-cloud/global/images/family/debian-9 Alternatively, use a specific version of a public operating system image: projects/debian-cloud/global/images/debian-9-stretch-vYYYYMMDD To create a disk with a custom image that you created, specify the image name in the following format: global/images/my-custom-image You can also specify a custom image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name: global/images/family/my-image-family
  /// [sourceImageEncryptionKey] The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
  /// [sourceInstantSnapshot] The source instant snapshot used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /instantSnapshots/instantSnapshot - projects/project/zones/zone/instantSnapshots/instantSnapshot - zones/zone/instantSnapshots/instantSnapshot
  /// [sourceSnapshot] The source snapshot used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project /global/snapshots/snapshot - projects/project/global/snapshots/snapshot - global/snapshots/snapshot
  /// [sourceSnapshotEncryptionKey] The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
  /// [sourceStorageObject] The full Google Cloud Storage URI where the disk image is stored. This file must be a gzip-compressed tarball whose name ends in .tar.gz or virtual machine disk whose name ends in vmdk. Valid URIs may start with gs:// or https://storage.googleapis.com/. This flag is not optimized for creating multiple disks from a source storage object. To create many disks from a source storage object, use gcloud compute images import instead.
  /// [storageType] [Deprecated] Storage type of the persistent disk.
  /// [type] URL of the disk type resource describing which disk type to use to create the disk. Provide this when creating the disk. For example: projects/project /zones/zone/diskTypes/pd-ssd . See Persistent disk types.
  /// [userLicenses] A list of publicly visible user-licenses. Unlike regular licenses, user provided licenses can be modified after the disk is created. This includes a list of URLs to the license resource. For example, to provide a debian license: https://www.googleapis.com/compute/v1/projects/debian-cloud/global/licenses/debian-9-stretch
  RegionDiskComputeBetaArgs({
    RegionDiskArchitectureComputeBeta? architecture,
    DiskAsyncReplicationComputeBeta? asyncPrimaryDisk,
    String? description,
    CustomerEncryptionKeyComputeBeta? diskEncryptionKey,
    bool? enableConfidentialCompute,
    bool? eraseWindowsVssSignature,
    List<GuestOsFeatureComputeBeta>? guestOsFeatures,
    RegionDiskInterfaceComputeBeta? interface,
    Map<String, String>? labels,
    List<String>? licenseCodes,
    List<String>? licenses,
    String? locationHint,
    bool? multiWriter,
    String? name,
    String? options,
    DiskParamsComputeBeta? params,
    String? physicalBlockSizeBytes,
    String? project,
    String? provisionedIops,
    String? provisionedThroughput,
    required String region,
    List<String>? replicaZones,
    String? requestId,
    List<String>? resourcePolicies,
    String? sizeGb,
    String? sourceDisk,
    String? sourceImage,
    CustomerEncryptionKeyComputeBeta? sourceImageEncryptionKey,
    String? sourceInstantSnapshot,
    String? sourceSnapshot,
    CustomerEncryptionKeyComputeBeta? sourceSnapshotEncryptionKey,
    String? sourceStorageObject,
    RegionDiskStorageTypeComputeBeta? storageType,
    String? type,
    List<String>? userLicenses,
  }) : architecture =
           pulumi.Input.asOptionalInput<RegionDiskArchitectureComputeBeta>(
             architecture,
           ),
       asyncPrimaryDisk =
           pulumi.Input.asOptionalInput<DiskAsyncReplicationComputeBeta>(
             asyncPrimaryDisk,
           ),
       description = pulumi.Input.asOptionalInput<String>(description),
       diskEncryptionKey =
           pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeBeta>(
             diskEncryptionKey,
           ),
       enableConfidentialCompute = pulumi.Input.asOptionalInput<bool>(
         enableConfidentialCompute,
       ),
       eraseWindowsVssSignature = pulumi.Input.asOptionalInput<bool>(
         eraseWindowsVssSignature,
       ),
       guestOsFeatures =
           pulumi.Input.asOptionalInput<List<GuestOsFeatureComputeBeta>>(
             guestOsFeatures,
           ),
       interface = pulumi.Input.asOptionalInput<RegionDiskInterfaceComputeBeta>(
         interface,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       licenseCodes = pulumi.Input.asOptionalInput<List<String>>(licenseCodes),
       licenses = pulumi.Input.asOptionalInput<List<String>>(licenses),
       locationHint = pulumi.Input.asOptionalInput<String>(locationHint),
       multiWriter = pulumi.Input.asOptionalInput<bool>(multiWriter),
       name = pulumi.Input.asOptionalInput<String>(name),
       options = pulumi.Input.asOptionalInput<String>(options),
       params = pulumi.Input.asOptionalInput<DiskParamsComputeBeta>(params),
       physicalBlockSizeBytes = pulumi.Input.asOptionalInput<String>(
         physicalBlockSizeBytes,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       provisionedIops = pulumi.Input.asOptionalInput<String>(provisionedIops),
       provisionedThroughput = pulumi.Input.asOptionalInput<String>(
         provisionedThroughput,
       ),
       region = pulumi.Input.asInput<String>(region),
       replicaZones = pulumi.Input.asOptionalInput<List<String>>(replicaZones),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       resourcePolicies = pulumi.Input.asOptionalInput<List<String>>(
         resourcePolicies,
       ),
       sizeGb = pulumi.Input.asOptionalInput<String>(sizeGb),
       sourceDisk = pulumi.Input.asOptionalInput<String>(sourceDisk),
       sourceImage = pulumi.Input.asOptionalInput<String>(sourceImage),
       sourceImageEncryptionKey =
           pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeBeta>(
             sourceImageEncryptionKey,
           ),
       sourceInstantSnapshot = pulumi.Input.asOptionalInput<String>(
         sourceInstantSnapshot,
       ),
       sourceSnapshot = pulumi.Input.asOptionalInput<String>(sourceSnapshot),
       sourceSnapshotEncryptionKey =
           pulumi.Input.asOptionalInput<CustomerEncryptionKeyComputeBeta>(
             sourceSnapshotEncryptionKey,
           ),
       sourceStorageObject = pulumi.Input.asOptionalInput<String>(
         sourceStorageObject,
       ),
       storageType =
           pulumi.Input.asOptionalInput<RegionDiskStorageTypeComputeBeta>(
             storageType,
           ),
       type = pulumi.Input.asOptionalInput<String>(type),
       userLicenses = pulumi.Input.asOptionalInput<List<String>>(userLicenses);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture':
          ?pulumi.Input.mapOptionalInputValue<
            RegionDiskArchitectureComputeBeta,
            String
          >(architecture, (value) => value.value),
      'asyncPrimaryDisk':
          ?pulumi.Input.mapOptionalInputValue<
            DiskAsyncReplicationComputeBeta,
            Map<String, dynamic>
          >(asyncPrimaryDisk, (value) => value.toMap()),
      'description': ?description,
      'diskEncryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            CustomerEncryptionKeyComputeBeta,
            Map<String, dynamic>
          >(diskEncryptionKey, (value) => value.toMap()),
      'enableConfidentialCompute': ?enableConfidentialCompute,
      'eraseWindowsVssSignature': ?eraseWindowsVssSignature,
      'guestOsFeatures':
          ?pulumi.Input.mapOptionalInputValue<
            List<GuestOsFeatureComputeBeta>,
            List<Map<String, dynamic>>
          >(
            guestOsFeatures,
            (value) =>
                pulumi.Input.encodeList<
                  GuestOsFeatureComputeBeta,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'interface':
          ?pulumi.Input.mapOptionalInputValue<
            RegionDiskInterfaceComputeBeta,
            String
          >(interface, (value) => value.value),
      'labels': ?labels,
      'licenseCodes': ?licenseCodes,
      'licenses': ?licenses,
      'locationHint': ?locationHint,
      'multiWriter': ?multiWriter,
      'name': ?name,
      'options': ?options,
      'params':
          ?pulumi.Input.mapOptionalInputValue<
            DiskParamsComputeBeta,
            Map<String, dynamic>
          >(params, (value) => value.toMap()),
      'physicalBlockSizeBytes': ?physicalBlockSizeBytes,
      'project': ?project,
      'provisionedIops': ?provisionedIops,
      'provisionedThroughput': ?provisionedThroughput,
      'region': region,
      'replicaZones': ?replicaZones,
      'requestId': ?requestId,
      'resourcePolicies': ?resourcePolicies,
      'sizeGb': ?sizeGb,
      'sourceDisk': ?sourceDisk,
      'sourceImage': ?sourceImage,
      'sourceImageEncryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            CustomerEncryptionKeyComputeBeta,
            Map<String, dynamic>
          >(sourceImageEncryptionKey, (value) => value.toMap()),
      'sourceInstantSnapshot': ?sourceInstantSnapshot,
      'sourceSnapshot': ?sourceSnapshot,
      'sourceSnapshotEncryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            CustomerEncryptionKeyComputeBeta,
            Map<String, dynamic>
          >(sourceSnapshotEncryptionKey, (value) => value.toMap()),
      'sourceStorageObject': ?sourceStorageObject,
      'storageType':
          ?pulumi.Input.mapOptionalInputValue<
            RegionDiskStorageTypeComputeBeta,
            String
          >(storageType, (value) => value.value),
      'type': ?type,
      'userLicenses': ?userLicenses,
    };
  }

  factory RegionDiskComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return RegionDiskComputeBetaArgs(
      architecture: map['architecture'] == null
          ? null
          : RegionDiskArchitectureComputeBeta.fromValue(
              map['architecture'] as String,
            ),
      asyncPrimaryDisk: map['asyncPrimaryDisk'] == null
          ? null
          : DiskAsyncReplicationComputeBeta.fromMap(
              (map['asyncPrimaryDisk'] as Map).cast<String, dynamic>(),
            ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      diskEncryptionKey: map['diskEncryptionKey'] == null
          ? null
          : CustomerEncryptionKeyComputeBeta.fromMap(
              (map['diskEncryptionKey'] as Map).cast<String, dynamic>(),
            ),
      enableConfidentialCompute: map['enableConfidentialCompute'] == null
          ? null
          : map['enableConfidentialCompute'] as bool,
      eraseWindowsVssSignature: map['eraseWindowsVssSignature'] == null
          ? null
          : map['eraseWindowsVssSignature'] as bool,
      guestOsFeatures: map['guestOsFeatures'] == null
          ? null
          : pulumi.Input.decodeList<GuestOsFeatureComputeBeta>(
              map['guestOsFeatures'],
              (value) => GuestOsFeatureComputeBeta.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      interface: map['interface'] == null
          ? null
          : RegionDiskInterfaceComputeBeta.fromValue(
              map['interface'] as String,
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      licenseCodes: map['licenseCodes'] == null
          ? null
          : (map['licenseCodes'] as List).cast<String>(),
      licenses: map['licenses'] == null
          ? null
          : (map['licenses'] as List).cast<String>(),
      locationHint: map['locationHint'] == null
          ? null
          : map['locationHint'] as String,
      multiWriter: map['multiWriter'] == null
          ? null
          : map['multiWriter'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      options: map['options'] == null ? null : map['options'] as String,
      params: map['params'] == null
          ? null
          : DiskParamsComputeBeta.fromMap(
              (map['params'] as Map).cast<String, dynamic>(),
            ),
      physicalBlockSizeBytes: map['physicalBlockSizeBytes'] == null
          ? null
          : map['physicalBlockSizeBytes'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      provisionedIops: map['provisionedIops'] == null
          ? null
          : map['provisionedIops'] as String,
      provisionedThroughput: map['provisionedThroughput'] == null
          ? null
          : map['provisionedThroughput'] as String,
      region: map['region'] as String,
      replicaZones: map['replicaZones'] == null
          ? null
          : (map['replicaZones'] as List).cast<String>(),
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      resourcePolicies: map['resourcePolicies'] == null
          ? null
          : (map['resourcePolicies'] as List).cast<String>(),
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as String,
      sourceDisk: map['sourceDisk'] == null
          ? null
          : map['sourceDisk'] as String,
      sourceImage: map['sourceImage'] == null
          ? null
          : map['sourceImage'] as String,
      sourceImageEncryptionKey: map['sourceImageEncryptionKey'] == null
          ? null
          : CustomerEncryptionKeyComputeBeta.fromMap(
              (map['sourceImageEncryptionKey'] as Map).cast<String, dynamic>(),
            ),
      sourceInstantSnapshot: map['sourceInstantSnapshot'] == null
          ? null
          : map['sourceInstantSnapshot'] as String,
      sourceSnapshot: map['sourceSnapshot'] == null
          ? null
          : map['sourceSnapshot'] as String,
      sourceSnapshotEncryptionKey: map['sourceSnapshotEncryptionKey'] == null
          ? null
          : CustomerEncryptionKeyComputeBeta.fromMap(
              (map['sourceSnapshotEncryptionKey'] as Map)
                  .cast<String, dynamic>(),
            ),
      sourceStorageObject: map['sourceStorageObject'] == null
          ? null
          : map['sourceStorageObject'] as String,
      storageType: map['storageType'] == null
          ? null
          : RegionDiskStorageTypeComputeBeta.fromValue(
              map['storageType'] as String,
            ),
      type: map['type'] == null ? null : map['type'] as String,
      userLicenses: map['userLicenses'] == null
          ? null
          : (map['userLicenses'] as List).cast<String>(),
    );
  }
}
