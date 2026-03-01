// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_gallery_application_args_doc}
/// Arguments for getGalleryApplication.
/// {@endtemplate}
/// {@macro pulumi_compute_get_gallery_application_args_doc}
class GetGalleryApplicationArgs {
  /// The name of the gallery Application Definition to be retrieved.
  final pulumi.Input<String> galleryApplicationName;
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGalleryApplicationArgs].
  /// [galleryApplicationName] The name of the gallery Application Definition to be retrieved.
  /// [galleryName] The name of the Shared Image Gallery.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGalleryApplicationArgs({
    required String galleryApplicationName,
    required String galleryName,
    required String resourceGroupName,
  }) :
      galleryApplicationName = pulumi.Input.asInput<String>(galleryApplicationName),
      galleryName = pulumi.Input.asInput<String>(galleryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryApplicationName': galleryApplicationName,
      'galleryName': galleryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGalleryApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryApplicationArgs(
      galleryApplicationName: map['galleryApplicationName'] as String,
      galleryName: map['galleryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

