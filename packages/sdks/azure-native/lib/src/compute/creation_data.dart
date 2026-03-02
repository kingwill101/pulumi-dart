// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_disk_reference.dart';

/// Data used when creating a disk.
class CreationData {
  /// This enumerates the possible sources of a disk's creation.
  final pulumi.Input<String> createOption;
  /// Required if createOption is CopyFromSanSnapshot. This is the ARM id of the source elastic san volume snapshot.
  final pulumi.Input<String>? elasticSanResourceId;
  /// Required if creating from a Gallery Image. The id/sharedGalleryImageId/communityGalleryImageId of the ImageDiskReference will be the ARM id of the shared galley image version from which to create a disk.
  final pulumi.Input<ImageDiskReference>? galleryImageReference;
  /// Disk source information for PIR or user images.
  final pulumi.Input<ImageDiskReference>? imageReference;
  /// Logical sector size in bytes for Ultra disks. Supported values are 512 ad 4096. 4096 is the default.
  final pulumi.Input<int>? logicalSectorSize;
  /// Set this flag to true to get a boost on the performance target of the disk deployed, see here on the respective performance target. This flag can only be set on disk creation time and cannot be disabled after enabled.
  final pulumi.Input<bool>? performancePlus;
  /// If this field is set on a snapshot and createOption is CopyStart, the snapshot will be copied at a quicker speed.
  final pulumi.Input<String>? provisionedBandwidthCopySpeed;
  /// If createOption is ImportSecure, this is the URI of a blob to be imported into VM guest state.
  final pulumi.Input<String>? securityDataUri;
  /// If createOption is Copy, this is the ARM id of the source snapshot or disk.
  final pulumi.Input<String>? sourceResourceId;
  /// If createOption is Import, this is the URI of a blob to be imported into a managed disk.
  final pulumi.Input<String>? sourceUri;
  /// Required if createOption is Import. The Azure Resource Manager identifier of the storage account containing the blob to import as a disk.
  final pulumi.Input<String>? storageAccountId;
  /// If createOption is Upload, this is the size of the contents of the upload including the VHD footer. This value should be between 20972032 (20 MiB + 512 bytes for the VHD footer) and 35183298347520 bytes (32 TiB + 512 bytes for the VHD footer).
  final pulumi.Input<double>? uploadSizeBytes;

  /// Creates a new [CreationData].
  /// [createOption] This enumerates the possible sources of a disk's creation.
  /// [elasticSanResourceId] Required if createOption is CopyFromSanSnapshot. This is the ARM id of the source elastic san volume snapshot.
  /// [galleryImageReference] Required if creating from a Gallery Image. The id/sharedGalleryImageId/communityGalleryImageId of the ImageDiskReference will be the ARM id of the shared galley image version from which to create a disk.
  /// [imageReference] Disk source information for PIR or user images.
  /// [logicalSectorSize] Logical sector size in bytes for Ultra disks. Supported values are 512 ad 4096. 4096 is the default.
  /// [performancePlus] Set this flag to true to get a boost on the performance target of the disk deployed, see here on the respective performance target. This flag can only be set on disk creation time and cannot be disabled after enabled.
  /// [provisionedBandwidthCopySpeed] If this field is set on a snapshot and createOption is CopyStart, the snapshot will be copied at a quicker speed.
  /// [securityDataUri] If createOption is ImportSecure, this is the URI of a blob to be imported into VM guest state.
  /// [sourceResourceId] If createOption is Copy, this is the ARM id of the source snapshot or disk.
  /// [sourceUri] If createOption is Import, this is the URI of a blob to be imported into a managed disk.
  /// [storageAccountId] Required if createOption is Import. The Azure Resource Manager identifier of the storage account containing the blob to import as a disk.
  /// [uploadSizeBytes] If createOption is Upload, this is the size of the contents of the upload including the VHD footer. This value should be between 20972032 (20 MiB + 512 bytes for the VHD footer) and 35183298347520 bytes (32 TiB + 512 bytes for the VHD footer).
  CreationData({
    required this.createOption,
    this.elasticSanResourceId,
    this.galleryImageReference,
    this.imageReference,
    this.logicalSectorSize,
    this.performancePlus,
    this.provisionedBandwidthCopySpeed,
    this.securityDataUri,
    this.sourceResourceId,
    this.sourceUri,
    this.storageAccountId,
    this.uploadSizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOption': createOption,
      'elasticSanResourceId': ?elasticSanResourceId,
      'galleryImageReference': ?pulumi.Input.mapOptionalInputValue<ImageDiskReference, Map<String, dynamic>>(galleryImageReference, (value) => value.toMap()),
      'imageReference': ?pulumi.Input.mapOptionalInputValue<ImageDiskReference, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'logicalSectorSize': ?logicalSectorSize,
      'performancePlus': ?performancePlus,
      'provisionedBandwidthCopySpeed': ?provisionedBandwidthCopySpeed,
      'securityDataUri': ?securityDataUri,
      'sourceResourceId': ?sourceResourceId,
      'sourceUri': ?sourceUri,
      'storageAccountId': ?storageAccountId,
      'uploadSizeBytes': ?uploadSizeBytes,
    };
  }

  factory CreationData.fromMap(Map<String, dynamic> map) {
    return CreationData(
      createOption: (map['createOption'] as String).input(),
      elasticSanResourceId: map['elasticSanResourceId'] == null ? null : (map['elasticSanResourceId']! as String).input(),
      galleryImageReference: map['galleryImageReference'] == null ? null : (ImageDiskReference.fromMap((map['galleryImageReference']! as Map).cast<String, dynamic>())).input(),
      imageReference: map['imageReference'] == null ? null : (ImageDiskReference.fromMap((map['imageReference']! as Map).cast<String, dynamic>())).input(),
      logicalSectorSize: map['logicalSectorSize'] == null ? null : (map['logicalSectorSize']! as int).input(),
      performancePlus: map['performancePlus'] == null ? null : (map['performancePlus']! as bool).input(),
      provisionedBandwidthCopySpeed: map['provisionedBandwidthCopySpeed'] == null ? null : (map['provisionedBandwidthCopySpeed']! as String).input(),
      securityDataUri: map['securityDataUri'] == null ? null : (map['securityDataUri']! as String).input(),
      sourceResourceId: map['sourceResourceId'] == null ? null : (map['sourceResourceId']! as String).input(),
      sourceUri: map['sourceUri'] == null ? null : (map['sourceUri']! as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId']! as String).input(),
      uploadSizeBytes: map['uploadSizeBytes'] == null ? null : (map['uploadSizeBytes']! as double).input(),
    );
  }
}

