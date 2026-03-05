// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_shutdown_profile.dart';
import 'connection_profile.dart';
import 'identity.dart';
import 'lab_plan_network_profile.dart';
import 'support_info.dart';

/// {@template pulumi_labservices_lab_plan_args_doc}
/// The set of arguments for LabPlan.
/// {@endtemplate}
/// {@macro pulumi_labservices_lab_plan_args_doc}
class LabPlanArgs {
  /// The allowed regions for the lab creator to use when creating labs using this lab plan.
  final pulumi.Input<List<String>>? allowedRegions;
  /// The default lab shutdown profile. This can be changed on a lab resource and only provides a default profile.
  final pulumi.Input<AutoShutdownProfile>? defaultAutoShutdownProfile;
  /// The default lab connection profile. This can be changed on a lab resource and only provides a default profile.
  final pulumi.Input<ConnectionProfile>? defaultConnectionProfile;
  /// The lab plan network profile. To enforce lab network policies they must be defined here and cannot be changed when there are existing labs associated with this lab plan.
  final pulumi.Input<LabPlanNetworkProfile>? defaultNetworkProfile;
  /// Managed Identity Information
  final pulumi.Input<Identity>? identity;
  /// The name of the lab plan that uniquely identifies it within containing resource group. Used in resource URIs and in UI.
  final pulumi.Input<String>? labPlanName;
  /// Base Url of the lms instance this lab plan can link lab rosters against.
  final pulumi.Input<String>? linkedLmsInstance;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource ID of the Shared Image Gallery attached to this lab plan. When saving a lab template virtual machine image it will be persisted in this gallery. Shared images from the gallery can be made available to use when creating new labs.
  final pulumi.Input<String>? sharedGalleryId;
  /// Support contact information and instructions for users of the lab plan. This information is displayed to lab owners and virtual machine users for all labs in the lab plan.
  final pulumi.Input<SupportInfo>? supportInfo;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LabPlanArgs].
  /// [allowedRegions] The allowed regions for the lab creator to use when creating labs using this lab plan.
  /// [defaultAutoShutdownProfile] The default lab shutdown profile. This can be changed on a lab resource and only provides a default profile.
  /// [defaultConnectionProfile] The default lab connection profile. This can be changed on a lab resource and only provides a default profile.
  /// [defaultNetworkProfile] The lab plan network profile. To enforce lab network policies they must be defined here and cannot be changed when there are existing labs associated with this lab plan.
  /// [identity] Managed Identity Information
  /// [labPlanName] The name of the lab plan that uniquely identifies it within containing resource group. Used in resource URIs and in UI.
  /// [linkedLmsInstance] Base Url of the lms instance this lab plan can link lab rosters against.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sharedGalleryId] Resource ID of the Shared Image Gallery attached to this lab plan. When saving a lab template virtual machine image it will be persisted in this gallery. Shared images from the gallery can be made available to use when creating new labs.
  /// [supportInfo] Support contact information and instructions for users of the lab plan. This information is displayed to lab owners and virtual machine users for all labs in the lab plan.
  /// [tags] Resource tags.
  LabPlanArgs({
    this.allowedRegions,
    this.defaultAutoShutdownProfile,
    this.defaultConnectionProfile,
    this.defaultNetworkProfile,
    this.identity,
    this.labPlanName,
    this.linkedLmsInstance,
    this.location,
    required this.resourceGroupName,
    this.sharedGalleryId,
    this.supportInfo,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedRegions': ?allowedRegions,
      'defaultAutoShutdownProfile': ?pulumi.Input.mapOptionalInputValue<AutoShutdownProfile, Map<String, dynamic>>(defaultAutoShutdownProfile, (value) => value.toMap()),
      'defaultConnectionProfile': ?pulumi.Input.mapOptionalInputValue<ConnectionProfile, Map<String, dynamic>>(defaultConnectionProfile, (value) => value.toMap()),
      'defaultNetworkProfile': ?pulumi.Input.mapOptionalInputValue<LabPlanNetworkProfile, Map<String, dynamic>>(defaultNetworkProfile, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'labPlanName': ?labPlanName,
      'linkedLmsInstance': ?linkedLmsInstance,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sharedGalleryId': ?sharedGalleryId,
      'supportInfo': ?pulumi.Input.mapOptionalInputValue<SupportInfo, Map<String, dynamic>>(supportInfo, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory LabPlanArgs.fromMap(Map<String, dynamic> map) {
    return LabPlanArgs(
      allowedRegions: (() { final guardedValue = map['allowedRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      defaultAutoShutdownProfile: (() { final guardedValue = map['defaultAutoShutdownProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AutoShutdownProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultConnectionProfile: (() { final guardedValue = map['defaultConnectionProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultNetworkProfile: (() { final guardedValue = map['defaultNetworkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LabPlanNetworkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Identity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labPlanName: (() { final guardedValue = map['labPlanName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedLmsInstance: (() { final guardedValue = map['linkedLmsInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sharedGalleryId: (() { final guardedValue = map['sharedGalleryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportInfo: (() { final guardedValue = map['supportInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SupportInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

