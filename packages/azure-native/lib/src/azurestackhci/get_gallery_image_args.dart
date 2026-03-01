// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_gallery_image_args_doc}
/// Arguments for getGalleryImage.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_gallery_image_args_doc}
class GetGalleryImageArgs {
  /// Name of the gallery image
  final pulumi.Input<String> galleryImageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGalleryImageArgs].
  /// [galleryImageName] Name of the gallery image
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGalleryImageArgs({
    required String galleryImageName,
    required String resourceGroupName,
  }) :
      galleryImageName = pulumi.Input.asInput<String>(galleryImageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryImageName': galleryImageName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGalleryImageArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryImageArgs(
      galleryImageName: map['galleryImageName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

