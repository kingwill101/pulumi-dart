// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lab_announcement_properties.dart';
import 'lab_support_properties.dart';

/// {@template pulumi_devtestlab_lab_args_doc}
/// The set of arguments for Lab.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_lab_args_doc}
class LabArgs {
  /// The properties of any lab announcement associated with this lab
  final pulumi.Input<LabAnnouncementProperties>? announcement;
  /// The access rights to be granted to the user when provisioning an environment
  final pulumi.Input<String>? environmentPermission;
  /// Extended properties of the lab used for experimental features
  final pulumi.Input<Map<String, String>>? extendedProperties;
  /// Type of storage used by the lab. It can be either Premium or Standard. Default is Premium.
  final pulumi.Input<String>? labStorageType;
  /// The location of the resource.
  final pulumi.Input<String>? location;
  /// The ordered list of artifact resource IDs that should be applied on all Linux VM creations by default, prior to the artifacts specified by the user.
  final pulumi.Input<List<String>>? mandatoryArtifactsResourceIdsLinux;
  /// The ordered list of artifact resource IDs that should be applied on all Windows VM creations by default, prior to the artifacts specified by the user.
  final pulumi.Input<List<String>>? mandatoryArtifactsResourceIdsWindows;
  /// The name of the lab.
  final pulumi.Input<String>? name;
  /// The setting to enable usage of premium data disks.
  /// When its value is 'Enabled', creation of standard or premium data disks is allowed.
  /// When its value is 'Disabled', only creation of standard data disks is allowed.
  final pulumi.Input<String>? premiumDataDisks;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The properties of any lab support message associated with this lab
  final pulumi.Input<LabSupportProperties>? support;
  /// The tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LabArgs].
  /// [announcement] The properties of any lab announcement associated with this lab
  /// [environmentPermission] The access rights to be granted to the user when provisioning an environment
  /// [extendedProperties] Extended properties of the lab used for experimental features
  /// [labStorageType] Type of storage used by the lab. It can be either Premium or Standard. Default is Premium.
  /// [location] The location of the resource.
  /// [mandatoryArtifactsResourceIdsLinux] The ordered list of artifact resource IDs that should be applied on all Linux VM creations by default, prior to the artifacts specified by the user.
  /// [mandatoryArtifactsResourceIdsWindows] The ordered list of artifact resource IDs that should be applied on all Windows VM creations by default, prior to the artifacts specified by the user.
  /// [name] The name of the lab.
  /// [premiumDataDisks] The setting to enable usage of premium data disks.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [support] The properties of any lab support message associated with this lab
  /// [tags] The tags of the resource.
  LabArgs({
    this.announcement,
    this.environmentPermission,
    this.extendedProperties,
    this.labStorageType,
    this.location,
    this.mandatoryArtifactsResourceIdsLinux,
    this.mandatoryArtifactsResourceIdsWindows,
    this.name,
    this.premiumDataDisks,
    required this.resourceGroupName,
    this.support,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'announcement': ?pulumi.Input.mapOptionalInputValue<LabAnnouncementProperties, Map<String, dynamic>>(announcement, (value) => value.toMap()),
      'environmentPermission': ?environmentPermission,
      'extendedProperties': ?extendedProperties,
      'labStorageType': ?labStorageType,
      'location': ?location,
      'mandatoryArtifactsResourceIdsLinux': ?mandatoryArtifactsResourceIdsLinux,
      'mandatoryArtifactsResourceIdsWindows': ?mandatoryArtifactsResourceIdsWindows,
      'name': ?name,
      'premiumDataDisks': ?premiumDataDisks,
      'resourceGroupName': resourceGroupName,
      'support': ?pulumi.Input.mapOptionalInputValue<LabSupportProperties, Map<String, dynamic>>(support, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory LabArgs.fromMap(Map<String, dynamic> map) {
    return LabArgs(
      announcement: map['announcement'] == null ? null : (LabAnnouncementProperties.fromMap((map['announcement']! as Map).cast<String, dynamic>())).input(),
      environmentPermission: map['environmentPermission'] == null ? null : (map['environmentPermission']! as String).input(),
      extendedProperties: map['extendedProperties'] == null ? null : ((map['extendedProperties']! as Map).cast<String, String>()).input(),
      labStorageType: map['labStorageType'] == null ? null : (map['labStorageType']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      mandatoryArtifactsResourceIdsLinux: map['mandatoryArtifactsResourceIdsLinux'] == null ? null : ((map['mandatoryArtifactsResourceIdsLinux']! as List).cast<String>()).input(),
      mandatoryArtifactsResourceIdsWindows: map['mandatoryArtifactsResourceIdsWindows'] == null ? null : ((map['mandatoryArtifactsResourceIdsWindows']! as List).cast<String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      premiumDataDisks: map['premiumDataDisks'] == null ? null : (map['premiumDataDisks']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      support: map['support'] == null ? null : (LabSupportProperties.fromMap((map['support']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

