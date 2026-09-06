// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies information about the image to use. You can specify information about platform images, marketplace images, or virtual machine images. This element is required when you want to use a platform image, marketplace image, or virtual machine image, but is not used in other creation operations. NOTE: Image reference publisher and offer can only be set when you create the scale set.
class ImageReferenceResponse {
  /// Specified the community gallery image unique id for vm deployment. This can be fetched from community gallery image GET call.
  final pulumi.Input<String?>? communityGalleryImageId;
  /// The ID of the sub-resource.
  final pulumi.Input<String?>? id;
  /// Specifies the offer of the platform image or marketplace image used to create the virtual machine.
  final pulumi.Input<String?>? offer;
  /// The image publisher.
  final pulumi.Input<String?>? publisher;
  /// Specified the shared gallery image unique id for vm deployment. This can be fetched from shared gallery image GET call.
  final pulumi.Input<String?>? sharedGalleryImageId;
  /// The image SKU.
  final pulumi.Input<String?>? sku;
  /// Specifies the version of the platform image or marketplace image used to create the virtual machine. The allowed formats are Major.Minor.Build or 'latest'. Major, Minor, and Build are decimal numbers. Specify 'latest' to use the latest version of an image available at deploy time. Even if you use 'latest', the VM image will not automatically update after deploy time even if a new version becomes available. Please do not use field 'version' for gallery image deployment, gallery image should always use 'id' field for deployment, to use 'latest' version of gallery image, just set '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/images/{imageName}' in the 'id' field without version input.
  final pulumi.Input<String?>? version;

  /// Creates a new [ImageReferenceResponse].
  /// [communityGalleryImageId] Specified the community gallery image unique id for vm deployment. This can be fetched from community gallery image GET call.
  /// [id] The ID of the sub-resource.
  /// [offer] Specifies the offer of the platform image or marketplace image used to create the virtual machine.
  /// [publisher] The image publisher.
  /// [sharedGalleryImageId] Specified the shared gallery image unique id for vm deployment. This can be fetched from shared gallery image GET call.
  /// [sku] The image SKU.
  /// [version] Specifies the version of the platform image or marketplace image used to create the virtual machine. The allowed formats are Major.Minor.Build or 'latest'. Major, Minor, and Build are decimal numbers. Specify 'latest' to use the latest version of an image available at deploy time. Even if you use 'latest', the VM image will not automatically update after deploy time even if a new version becomes available. Please do not use field 'version' for gallery image deployment, gallery image should always use 'id' field for deployment, to use 'latest' version of gallery image, just set '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/images/{imageName}' in the 'id' field without version input.
  const ImageReferenceResponse({
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

  factory ImageReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ImageReferenceResponse(
      communityGalleryImageId: (() { final guardedValue = map['communityGalleryImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offer: (() { final guardedValue = map['offer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisher: (() { final guardedValue = map['publisher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedGalleryImageId: (() { final guardedValue = map['sharedGalleryImageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
