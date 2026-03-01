// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_gallery_in_vmaccess_control_profile_args_doc}
/// Arguments for getGalleryInVMAccessControlProfile.
/// {@endtemplate}
/// {@macro pulumi_compute_get_gallery_in_vmaccess_control_profile_args_doc}
class GetGalleryInVMAccessControlProfileArgs {
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the gallery inVMAccessControlProfile to be retrieved.
  final pulumi.Input<String> inVMAccessControlProfileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGalleryInVMAccessControlProfileArgs].
  /// [galleryName] The name of the Shared Image Gallery.
  /// [inVMAccessControlProfileName] The name of the gallery inVMAccessControlProfile to be retrieved.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGalleryInVMAccessControlProfileArgs({
    required String galleryName,
    required String inVMAccessControlProfileName,
    required String resourceGroupName,
  }) :
      galleryName = pulumi.Input.asInput<String>(galleryName),
      inVMAccessControlProfileName = pulumi.Input.asInput<String>(inVMAccessControlProfileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryName': galleryName,
      'inVMAccessControlProfileName': inVMAccessControlProfileName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGalleryInVMAccessControlProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryInVMAccessControlProfileArgs(
      galleryName: map['galleryName'] as String,
      inVMAccessControlProfileName: map['inVMAccessControlProfileName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

