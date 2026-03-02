// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_rules.dart';
import 'target_region.dart';

/// {@template pulumi_compute_gallery_in_vmaccess_control_profile_version_args_doc}
/// The set of arguments for GalleryInVMAccessControlProfileVersion.
/// {@endtemplate}
/// {@macro pulumi_compute_gallery_in_vmaccess_control_profile_version_args_doc}
class GalleryInVMAccessControlProfileVersionArgs {
  /// This property allows you to specify if the requests will be allowed to access the host endpoints. Possible values are: 'Allow', 'Deny'.
  final pulumi.Input<String> defaultAccess;
  /// If set to true, Virtual Machines deployed from the latest version of the Resource Profile won't use this Profile version.
  final pulumi.Input<bool>? excludeFromLatest;
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The name of the gallery inVMAccessControlProfile to be retrieved.
  final pulumi.Input<String> inVMAccessControlProfileName;
  /// The name of the gallery inVMAccessControlProfile version to be retrieved.
  final pulumi.Input<String>? inVMAccessControlProfileVersionName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// This property allows you to specify whether the access control rules are in Audit mode, in Enforce mode or Disabled. Possible values are: 'Audit', 'Enforce' or 'Disabled'.
  final pulumi.Input<String> mode;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// This is the Access Control Rules specification for an inVMAccessControlProfile version.
  final pulumi.Input<AccessControlRules>? rules;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The target regions where the Resource Profile version is going to be replicated to. This property is updatable.
  final pulumi.Input<List<TargetRegion>>? targetLocations;

  /// Creates a new [GalleryInVMAccessControlProfileVersionArgs].
  /// [defaultAccess] This property allows you to specify if the requests will be allowed to access the host endpoints. Possible values are: 'Allow', 'Deny'.
  /// [excludeFromLatest] If set to true, Virtual Machines deployed from the latest version of the Resource Profile won't use this Profile version.
  /// [galleryName] The name of the Shared Image Gallery.
  /// [inVMAccessControlProfileName] The name of the gallery inVMAccessControlProfile to be retrieved.
  /// [inVMAccessControlProfileVersionName] The name of the gallery inVMAccessControlProfile version to be retrieved.
  /// [location] The geo-location where the resource lives
  /// [mode] This property allows you to specify whether the access control rules are in Audit mode, in Enforce mode or Disabled. Possible values are: 'Audit', 'Enforce' or 'Disabled'.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rules] This is the Access Control Rules specification for an inVMAccessControlProfile version.
  /// [tags] Resource tags.
  /// [targetLocations] The target regions where the Resource Profile version is going to be replicated to. This property is updatable.
  GalleryInVMAccessControlProfileVersionArgs({
    required this.defaultAccess,
    this.excludeFromLatest,
    required this.galleryName,
    required this.inVMAccessControlProfileName,
    this.inVMAccessControlProfileVersionName,
    this.location,
    required this.mode,
    required this.resourceGroupName,
    this.rules,
    this.tags,
    this.targetLocations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAccess': defaultAccess,
      'excludeFromLatest': ?excludeFromLatest,
      'galleryName': galleryName,
      'inVMAccessControlProfileName': inVMAccessControlProfileName,
      'inVMAccessControlProfileVersionName': ?inVMAccessControlProfileVersionName,
      'location': ?location,
      'mode': mode,
      'resourceGroupName': resourceGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<AccessControlRules, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'tags': ?tags,
      'targetLocations': ?pulumi.Input.mapOptionalInputValue<List<TargetRegion>, List<Map<String, dynamic>>>(targetLocations, (value) => pulumi.Input.encodeList<TargetRegion, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GalleryInVMAccessControlProfileVersionArgs.fromMap(Map<String, dynamic> map) {
    return GalleryInVMAccessControlProfileVersionArgs(
      defaultAccess: (map['defaultAccess'] as String).input(),
      excludeFromLatest: map['excludeFromLatest'] == null ? null : (map['excludeFromLatest'] as bool).input(),
      galleryName: (map['galleryName'] as String).input(),
      inVMAccessControlProfileName: (map['inVMAccessControlProfileName'] as String).input(),
      inVMAccessControlProfileVersionName: map['inVMAccessControlProfileVersionName'] == null ? null : (map['inVMAccessControlProfileVersionName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mode: (map['mode'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      rules: map['rules'] == null ? null : (AccessControlRules.fromMap((map['rules'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      targetLocations: map['targetLocations'] == null ? null : (pulumi.Input.decodeList<TargetRegion>(map['targetLocations'], (value) => TargetRegion.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

