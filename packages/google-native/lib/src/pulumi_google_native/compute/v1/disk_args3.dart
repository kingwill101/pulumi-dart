// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'customer_encryption_key3.dart';
import 'disk_architecture3.dart';
import 'disk_async_replication3.dart';
import 'disk_params3.dart';
import 'guest_os_feature3.dart';

/// The set of arguments for Disk.
class DiskArgs3 {
  /// The architecture of the disk. Valid values are ARM64 or X86_64.
  final Input<DiskArchitecture3>? architecture;

  /// Disk asynchronously replicated into this disk.
  final Input<DiskAsyncReplication3>? asyncPrimaryDisk;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Encrypts the disk using a customer-supplied encryption key or a customer-managed encryption key. Encryption keys do not protect access to metadata of the disk. After you encrypt a disk with a customer-supplied key, you must provide the same key if you use the disk later. For example, to create a disk snapshot, to create a disk image, to create a machine image, or to attach the disk to a virtual machine. After you encrypt a disk with a customer-managed key, the diskEncryptionKey.kmsKeyName is set to a key *version* name once the disk is created. The disk is encrypted with this version of the key. In the response, diskEncryptionKey.kmsKeyName appears in the following format: "diskEncryptionKey.kmsKeyName": "projects/kms_project_id/locations/region/keyRings/ key_region/cryptoKeys/key /cryptoKeysVersions/version If you do not provide an encryption key when creating the disk, then the disk is encrypted using an automatically generated key and you don't need to provide a key to use the disk later.
  final Input<CustomerEncryptionKey3>? diskEncryptionKey;

  /// A list of features to enable on the guest operating system. Applicable only for bootable images. Read Enabling guest operating system features to see a list of available options.
  final Input<List<GuestOsFeature3>>? guestOsFeatures;

  /// Labels to apply to this disk. These can be later modified by the setLabels method.
  final Input<Map<String, String>>? labels;

  /// Integer license codes indicating which licenses are attached to this disk.
  final Input<List<String>>? licenseCodes;

  /// A list of publicly visible licenses. Reserved for Google's use.
  final Input<List<String>>? licenses;

  /// An opaque location hint used to place the disk close to other resources. This field is for use by internal tools that use the public API.
  final Input<String>? locationHint;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// Internal use only.
  final Input<String>? options;

  /// Input only. [Input Only] Additional params passed with the request, but not persisted as part of resource payload.
  final Input<DiskParams3>? params;

  /// Physical block size of the persistent disk, in bytes. If not present in a request, a default value is used. The currently supported size is 4096, other sizes may be added in the future. If an unsupported value is requested, the error message will list the supported values for the caller's project.
  final Input<String>? physicalBlockSizeBytes;
  final Input<String>? project;

  /// Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Values must be between 10,000 and 120,000. For more details, see the Extreme persistent disk documentation.
  final Input<String>? provisionedIops;

  /// Indicates how much throughput to provision for the disk. This sets the number of throughput mb per second that the disk can handle. Values must be between 1 and 7,124.
  final Input<String>? provisionedThroughput;

  /// URLs of the zones where the disk should be replicated to. Only applicable for regional resources.
  final Input<List<String>>? replicaZones;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Resource policies applied to this disk for automatic snapshot creations.
  final Input<List<String>>? resourcePolicies;

  /// Size, in GB, of the persistent disk. You can specify this field when creating a persistent disk using the sourceImage, sourceSnapshot, or sourceDisk parameter, or specify it alone to create an empty persistent disk. If you specify this field along with a source, the value of sizeGb must not be less than the size of the source. Acceptable values are greater than 0.
  final Input<String>? sizeGb;

  /// The source disk used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - https://www.googleapis.com/compute/v1/projects/project/regions/region /disks/disk - projects/project/zones/zone/disks/disk - projects/project/regions/region/disks/disk - zones/zone/disks/disk - regions/region/disks/disk
  final Input<String>? sourceDisk;

  /// The source image used to create this disk. If the source image is deleted, this field will not be set. To create a disk with one of the public operating system images, specify the image by its family name. For example, specify family/debian-9 to use the latest Debian 9 image: projects/debian-cloud/global/images/family/debian-9 Alternatively, use a specific version of a public operating system image: projects/debian-cloud/global/images/debian-9-stretch-vYYYYMMDD To create a disk with a custom image that you created, specify the image name in the following format: global/images/my-custom-image You can also specify a custom image by its image family, which returns the latest version of the image in that family. Replace the image name with family/family-name: global/images/family/my-image-family
  final Input<String>? sourceImage;

  /// The customer-supplied encryption key of the source image. Required if the source image is protected by a customer-supplied encryption key.
  final Input<CustomerEncryptionKey3>? sourceImageEncryptionKey;

  /// The source snapshot used to create this disk. You can provide this as a partial or full URL to the resource. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project /global/snapshots/snapshot - projects/project/global/snapshots/snapshot - global/snapshots/snapshot
  final Input<String>? sourceSnapshot;

  /// The customer-supplied encryption key of the source snapshot. Required if the source snapshot is protected by a customer-supplied encryption key.
  final Input<CustomerEncryptionKey3>? sourceSnapshotEncryptionKey;

  /// The full Google Cloud Storage URI where the disk image is stored. This file must be a gzip-compressed tarball whose name ends in .tar.gz or virtual machine disk whose name ends in vmdk. Valid URIs may start with gs:// or https://storage.googleapis.com/. This flag is not optimized for creating multiple disks from a source storage object. To create many disks from a source storage object, use gcloud compute images import instead.
  final Input<String>? sourceStorageObject;

  /// URL of the disk type resource describing which disk type to use to create the disk. Provide this when creating the disk. For example: projects/project /zones/zone/diskTypes/pd-ssd . See Persistent disk types.
  final Input<String>? type;
  final Input<String>? zone;

  DiskArgs3({
    this.architecture,
    this.asyncPrimaryDisk,
    this.description,
    this.diskEncryptionKey,
    this.guestOsFeatures,
    this.labels,
    this.licenseCodes,
    this.licenses,
    this.locationHint,
    this.name,
    this.options,
    this.params,
    this.physicalBlockSizeBytes,
    this.project,
    this.provisionedIops,
    this.provisionedThroughput,
    this.replicaZones,
    this.requestId,
    this.resourcePolicies,
    this.sizeGb,
    this.sourceDisk,
    this.sourceImage,
    this.sourceImageEncryptionKey,
    this.sourceSnapshot,
    this.sourceSnapshotEncryptionKey,
    this.sourceStorageObject,
    this.type,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final architectureValue = architecture;
    if (architectureValue != null) {
      map['architecture'] =
          Input.mapOptionalInputValue<DiskArchitecture3, String>(
              architectureValue, (value) => value.value);
    }
    final asyncPrimaryDiskValue = asyncPrimaryDisk;
    if (asyncPrimaryDiskValue != null) {
      map['asyncPrimaryDisk'] = Input.mapOptionalInputValue<
              DiskAsyncReplication3, Map<String, dynamic>>(
          asyncPrimaryDiskValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final diskEncryptionKeyValue = diskEncryptionKey;
    if (diskEncryptionKeyValue != null) {
      map['diskEncryptionKey'] = Input.mapOptionalInputValue<
              CustomerEncryptionKey3, Map<String, dynamic>>(
          diskEncryptionKeyValue, (value) => value.toMap());
    }
    final guestOsFeaturesValue = guestOsFeatures;
    if (guestOsFeaturesValue != null) {
      map['guestOsFeatures'] = Input.mapOptionalInputValue<
              List<GuestOsFeature3>, List<Map<String, dynamic>>>(
          guestOsFeaturesValue,
          (value) => Input.encodeList<GuestOsFeature3, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final licenseCodesValue = licenseCodes;
    if (licenseCodesValue != null) {
      map['licenseCodes'] = licenseCodesValue;
    }
    final licensesValue = licenses;
    if (licensesValue != null) {
      map['licenses'] = licensesValue;
    }
    final locationHintValue = locationHint;
    if (locationHintValue != null) {
      map['locationHint'] = locationHintValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final optionsValue = options;
    if (optionsValue != null) {
      map['options'] = optionsValue;
    }
    final paramsValue = params;
    if (paramsValue != null) {
      map['params'] =
          Input.mapOptionalInputValue<DiskParams3, Map<String, dynamic>>(
              paramsValue, (value) => value.toMap());
    }
    final physicalBlockSizeBytesValue = physicalBlockSizeBytes;
    if (physicalBlockSizeBytesValue != null) {
      map['physicalBlockSizeBytes'] = physicalBlockSizeBytesValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final provisionedIopsValue = provisionedIops;
    if (provisionedIopsValue != null) {
      map['provisionedIops'] = provisionedIopsValue;
    }
    final provisionedThroughputValue = provisionedThroughput;
    if (provisionedThroughputValue != null) {
      map['provisionedThroughput'] = provisionedThroughputValue;
    }
    final replicaZonesValue = replicaZones;
    if (replicaZonesValue != null) {
      map['replicaZones'] = replicaZonesValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final resourcePoliciesValue = resourcePolicies;
    if (resourcePoliciesValue != null) {
      map['resourcePolicies'] = resourcePoliciesValue;
    }
    final sizeGbValue = sizeGb;
    if (sizeGbValue != null) {
      map['sizeGb'] = sizeGbValue;
    }
    final sourceDiskValue = sourceDisk;
    if (sourceDiskValue != null) {
      map['sourceDisk'] = sourceDiskValue;
    }
    final sourceImageValue = sourceImage;
    if (sourceImageValue != null) {
      map['sourceImage'] = sourceImageValue;
    }
    final sourceImageEncryptionKeyValue = sourceImageEncryptionKey;
    if (sourceImageEncryptionKeyValue != null) {
      map['sourceImageEncryptionKey'] = Input.mapOptionalInputValue<
              CustomerEncryptionKey3, Map<String, dynamic>>(
          sourceImageEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceSnapshotValue = sourceSnapshot;
    if (sourceSnapshotValue != null) {
      map['sourceSnapshot'] = sourceSnapshotValue;
    }
    final sourceSnapshotEncryptionKeyValue = sourceSnapshotEncryptionKey;
    if (sourceSnapshotEncryptionKeyValue != null) {
      map['sourceSnapshotEncryptionKey'] = Input.mapOptionalInputValue<
              CustomerEncryptionKey3, Map<String, dynamic>>(
          sourceSnapshotEncryptionKeyValue, (value) => value.toMap());
    }
    final sourceStorageObjectValue = sourceStorageObject;
    if (sourceStorageObjectValue != null) {
      map['sourceStorageObject'] = sourceStorageObjectValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory DiskArgs3.fromMap(Map<String, dynamic> map) {
    return DiskArgs3(
      architecture:
          Input.asOptionalInput<DiskArchitecture3>(map['architecture']),
      asyncPrimaryDisk:
          Input.asOptionalInput<DiskAsyncReplication3>(map['asyncPrimaryDisk']),
      description: Input.asOptionalInput<String>(map['description']),
      diskEncryptionKey: Input.asOptionalInput<CustomerEncryptionKey3>(
          map['diskEncryptionKey']),
      guestOsFeatures:
          Input.asOptionalInput<List<GuestOsFeature3>>(map['guestOsFeatures']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      licenseCodes: Input.asOptionalInput<List<String>>(map['licenseCodes']),
      licenses: Input.asOptionalInput<List<String>>(map['licenses']),
      locationHint: Input.asOptionalInput<String>(map['locationHint']),
      name: Input.asOptionalInput<String>(map['name']),
      options: Input.asOptionalInput<String>(map['options']),
      params: Input.asOptionalInput<DiskParams3>(map['params']),
      physicalBlockSizeBytes:
          Input.asOptionalInput<String>(map['physicalBlockSizeBytes']),
      project: Input.asOptionalInput<String>(map['project']),
      provisionedIops: Input.asOptionalInput<String>(map['provisionedIops']),
      provisionedThroughput:
          Input.asOptionalInput<String>(map['provisionedThroughput']),
      replicaZones: Input.asOptionalInput<List<String>>(map['replicaZones']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      resourcePolicies:
          Input.asOptionalInput<List<String>>(map['resourcePolicies']),
      sizeGb: Input.asOptionalInput<String>(map['sizeGb']),
      sourceDisk: Input.asOptionalInput<String>(map['sourceDisk']),
      sourceImage: Input.asOptionalInput<String>(map['sourceImage']),
      sourceImageEncryptionKey: Input.asOptionalInput<CustomerEncryptionKey3>(
          map['sourceImageEncryptionKey']),
      sourceSnapshot: Input.asOptionalInput<String>(map['sourceSnapshot']),
      sourceSnapshotEncryptionKey:
          Input.asOptionalInput<CustomerEncryptionKey3>(
              map['sourceSnapshotEncryptionKey']),
      sourceStorageObject:
          Input.asOptionalInput<String>(map['sourceStorageObject']),
      type: Input.asOptionalInput<String>(map['type']),
      zone: Input.asOptionalInput<String>(map['zone']),
    );
  }
}
