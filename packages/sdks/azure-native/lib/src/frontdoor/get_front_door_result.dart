// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_pool_response.dart';
import 'backend_pools_settings_response.dart';
import 'frontend_endpoint_response.dart';
import 'health_probe_settings_model_response.dart';
import 'load_balancing_settings_model_response.dart';
import 'routing_rule_response.dart';
import 'rules_engine_response.dart';

/// Result data returned by getFrontDoor.
class GetFrontDoorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Backend pools available to routing rules.
  final List<BackendPoolResponse>? backendPools;
  /// Settings for all backendPools
  final BackendPoolsSettingsResponse? backendPoolsSettings;
  /// The host that each frontendEndpoint must CNAME to.
  final String? cname;
  /// Operational status of the Front Door load balancer. Permitted values are 'Enabled' or 'Disabled'
  final String? enabledState;
  /// Key-Value pair representing additional properties for frontdoor.
  final Map<String, String>? extendedProperties;
  /// A friendly name for the frontDoor
  final String? friendlyName;
  /// The Id of the frontdoor.
  final String? frontdoorId;
  /// Frontend endpoints available to routing rules.
  final List<FrontendEndpointResponse>? frontendEndpoints;
  /// Health probe settings associated with this Front Door instance.
  final List<HealthProbeSettingsModelResponse>? healthProbeSettings;
  /// Resource ID.
  final String? id;
  /// Load balancing settings associated with this Front Door instance.
  final List<LoadBalancingSettingsModelResponse>? loadBalancingSettings;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// Provisioning state of the Front Door.
  final String? provisioningState;
  /// Resource status of the Front Door.
  final String? resourceState;
  /// Routing rules associated with this Front Door.
  final List<RoutingRuleResponse>? routingRules;
  /// Rules Engine Configurations available to routing rules.
  final List<RulesEngineResponse>? rulesEngines;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetFrontDoorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backendPools] Backend pools available to routing rules.
  /// [backendPoolsSettings] Settings for all backendPools
  /// [cname] The host that each frontendEndpoint must CNAME to.
  /// [enabledState] Operational status of the Front Door load balancer. Permitted values are 'Enabled' or 'Disabled'
  /// [extendedProperties] Key-Value pair representing additional properties for frontdoor.
  /// [friendlyName] A friendly name for the frontDoor
  /// [frontdoorId] The Id of the frontdoor.
  /// [frontendEndpoints] Frontend endpoints available to routing rules.
  /// [healthProbeSettings] Health probe settings associated with this Front Door instance.
  /// [id] Resource ID.
  /// [loadBalancingSettings] Load balancing settings associated with this Front Door instance.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] Provisioning state of the Front Door.
  /// [resourceState] Resource status of the Front Door.
  /// [routingRules] Routing rules associated with this Front Door.
  /// [rulesEngines] Rules Engine Configurations available to routing rules.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetFrontDoorResult({
    this.azureApiVersion,
    this.backendPools,
    this.backendPoolsSettings,
    this.cname,
    this.enabledState,
    this.extendedProperties,
    this.friendlyName,
    this.frontdoorId,
    this.frontendEndpoints,
    this.healthProbeSettings,
    this.id,
    this.loadBalancingSettings,
    this.location,
    this.name,
    this.provisioningState,
    this.resourceState,
    this.routingRules,
    this.rulesEngines,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'backendPools': ?(() { final guardedValue = backendPools; if (guardedValue == null) return null; return pulumi.Input.encodeList<BackendPoolResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'backendPoolsSettings': ?backendPoolsSettings?.toMap(),
      'cname': ?cname,
      'enabledState': ?enabledState,
      'extendedProperties': ?extendedProperties,
      'friendlyName': ?friendlyName,
      'frontdoorId': ?frontdoorId,
      'frontendEndpoints': ?(() { final guardedValue = frontendEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<FrontendEndpointResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'healthProbeSettings': ?(() { final guardedValue = healthProbeSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<HealthProbeSettingsModelResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'loadBalancingSettings': ?(() { final guardedValue = loadBalancingSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<LoadBalancingSettingsModelResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'resourceState': ?resourceState,
      'routingRules': ?(() { final guardedValue = routingRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<RoutingRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'rulesEngines': ?(() { final guardedValue = rulesEngines; if (guardedValue == null) return null; return pulumi.Input.encodeList<RulesEngineResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetFrontDoorResult.fromMap(Map<String, dynamic> map) {
    return GetFrontDoorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backendPools: (() { final guardedValue = map['backendPools']; if (guardedValue == null) return null; return pulumi.Input.decodeList<BackendPoolResponse>(guardedValue, (value) => BackendPoolResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      backendPoolsSettings: (() { final guardedValue = map['backendPoolsSettings']; if (guardedValue == null) return null; return BackendPoolsSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cname: (() { final guardedValue = map['cname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabledState: (() { final guardedValue = map['enabledState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedProperties: (() { final guardedValue = map['extendedProperties']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frontdoorId: (() { final guardedValue = map['frontdoorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frontendEndpoints: (() { final guardedValue = map['frontendEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrontendEndpointResponse>(guardedValue, (value) => FrontendEndpointResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      healthProbeSettings: (() { final guardedValue = map['healthProbeSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<HealthProbeSettingsModelResponse>(guardedValue, (value) => HealthProbeSettingsModelResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loadBalancingSettings: (() { final guardedValue = map['loadBalancingSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LoadBalancingSettingsModelResponse>(guardedValue, (value) => LoadBalancingSettingsModelResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceState: (() { final guardedValue = map['resourceState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routingRules: (() { final guardedValue = map['routingRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RoutingRuleResponse>(guardedValue, (value) => RoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      rulesEngines: (() { final guardedValue = map['rulesEngines']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RulesEngineResponse>(guardedValue, (value) => RulesEngineResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
