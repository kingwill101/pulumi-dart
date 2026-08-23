// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The source image used for creating the disk.
class ImageDiskReference {
  /// A relative uri containing a community Azure Compute Gallery image reference.
  final pulumi.Input<String>? communityGalleryImageId;
  /// A relative uri containing either a Platform Image Repository, user image, or Azure Compute Gallery image reference.
  final pulumi.Input<String>? id;
  /// If the disk is created from an image's data disk, this is an index that indicates which of the data disks in the image to use. For OS disks, this field is null.
  final pulumi.Input<int>? lun;
  /// A relative uri containing a direct shared Azure Compute Gallery image reference.
  final pulumi.Input<String>? sharedGalleryImageId;

  /// Creates a new [ImageDiskReference].
  /// [communityGalleryImageId] A relative uri containing a community Azure Compute Gallery image reference.
  /// [id] A relative uri containing either a Platform Image Repository, user image, or Azure Compute Gallery image reference.
  /// [lun] If the disk is created from an image's data disk, this is an index that indicates which of the data disks in the image to use. For OS disks, this field is null.
  /// [sharedGalleryImageId] A relative uri containing a direct shared Azure Compute Gallery image reference.
  const ImageDiskReference({
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

  factory ImageDiskReference.fromMap(Map<String, dynamic> map) {
    return ImageDiskReference(
      communityGalleryImageId: (() { final guardedValue = map['communityGalleryImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lun: (() { final guardedValue = map['lun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sharedGalleryImageId: (() { final guardedValue = map['sharedGalleryImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
