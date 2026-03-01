// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_probe_parameters.dart';
import 'resource_reference.dart';
import 'response_based_origin_error_detection_parameters.dart';

/// {@template pulumi_cdn_origin_group_args_doc}
/// The set of arguments for OriginGroup.
/// {@endtemplate}
/// {@macro pulumi_cdn_origin_group_args_doc}
class OriginGroupArgs {
  /// Name of the endpoint under the profile which is unique globally.
  final pulumi.Input<String> endpointName;
  /// Health probe settings to the origin that is used to determine the health of the origin.
  final pulumi.Input<HealthProbeParameters>? healthProbeSettings;
  /// Name of the origin group which is unique within the endpoint.
  final pulumi.Input<String>? originGroupName;
  /// The source of the content being delivered via CDN within given origin group.
  final pulumi.Input<List<ResourceReference>>? origins;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The JSON object that contains the properties to determine origin health using real requests/responses. This property is currently not supported.
  final pulumi.Input<ResponseBasedOriginErrorDetectionParameters>? responseBasedOriginErrorDetectionSettings;
  /// Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  final pulumi.Input<int>? trafficRestorationTimeToHealedOrNewEndpointsInMinutes;

  /// Creates a new [OriginGroupArgs].
  /// [endpointName] Name of the endpoint under the profile which is unique globally.
  /// [healthProbeSettings] Health probe settings to the origin that is used to determine the health of the origin.
  /// [originGroupName] Name of the origin group which is unique within the endpoint.
  /// [origins] The source of the content being delivered via CDN within given origin group.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [responseBasedOriginErrorDetectionSettings] The JSON object that contains the properties to determine origin health using real requests/responses. This property is currently not supported.
  /// [trafficRestorationTimeToHealedOrNewEndpointsInMinutes] Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  OriginGroupArgs({
    required pulumi.Output<String> endpointName,
    pulumi.Output<HealthProbeParameters>? healthProbeSettings,
    pulumi.Output<String>? originGroupName,
    pulumi.Output<List<ResourceReference>>? origins,
    required pulumi.Output<String> profileName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<ResponseBasedOriginErrorDetectionParameters>? responseBasedOriginErrorDetectionSettings,
    pulumi.Output<int>? trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
  }) :
      endpointName = pulumi.Input.asInput<String>(endpointName),
      healthProbeSettings = pulumi.Input.asOptionalInput<HealthProbeParameters>(healthProbeSettings),
      originGroupName = pulumi.Input.asOptionalInput<String>(originGroupName),
      origins = pulumi.Input.asOptionalInput<List<ResourceReference>>(origins),
      profileName = pulumi.Input.asInput<String>(profileName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      responseBasedOriginErrorDetectionSettings = pulumi.Input.asOptionalInput<ResponseBasedOriginErrorDetectionParameters>(responseBasedOriginErrorDetectionSettings),
      trafficRestorationTimeToHealedOrNewEndpointsInMinutes = pulumi.Input.asOptionalInput<int>(trafficRestorationTimeToHealedOrNewEndpointsInMinutes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'healthProbeSettings': ?pulumi.Input.mapOptionalInputValue<HealthProbeParameters, Map<String, dynamic>>(healthProbeSettings, (value) => value.toMap()),
      'originGroupName': ?originGroupName,
      'origins': ?pulumi.Input.mapOptionalInputValue<List<ResourceReference>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<ResourceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'responseBasedOriginErrorDetectionSettings': ?pulumi.Input.mapOptionalInputValue<ResponseBasedOriginErrorDetectionParameters, Map<String, dynamic>>(responseBasedOriginErrorDetectionSettings, (value) => value.toMap()),
      'trafficRestorationTimeToHealedOrNewEndpointsInMinutes': ?trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
    };
  }

  factory OriginGroupArgs.fromMap(Map<String, dynamic> map) {
    return OriginGroupArgs(
      endpointName: pulumi.Output.create<String>(map['endpointName'] as String),
      healthProbeSettings: map['healthProbeSettings'] == null ? null : pulumi.Output.create<HealthProbeParameters>(HealthProbeParameters.fromMap((map['healthProbeSettings'] as Map).cast<String, dynamic>())),
      originGroupName: map['originGroupName'] == null ? null : pulumi.Output.create<String>(map['originGroupName'] as String),
      origins: map['origins'] == null ? null : pulumi.Output.create<List<ResourceReference>>(pulumi.Input.decodeList<ResourceReference>(map['origins'], (value) => ResourceReference.fromMap((value as Map).cast<String, dynamic>()))),
      profileName: pulumi.Output.create<String>(map['profileName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      responseBasedOriginErrorDetectionSettings: map['responseBasedOriginErrorDetectionSettings'] == null ? null : pulumi.Output.create<ResponseBasedOriginErrorDetectionParameters>(ResponseBasedOriginErrorDetectionParameters.fromMap((map['responseBasedOriginErrorDetectionSettings'] as Map).cast<String, dynamic>())),
      trafficRestorationTimeToHealedOrNewEndpointsInMinutes: map['trafficRestorationTimeToHealedOrNewEndpointsInMinutes'] == null ? null : pulumi.Output.create<int>(map['trafficRestorationTimeToHealedOrNewEndpointsInMinutes'] as int),
    );
  }
}

