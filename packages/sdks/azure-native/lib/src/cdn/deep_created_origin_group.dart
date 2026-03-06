// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_probe_parameters.dart';
import 'resource_reference.dart';
import 'response_based_origin_error_detection_parameters.dart';

/// The origin group for CDN content which is added when creating a CDN endpoint. Traffic is sent to the origins within the origin group based on origin health.
class DeepCreatedOriginGroup {
  /// Health probe settings to the origin that is used to determine the health of the origin.
  final pulumi.Input<HealthProbeParameters>? healthProbeSettings;
  /// Origin group name which must be unique within the endpoint.
  final pulumi.Input<String> name;
  /// The source of the content being delivered via CDN within given origin group.
  final pulumi.Input<List<ResourceReference>> origins;
  /// The JSON object that contains the properties to determine origin health using real requests/responses.This property is currently not supported.
  final pulumi.Input<ResponseBasedOriginErrorDetectionParameters>? responseBasedOriginErrorDetectionSettings;
  /// Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  final pulumi.Input<int>? trafficRestorationTimeToHealedOrNewEndpointsInMinutes;

  /// Creates a new [DeepCreatedOriginGroup].
  /// [healthProbeSettings] Health probe settings to the origin that is used to determine the health of the origin.
  /// [name] Origin group name which must be unique within the endpoint.
  /// [origins] The source of the content being delivered via CDN within given origin group.
  /// [responseBasedOriginErrorDetectionSettings] The JSON object that contains the properties to determine origin health using real requests/responses.This property is currently not supported.
  /// [trafficRestorationTimeToHealedOrNewEndpointsInMinutes] Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  const DeepCreatedOriginGroup({
    this.healthProbeSettings,
    required this.name,
    required this.origins,
    this.responseBasedOriginErrorDetectionSettings,
    this.trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthProbeSettings': ?pulumi.Input.mapOptionalInputValue<HealthProbeParameters, Map<String, dynamic>>(healthProbeSettings, (value) => value.toMap()),
      'name': name,
      'origins': pulumi.Input.mapInputValue<List<ResourceReference>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<ResourceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseBasedOriginErrorDetectionSettings': ?pulumi.Input.mapOptionalInputValue<ResponseBasedOriginErrorDetectionParameters, Map<String, dynamic>>(responseBasedOriginErrorDetectionSettings, (value) => value.toMap()),
      'trafficRestorationTimeToHealedOrNewEndpointsInMinutes': ?trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
    };
  }

  factory DeepCreatedOriginGroup.fromMap(Map<String, dynamic> map) {
    return DeepCreatedOriginGroup(
      healthProbeSettings: (() { final guardedValue = map['healthProbeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HealthProbeParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      origins: pulumi.Input.fromValue(pulumi.Input.decodeList<ResourceReference>(map['origins']!, (value) => ResourceReference.fromMap((value as Map).cast<String, dynamic>()))),
      responseBasedOriginErrorDetectionSettings: (() { final guardedValue = map['responseBasedOriginErrorDetectionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResponseBasedOriginErrorDetectionParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trafficRestorationTimeToHealedOrNewEndpointsInMinutes: (() { final guardedValue = map['trafficRestorationTimeToHealedOrNewEndpointsInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

