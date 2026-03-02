// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The source image used for creating the disk.
class ImageDiskReferenceResponse {
  /// A relative uri containing a community Azure Compute Gallery image reference.
  final pulumi.Input<String>? communityGalleryImageId;
  /// A relative uri containing either a Platform Image Repository, user image, or Azure Compute Gallery image reference.
  final pulumi.Input<String>? id;
  /// If the disk is created from an image's data disk, this is an index that indicates which of the data disks in the image to use. For OS disks, this field is null.
  final pulumi.Input<int>? lun;
  /// A relative uri containing a direct shared Azure Compute Gallery image reference.
  final pulumi.Input<String>? sharedGalleryImageId;

  /// Creates a new [ImageDiskReferenceResponse].
  /// [communityGalleryImageId] A relative uri containing a community Azure Compute Gallery image reference.
  /// [id] A relative uri containing either a Platform Image Repository, user image, or Azure Compute Gallery image reference.
  /// [lun] If the disk is created from an image's data disk, this is an index that indicates which of the data disks in the image to use. For OS disks, this field is null.
  /// [sharedGalleryImageId] A relative uri containing a direct shared Azure Compute Gallery image reference.
  ImageDiskReferenceResponse({
    this.communityGalleryImageId,
    this.id,
    this.lun,
    this.sharedGalleryImageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityGalleryImageId': ?communityGalleryImageId,
      'id': ?id,
      'lun': ?lun,
      'sharedGalleryImageId': ?sharedGalleryImageId,
    };
  }

  factory ImageDiskReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ImageDiskReferenceResponse(
      communityGalleryImageId: map['communityGalleryImageId'] == null ? null : (map['communityGalleryImageId'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      lun: map['lun'] == null ? null : (map['lun'] as int).input(),
      sharedGalleryImageId: map['sharedGalleryImageId'] == null ? null : (map['sharedGalleryImageId'] as String).input(),
    );
  }
}

