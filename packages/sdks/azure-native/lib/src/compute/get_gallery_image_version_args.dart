// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_gallery_image_version_args_doc}
/// Arguments for getGalleryImageVersion.
/// {@endtemplate}
/// {@macro pulumi_compute_get_gallery_image_version_args_doc}
class GetGalleryImageVersionArgs {
  /// The expand expression to apply on the operation.
  final pulumi.Input<String?>? expand;
  /// The name of the gallery image definition to be retrieved.
  final pulumi.Input<String> galleryImageName;
  /// The name of the gallery image version to be retrieved.
  final pulumi.Input<String> galleryImageVersionName;
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGalleryImageVersionArgs].
  /// [expand] The expand expression to apply on the operation.
  /// [galleryImageName] The name of the gallery image definition to be retrieved.
  /// [galleryImageVersionName] The name of the gallery image version to be retrieved.
  /// [galleryName] The name of the Shared Image Gallery.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetGalleryImageVersionArgs({
    this.expand,
    required this.galleryImageName,
    required this.galleryImageVersionName,
    required this.galleryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'galleryImageName': galleryImageName,
      'galleryImageVersionName': galleryImageVersionName,
      'galleryName': galleryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGalleryImageVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryImageVersionArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      galleryImageName: pulumi.Input.fromValue(map['galleryImageName'] as String),
      galleryImageVersionName: pulumi.Input.fromValue(map['galleryImageVersionName'] as String),
      galleryName: pulumi.Input.fromValue(map['galleryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
