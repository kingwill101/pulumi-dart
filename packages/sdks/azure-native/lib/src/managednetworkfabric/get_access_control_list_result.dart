// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_control_list_match_configuration_response.dart';
import 'common_dynamic_match_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAccessControlList.
class GetAccessControlListResult {
  /// Access Control List file URL.
  final String? aclsUrl;
  /// Administrative state of the resource.
  final String administrativeState;
  /// Switch configuration description.
  final String? annotation;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Configuration state of the resource.
  final String configurationState;
  /// Input method to configure Access Control List.
  final String configurationType;
  /// Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  final String? defaultAction;
  /// List of dynamic match configurations.
  final List<CommonDynamicMatchConfigurationResponse>? dynamicMatchConfigurations;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The last synced timestamp.
  final String lastSyncedTime;
  /// The geo-location where the resource lives
  final String location;
  /// List of match configurations.
  final List<AccessControlListMatchConfigurationResponse>? matchConfigurations;
  /// The name of the resource
  final String name;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAccessControlListResult].
  /// [aclsUrl] Access Control List file URL.
  /// [administrativeState] Administrative state of the resource.
  /// [annotation] Switch configuration description.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationState] Configuration state of the resource.
  /// [configurationType] Input method to configure Access Control List.
  /// [defaultAction] Default action that needs to be applied when no condition is matched. Example: Permit | Deny.
  /// [dynamicMatchConfigurations] List of dynamic match configurations.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [lastSyncedTime] The last synced timestamp.
  /// [location] The geo-location where the resource lives
  /// [matchConfigurations] List of match configurations.
  /// [name] The name of the resource
  /// [provisioningState] Provisioning state of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetAccessControlListResult({
    this.aclsUrl,
    required this.administrativeState,
    this.annotation,
    required this.azureApiVersion,
    required this.configurationState,
    required this.configurationType,
    this.defaultAction,
    this.dynamicMatchConfigurations,
    required this.id,
    required this.lastSyncedTime,
    required this.location,
    this.matchConfigurations,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclsUrl': ?aclsUrl,
      'administrativeState': administrativeState,
      'annotation': ?annotation,
      'azureApiVersion': azureApiVersion,
      'configurationState': configurationState,
      'configurationType': configurationType,
      'defaultAction': ?defaultAction,
      'dynamicMatchConfigurations': ?(() { final guardedValue = dynamicMatchConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<CommonDynamicMatchConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'lastSyncedTime': lastSyncedTime,
      'location': location,
      'matchConfigurations': ?(() { final guardedValue = matchConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<AccessControlListMatchConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAccessControlListResult.fromMap(Map<String, dynamic> map) {
    return GetAccessControlListResult(
      aclsUrl: (() { final guardedValue = map['aclsUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      administrativeState: map['administrativeState'] as String,
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      configurationState: map['configurationState'] as String,
      configurationType: map['configurationType'] as String,
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dynamicMatchConfigurations: (() { final guardedValue = map['dynamicMatchConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<CommonDynamicMatchConfigurationResponse>(guardedValue, (value) => CommonDynamicMatchConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      lastSyncedTime: map['lastSyncedTime'] as String,
      location: map['location'] as String,
      matchConfigurations: (() { final guardedValue = map['matchConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccessControlListMatchConfigurationResponse>(guardedValue, (value) => AccessControlListMatchConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

