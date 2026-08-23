// ignore_for_file: unused_element, unnecessary_cast

import 'health_probe_parameters_response.dart';
import 'load_balancing_settings_parameters_response.dart';
import 'origin_authentication_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAFDOriginGroup.
class GetAFDOriginGroupResult {
  /// Authentication settings for origin in origin group.
  final OriginAuthenticationPropertiesResponse? authentication;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String deploymentStatus;
  /// Health probe settings to the origin that is used to determine the health of the origin.
  final HealthProbeParametersResponse? healthProbeSettings;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Load balancing settings for a backend pool
  final LoadBalancingSettingsParametersResponse? loadBalancingSettings;
  /// The name of the resource
  final String name;
  /// The name of the profile which holds the origin group.
  final String profileName;
  /// Provisioning status
  final String provisioningState;
  /// Whether to allow session affinity on this host. Valid options are 'Enabled' or 'Disabled'
  final String? sessionAffinityState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  final int? trafficRestorationTimeToHealedOrNewEndpointsInMinutes;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetAFDOriginGroupResult].
  /// [authentication] Authentication settings for origin in origin group.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deploymentStatus] Required.
  /// [healthProbeSettings] Health probe settings to the origin that is used to determine the health of the origin.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [loadBalancingSettings] Load balancing settings for a backend pool
  /// [name] The name of the resource
  /// [profileName] The name of the profile which holds the origin group.
  /// [provisioningState] Provisioning status
  /// [sessionAffinityState] Whether to allow session affinity on this host. Valid options are 'Enabled' or 'Disabled'
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [trafficRestorationTimeToHealedOrNewEndpointsInMinutes] Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAFDOriginGroupResult({
    this.authentication,
    required this.azureApiVersion,
    required this.deploymentStatus,
    this.healthProbeSettings,
    required this.id,
    this.loadBalancingSettings,
    required this.name,
    required this.profileName,
    required this.provisioningState,
    this.sessionAffinityState,
    required this.systemData,
    this.trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication?.toMap(),
      'azureApiVersion': azureApiVersion,
      'deploymentStatus': deploymentStatus,
      'healthProbeSettings': ?healthProbeSettings?.toMap(),
      'id': id,
      'loadBalancingSettings': ?loadBalancingSettings?.toMap(),
      'name': name,
      'profileName': profileName,
      'provisioningState': provisioningState,
      'sessionAffinityState': ?sessionAffinityState,
      'systemData': systemData.toMap(),
      'trafficRestorationTimeToHealedOrNewEndpointsInMinutes': ?trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
      'type': type,
    };
  }

  factory GetAFDOriginGroupResult.fromMap(Map<String, dynamic> map) {
    return GetAFDOriginGroupResult(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return OriginAuthenticationPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      deploymentStatus: map['deploymentStatus'] as String,
      healthProbeSettings: (() { final guardedValue = map['healthProbeSettings']; if (guardedValue == null) return null; return HealthProbeParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      loadBalancingSettings: (() { final guardedValue = map['loadBalancingSettings']; if (guardedValue == null) return null; return LoadBalancingSettingsParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      profileName: map['profileName'] as String,
      provisioningState: map['provisioningState'] as String,
      sessionAffinityState: (() { final guardedValue = map['sessionAffinityState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      trafficRestorationTimeToHealedOrNewEndpointsInMinutes: (() { final guardedValue = map['trafficRestorationTimeToHealedOrNewEndpointsInMinutes']; if (guardedValue == null) return null; return guardedValue as int; })(),
      type: map['type'] as String,
    );
  }
}
