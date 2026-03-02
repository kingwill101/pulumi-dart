// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies information about the image to use. You can specify information about platform images, marketplace images, or virtual machine images. This element is required when you want to use a platform image, marketplace image, or virtual machine image, but is not used in other creation operations. NOTE: Image reference publisher and offer can only be set when you create the scale set.
class ImageReference {
  /// Specified the community gallery image unique id for vm deployment. This can be fetched from community gallery image GET call.
  final pulumi.Input<String>? communityGalleryImageId;
  /// Resource Id
  final pulumi.Input<String>? id;
  /// Specifies the offer of the platform image or marketplace image used to create the virtual machine.
  final pulumi.Input<String>? offer;
  /// The image publisher.
  final pulumi.Input<String>? publisher;
  /// Specified the shared gallery image unique id for vm deployment. This can be fetched from shared gallery image GET call.
  final pulumi.Input<String>? sharedGalleryImageId;
  /// The image SKU.
  final pulumi.Input<String>? sku;
  /// Specifies the version of the platform image or marketplace image used to create the virtual machine. The allowed formats are Major.Minor.Build or 'latest'. Major, Minor, and Build are decimal numbers. Specify 'latest' to use the latest version of an image available at deploy time. Even if you use 'latest', the VM image will not automatically update after deploy time even if a new version becomes available. Please do not use field 'version' for gallery image deployment, gallery image should always use 'id' field for deployment, to use 'latest' version of gallery image, just set '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/images/{imageName}' in the 'id' field without version input.
  final pulumi.Input<String>? version;

  /// Creates a new [ImageReference].
  /// [communityGalleryImageId] Specified the community gallery image unique id for vm deployment. This can be fetched from community gallery image GET call.
  /// [id] Resource Id
  /// [offer] Specifies the offer of the platform image or marketplace image used to create the virtual machine.
  /// [publisher] The image publisher.
  /// [sharedGalleryImageId] Specified the shared gallery image unique id for vm deployment. This can be fetched from shared gallery image GET call.
  /// [sku] The image SKU.
  /// [version] Specifies the version of the platform image or marketplace image used to create the virtual machine. The allowed formats are Major.Minor.Build or 'latest'. Major, Minor, and Build are decimal numbers. Specify 'latest' to use the latest version of an image available at deploy time. Even if you use 'latest', the VM image will not automatically update after deploy time even if a new version becomes available. Please do not use field 'version' for gallery image deployment, gallery image should always use 'id' field for deployment, to use 'latest' version of gallery image, just set '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/images/{imageName}' in the 'id' field without version input.
  ImageReference({
    this.communityGalleryImageId,
    this.id,
    this.offer,
    this.publisher,
    this.sharedGalleryImageId,
    this.sku,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communityGalleryImageId': ?communityGalleryImageId,
      'id': ?id,
      'offer': ?offer,
      'publisher': ?publisher,
      'sharedGalleryImageId': ?sharedGalleryImageId,
      'sku': ?sku,
      'version': ?version,
    };
  }

  factory ImageReference.fromMap(Map<String, dynamic> map) {
    return ImageReference(
      communityGalleryImageId: map['communityGalleryImageId'] == null ? null : (map['communityGalleryImageId']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      offer: map['offer'] == null ? null : (map['offer']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
      sharedGalleryImageId: map['sharedGalleryImageId'] == null ? null : (map['sharedGalleryImageId']! as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

