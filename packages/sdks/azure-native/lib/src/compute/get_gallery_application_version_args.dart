// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_gallery_application_version_args_doc}
/// Arguments for getGalleryApplicationVersion.
/// {@endtemplate}
/// {@macro pulumi_compute_get_gallery_application_version_args_doc}
class GetGalleryApplicationVersionArgs {
  /// The expand expression to apply on the operation.
  final pulumi.Input<String>? expand;
  /// The name of the gallery Application Definition to be retrieved.
  final pulumi.Input<String> galleryApplicationName;
  /// The name of the gallery Application Version to be retrieved.
  final pulumi.Input<String> galleryApplicationVersionName;
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGalleryApplicationVersionArgs].
  /// [expand] The expand expression to apply on the operation.
  /// [galleryApplicationName] The name of the gallery Application Definition to be retrieved.
  /// [galleryApplicationVersionName] The name of the gallery Application Version to be retrieved.
  /// [galleryName] The name of the Shared Image Gallery.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetGalleryApplicationVersionArgs({
    this.expand,
    required this.galleryApplicationName,
    required this.galleryApplicationVersionName,
    required this.galleryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'galleryApplicationName': galleryApplicationName,
      'galleryApplicationVersionName': galleryApplicationVersionName,
      'galleryName': galleryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGalleryApplicationVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryApplicationVersionArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      galleryApplicationName: pulumi.Input.fromValue(map['galleryApplicationName'] as String),
      galleryApplicationVersionName: pulumi.Input.fromValue(map['galleryApplicationVersionName'] as String),
      galleryName: pulumi.Input.fromValue(map['galleryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
