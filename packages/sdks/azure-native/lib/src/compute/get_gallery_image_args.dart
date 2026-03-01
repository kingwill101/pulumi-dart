// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_gallery_image_args_doc}
/// Arguments for getGalleryImage.
/// {@endtemplate}
/// {@macro pulumi_compute_get_gallery_image_args_doc}
class GetGalleryImageArgs {
  /// The name of the gallery image definition to be retrieved.
  final pulumi.Input<String> galleryImageName;
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGalleryImageArgs].
  /// [galleryImageName] The name of the gallery image definition to be retrieved.
  /// [galleryName] The name of the Shared Image Gallery.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGalleryImageArgs({
    required pulumi.Output<String> galleryImageName,
    required pulumi.Output<String> galleryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      galleryImageName = pulumi.Input.asInput<String>(galleryImageName),
      galleryName = pulumi.Input.asInput<String>(galleryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryImageName': galleryImageName,
      'galleryName': galleryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGalleryImageArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryImageArgs(
      galleryImageName: pulumi.Output.create<String>(map['galleryImageName'] as String),
      galleryName: pulumi.Output.create<String>(map['galleryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

