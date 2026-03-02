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
  final pulumi.Input<String> aadApplicationId;
  /// Profile of Adx Created.
  final pulumi.Input<AdxProfileResponse> adxProfile;
  /// AKS Admin Group Id.
  final pulumi.Input<String>? aksAdminGroupId;
  /// Profile of AKS Created.
  final pulumi.Input<AksProfileResponse> aksProfile;
  /// Profile of CMK Settings.
  final pulumi.Input<CmkProfileResponse>? cmkProfile;
  /// Profile of Database Created.
  final pulumi.Input<DatabaseProfileResponse> databaseProfile;
  /// Deny Assignments exclusion list.
  final pulumi.Input<List<DenyAssignmentExclusionResponse>>? denyAssignmentExclusions;
  /// Enable Copilot.
  final pulumi.Input<bool>? enableCopilot;
  /// Enable Diagnostic Settings.
  final pulumi.Input<bool>? enableDiagnosticSettings;
  /// Profile of EventHub Resource.
  final pulumi.Input<EventHubProfileResponse> eventHubProfile;
  /// Profile of Fabric resources.
  final pulumi.Input<FabricProfileResponse>? fabricProfile;
  /// Profile of Function App Resource.
  final pulumi.Input<FunctionAppProfileResponse> functionAppProfile;
  /// Managed On Behalf Of Configuration.
  final pulumi.Input<ManagedOnBehalfOfConfigurationResponse> managedOnBehalfOfConfiguration;
  /// Configuration of the managed resource group associated with the resource.
  final pulumi.Input<ManagedResourceGroupConfigurationResponse> managedResourceGroupConfiguration;
  /// Profile of Monitoring Resource Created.
  final pulumi.Input<MonitoringProfileResponse> monitoringProfile;
  /// Profile of OpenAI Resource.
  final pulumi.Input<OpenAIProfileResponse>? openAIProfile;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Profile of Azure Redis Created.
  final pulumi.Input<RedisProfileResponse> redisProfile;
  /// Zone redundancy state for resources
  final pulumi.Input<String>? redundancyState;
  /// State of the resource
  final pulumi.Input<String>? resourceState;
  /// Service Url
  final pulumi.Input<String> serviceUrl;
  /// Profile of Storage Created.
  final pulumi.Input<StorageProfileResponse> storageProfile;
  /// Profile of User Managed OpenAI Resource.
  final pulumi.Input<UserManagedOpenAIProfileResponse>? userManagedOpenAIProfile;
  /// Mds Resource Version.
  final pulumi.Input<String>? version;

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
      'adxProfile': pulumi.Input.mapInputValue<AdxProfileResponse, Map<String, dynamic>>(adxProfile, (value) => value.toMap()),
      'aksAdminGroupId': ?aksAdminGroupId,
      'aksProfile': pulumi.Input.mapInputValue<AksProfileResponse, Map<String, dynamic>>(aksProfile, (value) => value.toMap()),
      'cmkProfile': ?pulumi.Input.mapOptionalInputValue<CmkProfileResponse, Map<String, dynamic>>(cmkProfile, (value) => value.toMap()),
      'databaseProfile': pulumi.Input.mapInputValue<DatabaseProfileResponse, Map<String, dynamic>>(databaseProfile, (value) => value.toMap()),
      'denyAssignmentExclusions': ?pulumi.Input.mapOptionalInputValue<List<DenyAssignmentExclusionResponse>, List<Map<String, dynamic>>>(denyAssignmentExclusions, (value) => pulumi.Input.encodeList<DenyAssignmentExclusionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableCopilot': ?enableCopilot,
      'enableDiagnosticSettings': ?enableDiagnosticSettings,
      'eventHubProfile': pulumi.Input.mapInputValue<EventHubProfileResponse, Map<String, dynamic>>(eventHubProfile, (value) => value.toMap()),
      'fabricProfile': ?pulumi.Input.mapOptionalInputValue<FabricProfileResponse, Map<String, dynamic>>(fabricProfile, (value) => value.toMap()),
      'functionAppProfile': pulumi.Input.mapInputValue<FunctionAppProfileResponse, Map<String, dynamic>>(functionAppProfile, (value) => value.toMap()),
      'managedOnBehalfOfConfiguration': pulumi.Input.mapInputValue<ManagedOnBehalfOfConfigurationResponse, Map<String, dynamic>>(managedOnBehalfOfConfiguration, (value) => value.toMap()),
      'managedResourceGroupConfiguration': pulumi.Input.mapInputValue<ManagedResourceGroupConfigurationResponse, Map<String, dynamic>>(managedResourceGroupConfiguration, (value) => value.toMap()),
      'monitoringProfile': pulumi.Input.mapInputValue<MonitoringProfileResponse, Map<String, dynamic>>(monitoringProfile, (value) => value.toMap()),
      'openAIProfile': ?pulumi.Input.mapOptionalInputValue<OpenAIProfileResponse, Map<String, dynamic>>(openAIProfile, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'redisProfile': pulumi.Input.mapInputValue<RedisProfileResponse, Map<String, dynamic>>(redisProfile, (value) => value.toMap()),
      'redundancyState': ?redundancyState,
      'resourceState': ?resourceState,
      'serviceUrl': serviceUrl,
      'storageProfile': pulumi.Input.mapInputValue<StorageProfileResponse, Map<String, dynamic>>(storageProfile, (value) => value.toMap()),
      'userManagedOpenAIProfile': ?pulumi.Input.mapOptionalInputValue<UserManagedOpenAIProfileResponse, Map<String, dynamic>>(userManagedOpenAIProfile, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory MdsResourcePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MdsResourcePropertiesResponse(
      aadApplicationId: (map['aadApplicationId'] as String).input(),
      adxProfile: (AdxProfileResponse.fromMap((map['adxProfile'] as Map).cast<String, dynamic>())).input(),
      aksAdminGroupId: map['aksAdminGroupId'] == null ? null : (map['aksAdminGroupId'] as String).input(),
      aksProfile: (AksProfileResponse.fromMap((map['aksProfile'] as Map).cast<String, dynamic>())).input(),
      cmkProfile: map['cmkProfile'] == null ? null : (CmkProfileResponse.fromMap((map['cmkProfile'] as Map).cast<String, dynamic>())).input(),
      databaseProfile: (DatabaseProfileResponse.fromMap((map['databaseProfile'] as Map).cast<String, dynamic>())).input(),
      denyAssignmentExclusions: map['denyAssignmentExclusions'] == null ? null : (pulumi.Input.decodeList<DenyAssignmentExclusionResponse>(map['denyAssignmentExclusions'], (value) => DenyAssignmentExclusionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableCopilot: map['enableCopilot'] == null ? null : (map['enableCopilot'] as bool).input(),
      enableDiagnosticSettings: map['enableDiagnosticSettings'] == null ? null : (map['enableDiagnosticSettings'] as bool).input(),
      eventHubProfile: (EventHubProfileResponse.fromMap((map['eventHubProfile'] as Map).cast<String, dynamic>())).input(),
      fabricProfile: map['fabricProfile'] == null ? null : (FabricProfileResponse.fromMap((map['fabricProfile'] as Map).cast<String, dynamic>())).input(),
      functionAppProfile: (FunctionAppProfileResponse.fromMap((map['functionAppProfile'] as Map).cast<String, dynamic>())).input(),
      managedOnBehalfOfConfiguration: (ManagedOnBehalfOfConfigurationResponse.fromMap((map['managedOnBehalfOfConfiguration'] as Map).cast<String, dynamic>())).input(),
      managedResourceGroupConfiguration: (ManagedResourceGroupConfigurationResponse.fromMap((map['managedResourceGroupConfiguration'] as Map).cast<String, dynamic>())).input(),
      monitoringProfile: (MonitoringProfileResponse.fromMap((map['monitoringProfile'] as Map).cast<String, dynamic>())).input(),
      openAIProfile: map['openAIProfile'] == null ? null : (OpenAIProfileResponse.fromMap((map['openAIProfile'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      redisProfile: (RedisProfileResponse.fromMap((map['redisProfile'] as Map).cast<String, dynamic>())).input(),
      redundancyState: map['redundancyState'] == null ? null : (map['redundancyState'] as String).input(),
      resourceState: map['resourceState'] == null ? null : (map['resourceState'] as String).input(),
      serviceUrl: (map['serviceUrl'] as String).input(),
      storageProfile: (StorageProfileResponse.fromMap((map['storageProfile'] as Map).cast<String, dynamic>())).input(),
      userManagedOpenAIProfile: map['userManagedOpenAIProfile'] == null ? null : (UserManagedOpenAIProfileResponse.fromMap((map['userManagedOpenAIProfile'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

