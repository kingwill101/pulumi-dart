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
  const GetGalleryApplicationArgs({
    required this.galleryApplicationName,
    required this.galleryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryApplicationName': galleryApplicationName,
      'galleryName': galleryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGalleryApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryApplicationArgs(
      galleryApplicationName: pulumi.Input.fromValue(map['galleryApplicationName'] as String),
      galleryName: pulumi.Input.fromValue(map['galleryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

