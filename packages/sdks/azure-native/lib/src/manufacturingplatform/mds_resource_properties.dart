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
  final String aadApplicationId;
  /// AKS Admin Group Id.
  final String? aksAdminGroupId;
  /// Profile of CMK Settings.
  final CmkProfile? cmkProfile;
  /// Deny Assignments exclusion list.
  final List<DenyAssignmentExclusion>? denyAssignmentExclusions;
  /// Enable Copilot.
  final bool? enableCopilot;
  /// Enable Diagnostic Settings.
  final bool? enableDiagnosticSettings;
  /// Profile of Fabric resources.
  final FabricProfile? fabricProfile;
  /// Profile of OpenAI Resource.
  final OpenAIProfile? openAIProfile;
  /// Zone redundancy state for resources
  final String? redundancyState;
  /// State of the resource
  final String? resourceState;
  /// Profile of User Managed OpenAI Resource.
  final UserManagedOpenAIProfile? userManagedOpenAIProfile;
  /// Mds Resource Version.
  final String? version;

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
      'cmkProfile': ?cmkProfile == null ? null : cmkProfile!.toMap(),
      'denyAssignmentExclusions': ?denyAssignmentExclusions == null ? null : pulumi.Input.encodeList<DenyAssignmentExclusion, Map<String, dynamic>>(denyAssignmentExclusions!, (value) => value.toMap()),
      'enableCopilot': ?enableCopilot,
      'enableDiagnosticSettings': ?enableDiagnosticSettings,
      'fabricProfile': ?fabricProfile == null ? null : fabricProfile!.toMap(),
      'openAIProfile': ?openAIProfile == null ? null : openAIProfile!.toMap(),
      'redundancyState': ?redundancyState,
      'resourceState': ?resourceState,
      'userManagedOpenAIProfile': ?userManagedOpenAIProfile == null ? null : userManagedOpenAIProfile!.toMap(),
      'version': ?version,
    };
  }

  factory MdsResourceProperties.fromMap(Map<String, dynamic> map) {
    return MdsResourceProperties(
      aadApplicationId: map['aadApplicationId'] as String,
      aksAdminGroupId: map['aksAdminGroupId'] == null ? null : map['aksAdminGroupId'] as String,
      cmkProfile: map['cmkProfile'] == null ? null : CmkProfile.fromMap((map['cmkProfile'] as Map).cast<String, dynamic>()),
      denyAssignmentExclusions: map['denyAssignmentExclusions'] == null ? null : pulumi.Input.decodeList<DenyAssignmentExclusion>(map['denyAssignmentExclusions'], (value) => DenyAssignmentExclusion.fromMap((value as Map).cast<String, dynamic>())),
      enableCopilot: map['enableCopilot'] == null ? null : map['enableCopilot'] as bool,
      enableDiagnosticSettings: map['enableDiagnosticSettings'] == null ? null : map['enableDiagnosticSettings'] as bool,
      fabricProfile: map['fabricProfile'] == null ? null : FabricProfile.fromMap((map['fabricProfile'] as Map).cast<String, dynamic>()),
      openAIProfile: map['openAIProfile'] == null ? null : OpenAIProfile.fromMap((map['openAIProfile'] as Map).cast<String, dynamic>()),
      redundancyState: map['redundancyState'] == null ? null : map['redundancyState'] as String,
      resourceState: map['resourceState'] == null ? null : map['resourceState'] as String,
      userManagedOpenAIProfile: map['userManagedOpenAIProfile'] == null ? null : UserManagedOpenAIProfile.fromMap((map['userManagedOpenAIProfile'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

