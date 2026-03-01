// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_pool.dart';
import 'backend_pools_settings.dart';
import 'frontend_endpoint.dart';
import 'health_probe_settings_model.dart';
import 'load_balancing_settings_model.dart';
import 'routing_rule.dart';

/// {@template pulumi_frontdoor_front_door_args_doc}
/// The set of arguments for FrontDoor.
/// {@endtemplate}
/// {@macro pulumi_frontdoor_front_door_args_doc}
class FrontDoorArgs {
  /// Backend pools available to routing rules.
  final pulumi.Input<List<BackendPool>>? backendPools;
  /// Settings for all backendPools
  final pulumi.Input<BackendPoolsSettings>? backendPoolsSettings;
  /// Operational status of the Front Door load balancer. Permitted values are 'Enabled' or 'Disabled'
  final pulumi.Input<String>? enabledState;
  /// A friendly name for the frontDoor
  final pulumi.Input<String>? friendlyName;
  /// Name of the Front Door which is globally unique.
  final pulumi.Input<String>? frontDoorName;
  /// Frontend endpoints available to routing rules.
  final pulumi.Input<List<FrontendEndpoint>>? frontendEndpoints;
  /// Health probe settings associated with this Front Door instance.
  final pulumi.Input<List<HealthProbeSettingsModel>>? healthProbeSettings;
  /// Load balancing settings associated with this Front Door instance.
  final pulumi.Input<List<LoadBalancingSettingsModel>>? loadBalancingSettings;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Name of the Resource group within the Azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Routing rules associated with this Front Door.
  final pulumi.Input<List<RoutingRule>>? routingRules;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FrontDoorArgs].
  /// [backendPools] Backend pools available to routing rules.
  /// [backendPoolsSettings] Settings for all backendPools
  /// [enabledState] Operational status of the Front Door load balancer. Permitted values are 'Enabled' or 'Disabled'
  /// [friendlyName] A friendly name for the frontDoor
  /// [frontDoorName] Name of the Front Door which is globally unique.
  /// [frontendEndpoints] Frontend endpoints available to routing rules.
  /// [healthProbeSettings] Health probe settings associated with this Front Door instance.
  /// [loadBalancingSettings] Load balancing settings associated with this Front Door instance.
  /// [location] Resource location.
  /// [resourceGroupName] Name of the Resource group within the Azure subscription.
  /// [routingRules] Routing rules associated with this Front Door.
  /// [tags] Resource tags.
  FrontDoorArgs({
    List<BackendPool>? backendPools,
    BackendPoolsSettings? backendPoolsSettings,
    String? enabledState,
    String? friendlyName,
    String? frontDoorName,
    List<FrontendEndpoint>? frontendEndpoints,
    List<HealthProbeSettingsModel>? healthProbeSettings,
    List<LoadBalancingSettingsModel>? loadBalancingSettings,
    String? location,
    required String resourceGroupName,
    List<RoutingRule>? routingRules,
    Map<String, String>? tags,
  }) :
      backendPools = pulumi.Input.asOptionalInput<List<BackendPool>>(backendPools),
      backendPoolsSettings = pulumi.Input.asOptionalInput<BackendPoolsSettings>(backendPoolsSettings),
      enabledState = pulumi.Input.asOptionalInput<String>(enabledState),
      friendlyName = pulumi.Input.asOptionalInput<String>(friendlyName),
      frontDoorName = pulumi.Input.asOptionalInput<String>(frontDoorName),
      frontendEndpoints = pulumi.Input.asOptionalInput<List<FrontendEndpoint>>(frontendEndpoints),
      healthProbeSettings = pulumi.Input.asOptionalInput<List<HealthProbeSettingsModel>>(healthProbeSettings),
      loadBalancingSettings = pulumi.Input.asOptionalInput<List<LoadBalancingSettingsModel>>(loadBalancingSettings),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routingRules = pulumi.Input.asOptionalInput<List<RoutingRule>>(routingRules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPools': ?pulumi.Input.mapOptionalInputValue<List<BackendPool>, List<Map<String, dynamic>>>(backendPools, (value) => pulumi.Input.encodeList<BackendPool, Map<String, dynamic>>(value, (value) => value.toMap())),
      'backendPoolsSettings': ?pulumi.Input.mapOptionalInputValue<BackendPoolsSettings, Map<String, dynamic>>(backendPoolsSettings, (value) => value.toMap()),
      'enabledState': ?enabledState,
      'friendlyName': ?friendlyName,
      'frontDoorName': ?frontDoorName,
      'frontendEndpoints': ?pulumi.Input.mapOptionalInputValue<List<FrontendEndpoint>, List<Map<String, dynamic>>>(frontendEndpoints, (value) => pulumi.Input.encodeList<FrontendEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'healthProbeSettings': ?pulumi.Input.mapOptionalInputValue<List<HealthProbeSettingsModel>, List<Map<String, dynamic>>>(healthProbeSettings, (value) => pulumi.Input.encodeList<HealthProbeSettingsModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'loadBalancingSettings': ?pulumi.Input.mapOptionalInputValue<List<LoadBalancingSettingsModel>, List<Map<String, dynamic>>>(loadBalancingSettings, (value) => pulumi.Input.encodeList<LoadBalancingSettingsModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'routingRules': ?pulumi.Input.mapOptionalInputValue<List<RoutingRule>, List<Map<String, dynamic>>>(routingRules, (value) => pulumi.Input.encodeList<RoutingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory FrontDoorArgs.fromMap(Map<String, dynamic> map) {
    return FrontDoorArgs(
      backendPools: map['backendPools'] == null ? null : pulumi.Input.decodeList<BackendPool>(map['backendPools'], (value) => BackendPool.fromMap((value as Map).cast<String, dynamic>())),
      backendPoolsSettings: map['backendPoolsSettings'] == null ? null : BackendPoolsSettings.fromMap((map['backendPoolsSettings'] as Map).cast<String, dynamic>()),
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      frontDoorName: map['frontDoorName'] == null ? null : map['frontDoorName'] as String,
      frontendEndpoints: map['frontendEndpoints'] == null ? null : pulumi.Input.decodeList<FrontendEndpoint>(map['frontendEndpoints'], (value) => FrontendEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      healthProbeSettings: map['healthProbeSettings'] == null ? null : pulumi.Input.decodeList<HealthProbeSettingsModel>(map['healthProbeSettings'], (value) => HealthProbeSettingsModel.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancingSettings: map['loadBalancingSettings'] == null ? null : pulumi.Input.decodeList<LoadBalancingSettingsModel>(map['loadBalancingSettings'], (value) => LoadBalancingSettingsModel.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routingRules: map['routingRules'] == null ? null : pulumi.Input.decodeList<RoutingRule>(map['routingRules'], (value) => RoutingRule.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

