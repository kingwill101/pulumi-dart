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
  final String azureApiVersion;
  /// Backend pools available to routing rules.
  final List<BackendPoolResponse>? backendPools;
  /// Settings for all backendPools
  final BackendPoolsSettingsResponse? backendPoolsSettings;
  /// The host that each frontendEndpoint must CNAME to.
  final String cname;
  /// Operational status of the Front Door load balancer. Permitted values are 'Enabled' or 'Disabled'
  final String? enabledState;
  /// Key-Value pair representing additional properties for frontdoor.
  final Map<String, String> extendedProperties;
  /// A friendly name for the frontDoor
  final String? friendlyName;
  /// The Id of the frontdoor.
  final String frontdoorId;
  /// Frontend endpoints available to routing rules.
  final List<FrontendEndpointResponse>? frontendEndpoints;
  /// Health probe settings associated with this Front Door instance.
  final List<HealthProbeSettingsModelResponse>? healthProbeSettings;
  /// Resource ID.
  final String id;
  /// Load balancing settings associated with this Front Door instance.
  final List<LoadBalancingSettingsModelResponse>? loadBalancingSettings;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// Provisioning state of the Front Door.
  final String provisioningState;
  /// Resource status of the Front Door.
  final String resourceState;
  /// Routing rules associated with this Front Door.
  final List<RoutingRuleResponse>? routingRules;
  /// Rules Engine Configurations available to routing rules.
  final List<RulesEngineResponse> rulesEngines;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

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
  GetFrontDoorResult({
    required this.azureApiVersion,
    this.backendPools,
    this.backendPoolsSettings,
    required this.cname,
    this.enabledState,
    required this.extendedProperties,
    this.friendlyName,
    required this.frontdoorId,
    this.frontendEndpoints,
    this.healthProbeSettings,
    required this.id,
    this.loadBalancingSettings,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.resourceState,
    this.routingRules,
    required this.rulesEngines,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'backendPools': ?backendPools == null ? null : pulumi.Input.encodeList<BackendPoolResponse, Map<String, dynamic>>(backendPools!, (value) => value.toMap()),
      'backendPoolsSettings': ?backendPoolsSettings == null ? null : backendPoolsSettings!.toMap(),
      'cname': cname,
      'enabledState': ?enabledState,
      'extendedProperties': extendedProperties,
      'friendlyName': ?friendlyName,
      'frontdoorId': frontdoorId,
      'frontendEndpoints': ?frontendEndpoints == null ? null : pulumi.Input.encodeList<FrontendEndpointResponse, Map<String, dynamic>>(frontendEndpoints!, (value) => value.toMap()),
      'healthProbeSettings': ?healthProbeSettings == null ? null : pulumi.Input.encodeList<HealthProbeSettingsModelResponse, Map<String, dynamic>>(healthProbeSettings!, (value) => value.toMap()),
      'id': id,
      'loadBalancingSettings': ?loadBalancingSettings == null ? null : pulumi.Input.encodeList<LoadBalancingSettingsModelResponse, Map<String, dynamic>>(loadBalancingSettings!, (value) => value.toMap()),
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'resourceState': resourceState,
      'routingRules': ?routingRules == null ? null : pulumi.Input.encodeList<RoutingRuleResponse, Map<String, dynamic>>(routingRules!, (value) => value.toMap()),
      'rulesEngines': pulumi.Input.encodeList<RulesEngineResponse, Map<String, dynamic>>(rulesEngines, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetFrontDoorResult.fromMap(Map<String, dynamic> map) {
    return GetFrontDoorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      backendPools: map['backendPools'] == null ? null : pulumi.Input.decodeList<BackendPoolResponse>(map['backendPools']!, (value) => BackendPoolResponse.fromMap((value as Map).cast<String, dynamic>())),
      backendPoolsSettings: map['backendPoolsSettings'] == null ? null : BackendPoolsSettingsResponse.fromMap((map['backendPoolsSettings']! as Map).cast<String, dynamic>()),
      cname: map['cname'] as String,
      enabledState: map['enabledState'] == null ? null : map['enabledState']! as String,
      extendedProperties: (map['extendedProperties'] as Map).cast<String, String>(),
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName']! as String,
      frontdoorId: map['frontdoorId'] as String,
      frontendEndpoints: map['frontendEndpoints'] == null ? null : pulumi.Input.decodeList<FrontendEndpointResponse>(map['frontendEndpoints']!, (value) => FrontendEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      healthProbeSettings: map['healthProbeSettings'] == null ? null : pulumi.Input.decodeList<HealthProbeSettingsModelResponse>(map['healthProbeSettings']!, (value) => HealthProbeSettingsModelResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      loadBalancingSettings: map['loadBalancingSettings'] == null ? null : pulumi.Input.decodeList<LoadBalancingSettingsModelResponse>(map['loadBalancingSettings']!, (value) => LoadBalancingSettingsModelResponse.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      resourceState: map['resourceState'] as String,
      routingRules: map['routingRules'] == null ? null : pulumi.Input.decodeList<RoutingRuleResponse>(map['routingRules']!, (value) => RoutingRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      rulesEngines: pulumi.Input.decodeList<RulesEngineResponse>(map['rulesEngines'], (value) => RulesEngineResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

