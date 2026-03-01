// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_gallery_in_vmaccess_control_profile_version_args_doc}
/// Arguments for getGalleryInVMAccessControlProfileVersion.
/// {@endtemplate}
/// {@macro pulumi_compute_get_gallery_in_vmaccess_control_profile_version_args_doc}
class GetGalleryInVMAccessControlProfileVersionArgs {
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the gallery inVMAccessControlProfile to be retrieved.
  final pulumi.Input<String> inVMAccessControlProfileName;
  /// The name of the gallery inVMAccessControlProfile version to be retrieved.
  final pulumi.Input<String> inVMAccessControlProfileVersionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetGalleryInVMAccessControlProfileVersionArgs].
  /// [galleryName] The name of the Shared Image Gallery.
  /// [inVMAccessControlProfileName] The name of the gallery inVMAccessControlProfile to be retrieved.
  /// [inVMAccessControlProfileVersionName] The name of the gallery inVMAccessControlProfile version to be retrieved.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetGalleryInVMAccessControlProfileVersionArgs({
    required String galleryName,
    required String inVMAccessControlProfileName,
    required String inVMAccessControlProfileVersionName,
    required String resourceGroupName,
  }) :
      galleryName = pulumi.Input.asInput<String>(galleryName),
      inVMAccessControlProfileName = pulumi.Input.asInput<String>(inVMAccessControlProfileName),
      inVMAccessControlProfileVersionName = pulumi.Input.asInput<String>(inVMAccessControlProfileVersionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'galleryName': galleryName,
      'inVMAccessControlProfileName': inVMAccessControlProfileName,
      'inVMAccessControlProfileVersionName': inVMAccessControlProfileVersionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetGalleryInVMAccessControlProfileVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetGalleryInVMAccessControlProfileVersionArgs(
      galleryName: map['galleryName'] as String,
      inVMAccessControlProfileName: map['inVMAccessControlProfileName'] as String,
      inVMAccessControlProfileVersionName: map['inVMAccessControlProfileVersionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

