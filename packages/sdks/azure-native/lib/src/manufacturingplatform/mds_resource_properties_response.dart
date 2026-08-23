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
  const MdsResourcePropertiesResponse({
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
      aadApplicationId: pulumi.Input.fromValue(map['aadApplicationId'] as String),
      adxProfile: pulumi.Input.fromValue(AdxProfileResponse.fromMap((map['adxProfile']! as Map).cast<String, dynamic>())),
      aksAdminGroupId: (() { final guardedValue = map['aksAdminGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aksProfile: pulumi.Input.fromValue(AksProfileResponse.fromMap((map['aksProfile']! as Map).cast<String, dynamic>())),
      cmkProfile: (() { final guardedValue = map['cmkProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CmkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseProfile: pulumi.Input.fromValue(DatabaseProfileResponse.fromMap((map['databaseProfile']! as Map).cast<String, dynamic>())),
      denyAssignmentExclusions: (() { final guardedValue = map['denyAssignmentExclusions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DenyAssignmentExclusionResponse>(guardedValue, (value) => DenyAssignmentExclusionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      enableCopilot: (() { final guardedValue = map['enableCopilot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDiagnosticSettings: (() { final guardedValue = map['enableDiagnosticSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      eventHubProfile: pulumi.Input.fromValue(EventHubProfileResponse.fromMap((map['eventHubProfile']! as Map).cast<String, dynamic>())),
      fabricProfile: (() { final guardedValue = map['fabricProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FabricProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      functionAppProfile: pulumi.Input.fromValue(FunctionAppProfileResponse.fromMap((map['functionAppProfile']! as Map).cast<String, dynamic>())),
      managedOnBehalfOfConfiguration: pulumi.Input.fromValue(ManagedOnBehalfOfConfigurationResponse.fromMap((map['managedOnBehalfOfConfiguration']! as Map).cast<String, dynamic>())),
      managedResourceGroupConfiguration: pulumi.Input.fromValue(ManagedResourceGroupConfigurationResponse.fromMap((map['managedResourceGroupConfiguration']! as Map).cast<String, dynamic>())),
      monitoringProfile: pulumi.Input.fromValue(MonitoringProfileResponse.fromMap((map['monitoringProfile']! as Map).cast<String, dynamic>())),
      openAIProfile: (() { final guardedValue = map['openAIProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenAIProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      redisProfile: pulumi.Input.fromValue(RedisProfileResponse.fromMap((map['redisProfile']! as Map).cast<String, dynamic>())),
      redundancyState: (() { final guardedValue = map['redundancyState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceState: (() { final guardedValue = map['resourceState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceUrl: pulumi.Input.fromValue(map['serviceUrl'] as String),
      storageProfile: pulumi.Input.fromValue(StorageProfileResponse.fromMap((map['storageProfile']! as Map).cast<String, dynamic>())),
      userManagedOpenAIProfile: (() { final guardedValue = map['userManagedOpenAIProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserManagedOpenAIProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
