// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_disk_reference_response.dart';

/// Data used when creating a disk.
class CreationDataResponse {
  /// This enumerates the possible sources of a disk's creation.
  final pulumi.Input<String> createOption;
  /// Required if createOption is CopyFromSanSnapshot. This is the ARM id of the source elastic san volume snapshot.
  final pulumi.Input<String?>? elasticSanResourceId;
  /// Required if creating from a Gallery Image. The id/sharedGalleryImageId/communityGalleryImageId of the ImageDiskReference will be the ARM id of the shared galley image version from which to create a disk.
  final pulumi.Input<ImageDiskReferenceResponse?>? galleryImageReference;
  /// Disk source information for PIR or user images.
  final pulumi.Input<ImageDiskReferenceResponse?>? imageReference;
  /// Logical sector size in bytes for Ultra disks. Supported values are 512 ad 4096. 4096 is the default.
  final pulumi.Input<int?>? logicalSectorSize;
  /// Set this flag to true to get a boost on the performance target of the disk deployed, see here on the respective performance target. This flag can only be set on disk creation time and cannot be disabled after enabled.
  final pulumi.Input<bool?>? performancePlus;
  /// If this field is set on a snapshot and createOption is CopyStart, the snapshot will be copied at a quicker speed.
  final pulumi.Input<String?>? provisionedBandwidthCopySpeed;
  /// If createOption is ImportSecure, this is the URI of a blob to be imported into VM guest state.
  final pulumi.Input<String?>? securityDataUri;
  /// If createOption is Copy, this is the ARM id of the source snapshot or disk.
  final pulumi.Input<String?>? sourceResourceId;
  /// If this field is set, this is the unique id identifying the source of this resource.
  final pulumi.Input<String> sourceUniqueId;
  /// If createOption is Import, this is the URI of a blob to be imported into a managed disk.
  final pulumi.Input<String?>? sourceUri;
  /// Required if createOption is Import. The Azure Resource Manager identifier of the storage account containing the blob to import as a disk.
  final pulumi.Input<String?>? storageAccountId;
  /// If createOption is Upload, this is the size of the contents of the upload including the VHD footer. This value should be between 20972032 (20 MiB + 512 bytes for the VHD footer) and 35183298347520 bytes (32 TiB + 512 bytes for the VHD footer).
  final pulumi.Input<double?>? uploadSizeBytes;

  /// Creates a new [CreationDataResponse].
  /// [createOption] This enumerates the possible sources of a disk's creation.
  /// [elasticSanResourceId] Required if createOption is CopyFromSanSnapshot. This is the ARM id of the source elastic san volume snapshot.
  /// [galleryImageReference] Required if creating from a Gallery Image. The id/sharedGalleryImageId/communityGalleryImageId of the ImageDiskReference will be the ARM id of the shared galley image version from which to create a disk.
  /// [imageReference] Disk source information for PIR or user images.
  /// [logicalSectorSize] Logical sector size in bytes for Ultra disks. Supported values are 512 ad 4096. 4096 is the default.
  /// [performancePlus] Set this flag to true to get a boost on the performance target of the disk deployed, see here on the respective performance target. This flag can only be set on disk creation time and cannot be disabled after enabled.
  /// [provisionedBandwidthCopySpeed] If this field is set on a snapshot and createOption is CopyStart, the snapshot will be copied at a quicker speed.
  /// [securityDataUri] If createOption is ImportSecure, this is the URI of a blob to be imported into VM guest state.
  /// [sourceResourceId] If createOption is Copy, this is the ARM id of the source snapshot or disk.
  /// [sourceUniqueId] If this field is set, this is the unique id identifying the source of this resource.
  /// [sourceUri] If createOption is Import, this is the URI of a blob to be imported into a managed disk.
  /// [storageAccountId] Required if createOption is Import. The Azure Resource Manager identifier of the storage account containing the blob to import as a disk.
  /// [uploadSizeBytes] If createOption is Upload, this is the size of the contents of the upload including the VHD footer. This value should be between 20972032 (20 MiB + 512 bytes for the VHD footer) and 35183298347520 bytes (32 TiB + 512 bytes for the VHD footer).
  const CreationDataResponse({
    required this.createOption,
    this.elasticSanResourceId,
    this.galleryImageReference,
    this.imageReference,
    this.logicalSectorSize,
    this.performancePlus,
    this.provisionedBandwidthCopySpeed,
    this.securityDataUri,
    this.sourceResourceId,
    required this.sourceUniqueId,
    this.sourceUri,
    this.storageAccountId,
    this.uploadSizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createOption': createOption,
      'elasticSanResourceId': ?elasticSanResourceId,
      'galleryImageReference': ?pulumi.Input.mapOptionalInputValue<ImageDiskReferenceResponse, Map<String, dynamic>>(galleryImageReference, (value) => value.toMap()),
      'imageReference': ?pulumi.Input.mapOptionalInputValue<ImageDiskReferenceResponse, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'logicalSectorSize': ?logicalSectorSize,
      'performancePlus': ?performancePlus,
      'provisionedBandwidthCopySpeed': ?provisionedBandwidthCopySpeed,
      'securityDataUri': ?securityDataUri,
      'sourceResourceId': ?sourceResourceId,
      'sourceUniqueId': sourceUniqueId,
      'sourceUri': ?sourceUri,
      'storageAccountId': ?storageAccountId,
      'uploadSizeBytes': ?uploadSizeBytes,
    };
  }

  factory CreationDataResponse.fromMap(Map<String, dynamic> map) {
    return CreationDataResponse(
      createOption: pulumi.Input.fromValue(map['createOption'] as String),
      elasticSanResourceId: (() { final guardedValue = map['elasticSanResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      galleryImageReference: (() { final guardedValue = map['galleryImageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageDiskReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageReference: (() { final guardedValue = map['imageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageDiskReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logicalSectorSize: (() { final guardedValue = map['logicalSectorSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      performancePlus: (() { final guardedValue = map['performancePlus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      provisionedBandwidthCopySpeed: (() { final guardedValue = map['provisionedBandwidthCopySpeed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityDataUri: (() { final guardedValue = map['securityDataUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceResourceId: (() { final guardedValue = map['sourceResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceUniqueId: pulumi.Input.fromValue(map['sourceUniqueId'] as String),
      sourceUri: (() { final guardedValue = map['sourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uploadSizeBytes: (() { final guardedValue = map['uploadSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
