// ignore_for_file: unused_element, unnecessary_cast


/// Specifies information about the image to use. You can specify information about
/// platform images, marketplace images, or virtual machine images. This element is
/// required when you want to use a platform image, marketplace image, or virtual
/// machine image, but is not used in other creation operations. NOTE: Image
/// reference publisher and offer can only be set when you create the scale set.
class ImageReferenceResponse {
  /// Specified the community gallery image unique id for vm deployment. This can be
  /// fetched from community gallery image GET call.
  final String? communityGalleryImageId;
  /// Specifies in decimal numbers, the version of platform image or marketplace
  /// image used to create the virtual machine. This readonly field differs from 'version',
  /// only if the value specified in 'version' field is 'latest'.
  final String exactVersion;
  /// Resource Id
  final String? id;
  /// Specifies the offer of the platform image or marketplace image used to create
  /// the virtual machine.
  final String? offer;
  /// The image publisher.
  final String? publisher;
  /// Specified the shared gallery image unique id for vm deployment. This can be
  /// fetched from shared gallery image GET call.
  final String? sharedGalleryImageId;
  /// The image SKU.
  final String? sku;
  /// Specifies the version of the platform image or marketplace image used to create
  /// the virtual machine. The allowed formats are Major.Minor.Build or 'latest'.
  /// Major, Minor, and Build are decimal numbers. Specify 'latest' to use the latest
  /// version of an image available at deploy time. Even if you use 'latest', the VM
  /// image will not automatically update after deploy time even if a new version
  /// becomes available. Please do not use field 'version' for gallery image
  /// deployment, gallery image should always use 'id' field for deployment, to use 'latest'
  /// version of gallery image, just set
  /// '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/images/{imageName}'
  /// in the 'id' field without version input.
  final String? version;

  /// Creates a new [ImageReferenceResponse].
  /// [communityGalleryImageId] Specified the community gallery image unique id for vm deployment. This can be
  /// [exactVersion] Specifies in decimal numbers, the version of platform image or marketplace
  /// [id] Resource Id
  /// [offer] Specifies the offer of the platform image or marketplace image used to create
  /// [publisher] The image publisher.
  /// [sharedGalleryImageId] Specified the shared gallery image unique id for vm deployment. This can be
  /// [sku] The image SKU.
  /// [version] Specifies the version of the platform image or marketplace image used to create
  ImageReferenceResponse({
    this.communityGalleryImageId,
    required this.exactVersion,
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
      'exactVersion': exactVersion,
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
      communityGalleryImageId: map['communityGalleryImageId'] == null ? null : map['communityGalleryImageId'] as String,
      exactVersion: map['exactVersion'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      offer: map['offer'] == null ? null : map['offer'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      sharedGalleryImageId: map['sharedGalleryImageId'] == null ? null : map['sharedGalleryImageId'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

