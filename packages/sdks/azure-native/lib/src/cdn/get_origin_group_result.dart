// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_probe_parameters_response.dart';
import 'resource_reference_response.dart';
import 'response_based_origin_error_detection_parameters_response.dart';
import 'system_data_response.dart';

/// Result data returned by getOriginGroup.
class GetOriginGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Health probe settings to the origin that is used to determine the health of the origin.
  final HealthProbeParametersResponse? healthProbeSettings;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The source of the content being delivered via CDN within given origin group.
  final List<ResourceReferenceResponse>? origins;
  /// Provisioning status of the origin group.
  final String provisioningState;
  /// Resource status of the origin group.
  final String resourceState;
  /// The JSON object that contains the properties to determine origin health using real requests/responses. This property is currently not supported.
  final ResponseBasedOriginErrorDetectionParametersResponse? responseBasedOriginErrorDetectionSettings;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  final int? trafficRestorationTimeToHealedOrNewEndpointsInMinutes;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetOriginGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [healthProbeSettings] Health probe settings to the origin that is used to determine the health of the origin.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [origins] The source of the content being delivered via CDN within given origin group.
  /// [provisioningState] Provisioning status of the origin group.
  /// [resourceState] Resource status of the origin group.
  /// [responseBasedOriginErrorDetectionSettings] The JSON object that contains the properties to determine origin health using real requests/responses. This property is currently not supported.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [trafficRestorationTimeToHealedOrNewEndpointsInMinutes] Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetOriginGroupResult({
    required this.azureApiVersion,
    this.healthProbeSettings,
    required this.id,
    required this.name,
    this.origins,
    required this.provisioningState,
    required this.resourceState,
    this.responseBasedOriginErrorDetectionSettings,
    required this.systemData,
    this.trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'healthProbeSettings': ?healthProbeSettings?.toMap(),
      'id': id,
      'name': name,
      'origins': ?(() { final guardedValue = origins; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': provisioningState,
      'resourceState': resourceState,
      'responseBasedOriginErrorDetectionSettings': ?responseBasedOriginErrorDetectionSettings?.toMap(),
      'systemData': systemData.toMap(),
      'trafficRestorationTimeToHealedOrNewEndpointsInMinutes': ?trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
      'type': type,
    };
  }

  factory GetOriginGroupResult.fromMap(Map<String, dynamic> map) {
    return GetOriginGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      healthProbeSettings: (() { final guardedValue = map['healthProbeSettings']; if (guardedValue == null) return null; return HealthProbeParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      origins: (() { final guardedValue = map['origins']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceReferenceResponse>(guardedValue, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: map['provisioningState'] as String,
      resourceState: map['resourceState'] as String,
      responseBasedOriginErrorDetectionSettings: (() { final guardedValue = map['responseBasedOriginErrorDetectionSettings']; if (guardedValue == null) return null; return ResponseBasedOriginErrorDetectionParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      trafficRestorationTimeToHealedOrNewEndpointsInMinutes: (() { final guardedValue = map['trafficRestorationTimeToHealedOrNewEndpointsInMinutes']; if (guardedValue == null) return null; return guardedValue as int; })(),
      type: map['type'] as String,
    );
  }
}

