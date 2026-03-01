// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_gallery_args_doc}
/// Arguments for getGallery.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_gallery_args_doc}
class GetGalleryArgs {
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGalleryArgs].
  /// [devCenterName] The name of the devcenter.
  /// [galleryName] The name of the gallery.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGalleryArgs({
    required String devCenterName,
    required String galleryName,
    required String resourceGroupName,
  }) :
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      galleryName = pulumi.Input.asInput<String>(galleryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterName': devCenterName,
      'galleryName': galleryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGalleryArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryArgs(
      devCenterName: map['devCenterName'] as String,
      galleryName: map['galleryName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

