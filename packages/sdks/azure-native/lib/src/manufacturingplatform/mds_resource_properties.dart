// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmk_profile.dart';
import 'deny_assignment_exclusion.dart';
import 'fabric_profile.dart';
import 'open_aiprofile.dart';
import 'user_managed_open_aiprofile.dart';

/// Details of the ManufacturingPlatform MdsResource.
class MdsResourceProperties {
  /// AAD Application Id.
  final pulumi.Input<String> aadApplicationId;
  /// AKS Admin Group Id.
  final pulumi.Input<String>? aksAdminGroupId;
  /// Profile of CMK Settings.
  final pulumi.Input<CmkProfile>? cmkProfile;
  /// Deny Assignments exclusion list.
  final pulumi.Input<List<DenyAssignmentExclusion>>? denyAssignmentExclusions;
  /// Enable Copilot.
  final pulumi.Input<bool>? enableCopilot;
  /// Enable Diagnostic Settings.
  final pulumi.Input<bool>? enableDiagnosticSettings;
  /// Profile of Fabric resources.
  final pulumi.Input<FabricProfile>? fabricProfile;
  /// Profile of OpenAI Resource.
  final pulumi.Input<OpenAIProfile>? openAIProfile;
  /// Zone redundancy state for resources
  final pulumi.Input<String>? redundancyState;
  /// State of the resource
  final pulumi.Input<String>? resourceState;
  /// Profile of User Managed OpenAI Resource.
  final pulumi.Input<UserManagedOpenAIProfile>? userManagedOpenAIProfile;
  /// Mds Resource Version.
  final pulumi.Input<String>? version;

  /// Creates a new [MdsResourceProperties].
  /// [aadApplicationId] AAD Application Id.
  /// [aksAdminGroupId] AKS Admin Group Id.
  /// [cmkProfile] Profile of CMK Settings.
  /// [denyAssignmentExclusions] Deny Assignments exclusion list.
  /// [enableCopilot] Enable Copilot.
  /// [enableDiagnosticSettings] Enable Diagnostic Settings.
  /// [fabricProfile] Profile of Fabric resources.
  /// [openAIProfile] Profile of OpenAI Resource.
  /// [redundancyState] Zone redundancy state for resources
  /// [resourceState] State of the resource
  /// [userManagedOpenAIProfile] Profile of User Managed OpenAI Resource.
  /// [version] Mds Resource Version.
  MdsResourceProperties({
    required this.aadApplicationId,
    this.aksAdminGroupId,
    this.cmkProfile,
    this.denyAssignmentExclusions,
    this.enableCopilot,
    this.enableDiagnosticSettings,
    this.fabricProfile,
    this.openAIProfile,
    this.redundancyState,
    this.resourceState,
    this.userManagedOpenAIProfile,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadApplicationId': aadApplicationId,
      'aksAdminGroupId': ?aksAdminGroupId,
      'cmkProfile': ?pulumi.Input.mapOptionalInputValue<CmkProfile, Map<String, dynamic>>(cmkProfile, (value) => value.toMap()),
      'denyAssignmentExclusions': ?pulumi.Input.mapOptionalInputValue<List<DenyAssignmentExclusion>, List<Map<String, dynamic>>>(denyAssignmentExclusions, (value) => pulumi.Input.encodeList<DenyAssignmentExclusion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableCopilot': ?enableCopilot,
      'enableDiagnosticSettings': ?enableDiagnosticSettings,
      'fabricProfile': ?pulumi.Input.mapOptionalInputValue<FabricProfile, Map<String, dynamic>>(fabricProfile, (value) => value.toMap()),
      'openAIProfile': ?pulumi.Input.mapOptionalInputValue<OpenAIProfile, Map<String, dynamic>>(openAIProfile, (value) => value.toMap()),
      'redundancyState': ?redundancyState,
      'resourceState': ?resourceState,
      'userManagedOpenAIProfile': ?pulumi.Input.mapOptionalInputValue<UserManagedOpenAIProfile, Map<String, dynamic>>(userManagedOpenAIProfile, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory MdsResourceProperties.fromMap(Map<String, dynamic> map) {
    return MdsResourceProperties(
      aadApplicationId: (map['aadApplicationId'] as String).input(),
      aksAdminGroupId: map['aksAdminGroupId'] == null ? null : (map['aksAdminGroupId'] as String).input(),
      cmkProfile: map['cmkProfile'] == null ? null : (CmkProfile.fromMap((map['cmkProfile'] as Map).cast<String, dynamic>())).input(),
      denyAssignmentExclusions: map['denyAssignmentExclusions'] == null ? null : (pulumi.Input.decodeList<DenyAssignmentExclusion>(map['denyAssignmentExclusions'], (value) => DenyAssignmentExclusion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableCopilot: map['enableCopilot'] == null ? null : (map['enableCopilot'] as bool).input(),
      enableDiagnosticSettings: map['enableDiagnosticSettings'] == null ? null : (map['enableDiagnosticSettings'] as bool).input(),
      fabricProfile: map['fabricProfile'] == null ? null : (FabricProfile.fromMap((map['fabricProfile'] as Map).cast<String, dynamic>())).input(),
      openAIProfile: map['openAIProfile'] == null ? null : (OpenAIProfile.fromMap((map['openAIProfile'] as Map).cast<String, dynamic>())).input(),
      redundancyState: map['redundancyState'] == null ? null : (map['redundancyState'] as String).input(),
      resourceState: map['resourceState'] == null ? null : (map['resourceState'] as String).input(),
      userManagedOpenAIProfile: map['userManagedOpenAIProfile'] == null ? null : (UserManagedOpenAIProfile.fromMap((map['userManagedOpenAIProfile'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

