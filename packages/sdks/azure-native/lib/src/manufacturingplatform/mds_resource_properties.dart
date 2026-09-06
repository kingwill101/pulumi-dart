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
  final pulumi.Input<String?>? aksAdminGroupId;
  /// Profile of CMK Settings.
  final pulumi.Input<CmkProfile?>? cmkProfile;
  /// Deny Assignments exclusion list.
  final pulumi.Input<List<DenyAssignmentExclusion>?>? denyAssignmentExclusions;
  /// Enable Copilot.
  final pulumi.Input<bool?>? enableCopilot;
  /// Enable Diagnostic Settings.
  final pulumi.Input<bool?>? enableDiagnosticSettings;
  /// Profile of Fabric resources.
  final pulumi.Input<FabricProfile?>? fabricProfile;
  /// Profile of OpenAI Resource.
  final pulumi.Input<OpenAIProfile?>? openAIProfile;
  /// Zone redundancy state for resources
  final pulumi.Input<dynamic>? redundancyState;
  /// State of the resource
  final pulumi.Input<dynamic>? resourceState;
  /// Profile of User Managed OpenAI Resource.
  final pulumi.Input<UserManagedOpenAIProfile?>? userManagedOpenAIProfile;
  /// Mds Resource Version.
  final pulumi.Input<String?>? version;

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
    pulumi.Input<String?>? aksAdminGroupId,
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
  }) : aksAdminGroupId = aksAdminGroupId ?? pulumi.Input.fromValue('00000000-0000-0000-0000-000000000000');

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
      aadApplicationId: pulumi.Input.fromValue(map['aadApplicationId'] as String),
      aksAdminGroupId: (() { final guardedValue = map['aksAdminGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cmkProfile: (() { final guardedValue = map['cmkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CmkProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      denyAssignmentExclusions: (() { final guardedValue = map['denyAssignmentExclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DenyAssignmentExclusion>(guardedValue, (value) => DenyAssignmentExclusion.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableCopilot: (() { final guardedValue = map['enableCopilot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDiagnosticSettings: (() { final guardedValue = map['enableDiagnosticSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fabricProfile: (() { final guardedValue = map['fabricProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FabricProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      openAIProfile: (() { final guardedValue = map['openAIProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenAIProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      redundancyState: (() { final guardedValue = map['redundancyState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceState: (() { final guardedValue = map['resourceState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      userManagedOpenAIProfile: (() { final guardedValue = map['userManagedOpenAIProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserManagedOpenAIProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
