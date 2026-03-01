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
    pulumi.Output<List<String>>? allowedRegions,
    pulumi.Output<AutoShutdownProfile>? defaultAutoShutdownProfile,
    pulumi.Output<ConnectionProfile>? defaultConnectionProfile,
    pulumi.Output<LabPlanNetworkProfile>? defaultNetworkProfile,
    pulumi.Output<Identity>? identity,
    pulumi.Output<String>? labPlanName,
    pulumi.Output<String>? linkedLmsInstance,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sharedGalleryId,
    pulumi.Output<SupportInfo>? supportInfo,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      allowedRegions = pulumi.Input.asOptionalInput<List<String>>(allowedRegions),
      defaultAutoShutdownProfile = pulumi.Input.asOptionalInput<AutoShutdownProfile>(defaultAutoShutdownProfile),
      defaultConnectionProfile = pulumi.Input.asOptionalInput<ConnectionProfile>(defaultConnectionProfile),
      defaultNetworkProfile = pulumi.Input.asOptionalInput<LabPlanNetworkProfile>(defaultNetworkProfile),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      labPlanName = pulumi.Input.asOptionalInput<String>(labPlanName),
      linkedLmsInstance = pulumi.Input.asOptionalInput<String>(linkedLmsInstance),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sharedGalleryId = pulumi.Input.asOptionalInput<String>(sharedGalleryId),
      supportInfo = pulumi.Input.asOptionalInput<SupportInfo>(supportInfo),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      allowedRegions: map['allowedRegions'] == null ? null : pulumi.Output.create<List<String>>((map['allowedRegions'] as List).cast<String>()),
      defaultAutoShutdownProfile: map['defaultAutoShutdownProfile'] == null ? null : pulumi.Output.create<AutoShutdownProfile>(AutoShutdownProfile.fromMap((map['defaultAutoShutdownProfile'] as Map).cast<String, dynamic>())),
      defaultConnectionProfile: map['defaultConnectionProfile'] == null ? null : pulumi.Output.create<ConnectionProfile>(ConnectionProfile.fromMap((map['defaultConnectionProfile'] as Map).cast<String, dynamic>())),
      defaultNetworkProfile: map['defaultNetworkProfile'] == null ? null : pulumi.Output.create<LabPlanNetworkProfile>(LabPlanNetworkProfile.fromMap((map['defaultNetworkProfile'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      labPlanName: map['labPlanName'] == null ? null : pulumi.Output.create<String>(map['labPlanName'] as String),
      linkedLmsInstance: map['linkedLmsInstance'] == null ? null : pulumi.Output.create<String>(map['linkedLmsInstance'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sharedGalleryId: map['sharedGalleryId'] == null ? null : pulumi.Output.create<String>(map['sharedGalleryId'] as String),
      supportInfo: map['supportInfo'] == null ? null : pulumi.Output.create<SupportInfo>(SupportInfo.fromMap((map['supportInfo'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

