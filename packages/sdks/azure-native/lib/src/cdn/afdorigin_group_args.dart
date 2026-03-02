// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_probe_parameters.dart';
import 'load_balancing_settings_parameters.dart';
import 'origin_authentication_properties.dart';

/// {@template pulumi_cdn_afdorigin_group_args_doc}
/// The set of arguments for AFDOriginGroup.
/// {@endtemplate}
/// {@macro pulumi_cdn_afdorigin_group_args_doc}
class AFDOriginGroupArgs {
  /// Authentication settings for origin in origin group.
  final pulumi.Input<OriginAuthenticationProperties>? authentication;
  /// Health probe settings to the origin that is used to determine the health of the origin.
  final pulumi.Input<HealthProbeParameters>? healthProbeSettings;
  /// Load balancing settings for a backend pool
  final pulumi.Input<LoadBalancingSettingsParameters>? loadBalancingSettings;
  /// Name of the origin group which is unique within the endpoint.
  final pulumi.Input<String>? originGroupName;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Whether to allow session affinity on this host. Valid options are 'Enabled' or 'Disabled'
  final pulumi.Input<String>? sessionAffinityState;
  /// Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  final pulumi.Input<int>? trafficRestorationTimeToHealedOrNewEndpointsInMinutes;

  /// Creates a new [AFDOriginGroupArgs].
  /// [authentication] Authentication settings for origin in origin group.
  /// [healthProbeSettings] Health probe settings to the origin that is used to determine the health of the origin.
  /// [loadBalancingSettings] Load balancing settings for a backend pool
  /// [originGroupName] Name of the origin group which is unique within the endpoint.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sessionAffinityState] Whether to allow session affinity on this host. Valid options are 'Enabled' or 'Disabled'
  /// [trafficRestorationTimeToHealedOrNewEndpointsInMinutes] Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  AFDOriginGroupArgs({
    this.authentication,
    this.healthProbeSettings,
    this.loadBalancingSettings,
    this.originGroupName,
    required this.profileName,
    required this.resourceGroupName,
    this.sessionAffinityState,
    this.trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<OriginAuthenticationProperties, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'healthProbeSettings': ?pulumi.Input.mapOptionalInputValue<HealthProbeParameters, Map<String, dynamic>>(healthProbeSettings, (value) => value.toMap()),
      'loadBalancingSettings': ?pulumi.Input.mapOptionalInputValue<LoadBalancingSettingsParameters, Map<String, dynamic>>(loadBalancingSettings, (value) => value.toMap()),
      'originGroupName': ?originGroupName,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'sessionAffinityState': ?sessionAffinityState,
      'trafficRestorationTimeToHealedOrNewEndpointsInMinutes': ?trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
    };
  }

  factory AFDOriginGroupArgs.fromMap(Map<String, dynamic> map) {
    return AFDOriginGroupArgs(
      authentication: map['authentication'] == null ? null : (OriginAuthenticationProperties.fromMap((map['authentication'] as Map).cast<String, dynamic>())).input(),
      healthProbeSettings: map['healthProbeSettings'] == null ? null : (HealthProbeParameters.fromMap((map['healthProbeSettings'] as Map).cast<String, dynamic>())).input(),
      loadBalancingSettings: map['loadBalancingSettings'] == null ? null : (LoadBalancingSettingsParameters.fromMap((map['loadBalancingSettings'] as Map).cast<String, dynamic>())).input(),
      originGroupName: map['originGroupName'] == null ? null : (map['originGroupName'] as String).input(),
      profileName: (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sessionAffinityState: map['sessionAffinityState'] == null ? null : (map['sessionAffinityState'] as String).input(),
      trafficRestorationTimeToHealedOrNewEndpointsInMinutes: map['trafficRestorationTimeToHealedOrNewEndpointsInMinutes'] == null ? null : (map['trafficRestorationTimeToHealedOrNewEndpointsInMinutes'] as int).input(),
    );
  }
}

