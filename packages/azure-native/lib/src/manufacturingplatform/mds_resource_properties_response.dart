// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'adx_profile_response.dart';
import 'aks_profile_response.dart';
import 'cmk_profile_response.dart';
import 'database_profile_response.dart';
import 'deny_assignment_exclusion_response.dart';
import 'event_hub_profile_response.dart';
import 'fabric_profile_response.dart';
import 'function_app_profile_response.dart';
import 'managed_on_behalf_of_configuration_response.dart';
import 'managed_resource_group_configuration_response.dart';
import 'monitoring_profile_response.dart';
import 'open_aiprofile_response.dart';
import 'redis_profile_response.dart';
import 'storage_profile_response.dart';
import 'user_managed_open_aiprofile_response.dart';

/// Details of the ManufacturingPlatform MdsResource.
class MdsResourcePropertiesResponse {
  /// AAD Application Id.
  final String aadApplicationId;
  /// Profile of Adx Created.
  final AdxProfileResponse adxProfile;
  /// AKS Admin Group Id.
  final String? aksAdminGroupId;
  /// Profile of AKS Created.
  final AksProfileResponse aksProfile;
  /// Profile of CMK Settings.
  final CmkProfileResponse? cmkProfile;
  /// Profile of Database Created.
  final DatabaseProfileResponse databaseProfile;
  /// Deny Assignments exclusion list.
  final List<DenyAssignmentExclusionResponse>? denyAssignmentExclusions;
  /// Enable Copilot.
  final bool? enableCopilot;
  /// Enable Diagnostic Settings.
  final bool? enableDiagnosticSettings;
  /// Profile of EventHub Resource.
  final EventHubProfileResponse eventHubProfile;
  /// Profile of Fabric resources.
  final FabricProfileResponse? fabricProfile;
  /// Profile of Function App Resource.
  final FunctionAppProfileResponse functionAppProfile;
  /// Managed On Behalf Of Configuration.
  final ManagedOnBehalfOfConfigurationResponse managedOnBehalfOfConfiguration;
  /// Configuration of the managed resource group associated with the resource.
  final ManagedResourceGroupConfigurationResponse managedResourceGroupConfiguration;
  /// Profile of Monitoring Resource Created.
  final MonitoringProfileResponse monitoringProfile;
  /// Profile of OpenAI Resource.
  final OpenAIProfileResponse? openAIProfile;
  /// The status of the last operation.
  final String provisioningState;
  /// Profile of Azure Redis Created.
  final RedisProfileResponse redisProfile;
  /// Zone redundancy state for resources
  final String? redundancyState;
  /// State of the resource
  final String? resourceState;
  /// Service Url
  final String serviceUrl;
  /// Profile of Storage Created.
  final StorageProfileResponse storageProfile;
  /// Profile of User Managed OpenAI Resource.
  final UserManagedOpenAIProfileResponse? userManagedOpenAIProfile;
  /// Mds Resource Version.
  final String? version;

  /// Creates a new [MdsResourcePropertiesResponse].
  /// [aadApplicationId] AAD Application Id.
  /// [adxProfile] Profile of Adx Created.
  /// [aksAdminGroupId] AKS Admin Group Id.
  /// [aksProfile] Profile of AKS Created.
  /// [cmkProfile] Profile of CMK Settings.
  /// [databaseProfile] Profile of Database Created.
  /// [denyAssignmentExclusions] Deny Assignments exclusion list.
  /// [enableCopilot] Enable Copilot.
  /// [enableDiagnosticSettings] Enable Diagnostic Settings.
  /// [eventHubProfile] Profile of EventHub Resource.
  /// [fabricProfile] Profile of Fabric resources.
  /// [functionAppProfile] Profile of Function App Resource.
  /// [managedOnBehalfOfConfiguration] Managed On Behalf Of Configuration.
  /// [managedResourceGroupConfiguration] Configuration of the managed resource group associated with the resource.
  /// [monitoringProfile] Profile of Monitoring Resource Created.
  /// [openAIProfile] Profile of OpenAI Resource.
  /// [provisioningState] The status of the last operation.
  /// [redisProfile] Profile of Azure Redis Created.
  /// [redundancyState] Zone redundancy state for resources
  /// [resourceState] State of the resource
  /// [serviceUrl] Service Url
  /// [storageProfile] Profile of Storage Created.
  /// [userManagedOpenAIProfile] Profile of User Managed OpenAI Resource.
  /// [version] Mds Resource Version.
  MdsResourcePropertiesResponse({
    required this.aadApplicationId,
    required this.adxProfile,
    this.aksAdminGroupId,
    required this.aksProfile,
    this.cmkProfile,
    required this.databaseProfile,
    this.denyAssignmentExclusions,
    this.enableCopilot,
    this.enableDiagnosticSettings,
    required this.eventHubProfile,
    this.fabricProfile,
    required this.functionAppProfile,
    required this.managedOnBehalfOfConfiguration,
    required this.managedResourceGroupConfiguration,
    required this.monitoringProfile,
    this.openAIProfile,
    required this.provisioningState,
    required this.redisProfile,
    this.redundancyState,
    this.resourceState,
    required this.serviceUrl,
    required this.storageProfile,
    this.userManagedOpenAIProfile,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadApplicationId': aadApplicationId,
      'adxProfile': adxProfile.toMap(),
      'aksAdminGroupId': ?aksAdminGroupId,
      'aksProfile': aksProfile.toMap(),
      'cmkProfile': ?cmkProfile == null ? null : cmkProfile!.toMap(),
      'databaseProfile': databaseProfile.toMap(),
      'denyAssignmentExclusions': ?denyAssignmentExclusions == null ? null : pulumi.Input.encodeList<DenyAssignmentExclusionResponse, Map<String, dynamic>>(denyAssignmentExclusions!, (value) => value.toMap()),
      'enableCopilot': ?enableCopilot,
      'enableDiagnosticSettings': ?enableDiagnosticSettings,
      'eventHubProfile': eventHubProfile.toMap(),
      'fabricProfile': ?fabricProfile == null ? null : fabricProfile!.toMap(),
      'functionAppProfile': functionAppProfile.toMap(),
      'managedOnBehalfOfConfiguration': managedOnBehalfOfConfiguration.toMap(),
      'managedResourceGroupConfiguration': managedResourceGroupConfiguration.toMap(),
      'monitoringProfile': monitoringProfile.toMap(),
      'openAIProfile': ?openAIProfile == null ? null : openAIProfile!.toMap(),
      'provisioningState': provisioningState,
      'redisProfile': redisProfile.toMap(),
      'redundancyState': ?redundancyState,
      'resourceState': ?resourceState,
      'serviceUrl': serviceUrl,
      'storageProfile': storageProfile.toMap(),
      'userManagedOpenAIProfile': ?userManagedOpenAIProfile == null ? null : userManagedOpenAIProfile!.toMap(),
      'version': ?version,
    };
  }

  factory MdsResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MdsResourcePropertiesResponse(
      aadApplicationId: map['aadApplicationId'] as String,
      adxProfile: AdxProfileResponse.fromMap((map['adxProfile'] as Map).cast<String, dynamic>()),
      aksAdminGroupId: map['aksAdminGroupId'] == null ? null : map['aksAdminGroupId'] as String,
      aksProfile: AksProfileResponse.fromMap((map['aksProfile'] as Map).cast<String, dynamic>()),
      cmkProfile: map['cmkProfile'] == null ? null : CmkProfileResponse.fromMap((map['cmkProfile'] as Map).cast<String, dynamic>()),
      databaseProfile: DatabaseProfileResponse.fromMap((map['databaseProfile'] as Map).cast<String, dynamic>()),
      denyAssignmentExclusions: map['denyAssignmentExclusions'] == null ? null : pulumi.Input.decodeList<DenyAssignmentExclusionResponse>(map['denyAssignmentExclusions'], (value) => DenyAssignmentExclusionResponse.fromMap((value as Map).cast<String, dynamic>())),
      enableCopilot: map['enableCopilot'] == null ? null : map['enableCopilot'] as bool,
      enableDiagnosticSettings: map['enableDiagnosticSettings'] == null ? null : map['enableDiagnosticSettings'] as bool,
      eventHubProfile: EventHubProfileResponse.fromMap((map['eventHubProfile'] as Map).cast<String, dynamic>()),
      fabricProfile: map['fabricProfile'] == null ? null : FabricProfileResponse.fromMap((map['fabricProfile'] as Map).cast<String, dynamic>()),
      functionAppProfile: FunctionAppProfileResponse.fromMap((map['functionAppProfile'] as Map).cast<String, dynamic>()),
      managedOnBehalfOfConfiguration: ManagedOnBehalfOfConfigurationResponse.fromMap((map['managedOnBehalfOfConfiguration'] as Map).cast<String, dynamic>()),
      managedResourceGroupConfiguration: ManagedResourceGroupConfigurationResponse.fromMap((map['managedResourceGroupConfiguration'] as Map).cast<String, dynamic>()),
      monitoringProfile: MonitoringProfileResponse.fromMap((map['monitoringProfile'] as Map).cast<String, dynamic>()),
      openAIProfile: map['openAIProfile'] == null ? null : OpenAIProfileResponse.fromMap((map['openAIProfile'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      redisProfile: RedisProfileResponse.fromMap((map['redisProfile'] as Map).cast<String, dynamic>()),
      redundancyState: map['redundancyState'] == null ? null : map['redundancyState'] as String,
      resourceState: map['resourceState'] == null ? null : map['resourceState'] as String,
      serviceUrl: map['serviceUrl'] as String,
      storageProfile: StorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>()),
      userManagedOpenAIProfile: map['userManagedOpenAIProfile'] == null ? null : UserManagedOpenAIProfileResponse.fromMap((map['userManagedOpenAIProfile'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

