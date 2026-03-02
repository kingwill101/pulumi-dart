// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_probe_parameters_response.dart';
import 'resource_reference_response.dart';
import 'response_based_origin_error_detection_parameters_response.dart';

/// The origin group for CDN content which is added when creating a CDN endpoint. Traffic is sent to the origins within the origin group based on origin health.
class DeepCreatedOriginGroupResponse {
  /// Health probe settings to the origin that is used to determine the health of the origin.
  final pulumi.Input<HealthProbeParametersResponse>? healthProbeSettings;
  /// Origin group name which must be unique within the endpoint.
  final pulumi.Input<String> name;
  /// The source of the content being delivered via CDN within given origin group.
  final pulumi.Input<List<ResourceReferenceResponse>> origins;
  /// The JSON object that contains the properties to determine origin health using real requests/responses.This property is currently not supported.
  final pulumi.Input<ResponseBasedOriginErrorDetectionParametersResponse>? responseBasedOriginErrorDetectionSettings;
  /// Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  final pulumi.Input<int>? trafficRestorationTimeToHealedOrNewEndpointsInMinutes;

  /// Creates a new [DeepCreatedOriginGroupResponse].
  /// [healthProbeSettings] Health probe settings to the origin that is used to determine the health of the origin.
  /// [name] Origin group name which must be unique within the endpoint.
  /// [origins] The source of the content being delivered via CDN within given origin group.
  /// [responseBasedOriginErrorDetectionSettings] The JSON object that contains the properties to determine origin health using real requests/responses.This property is currently not supported.
  /// [trafficRestorationTimeToHealedOrNewEndpointsInMinutes] Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  DeepCreatedOriginGroupResponse({
    this.healthProbeSettings,
    required this.name,
    required this.origins,
    this.responseBasedOriginErrorDetectionSettings,
    this.trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthProbeSettings': ?pulumi.Input.mapOptionalInputValue<HealthProbeParametersResponse, Map<String, dynamic>>(healthProbeSettings, (value) => value.toMap()),
      'name': name,
      'origins': pulumi.Input.mapInputValue<List<ResourceReferenceResponse>, List<Map<String, dynamic>>>(origins, (value) => pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responseBasedOriginErrorDetectionSettings': ?pulumi.Input.mapOptionalInputValue<ResponseBasedOriginErrorDetectionParametersResponse, Map<String, dynamic>>(responseBasedOriginErrorDetectionSettings, (value) => value.toMap()),
      'trafficRestorationTimeToHealedOrNewEndpointsInMinutes': ?trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
    };
  }

  factory DeepCreatedOriginGroupResponse.fromMap(Map<String, dynamic> map) {
    return DeepCreatedOriginGroupResponse(
      healthProbeSettings: map['healthProbeSettings'] == null ? null : (HealthProbeParametersResponse.fromMap((map['healthProbeSettings'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      origins: (pulumi.Input.decodeList<ResourceReferenceResponse>(map['origins'], (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      responseBasedOriginErrorDetectionSettings: map['responseBasedOriginErrorDetectionSettings'] == null ? null : (ResponseBasedOriginErrorDetectionParametersResponse.fromMap((map['responseBasedOriginErrorDetectionSettings'] as Map).cast<String, dynamic>())).input(),
      trafficRestorationTimeToHealedOrNewEndpointsInMinutes: map['trafficRestorationTimeToHealedOrNewEndpointsInMinutes'] == null ? null : (map['trafficRestorationTimeToHealedOrNewEndpointsInMinutes'] as int).input(),
    );
  }
}

