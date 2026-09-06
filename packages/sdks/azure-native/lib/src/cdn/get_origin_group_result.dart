// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'health_probe_parameters_response.dart';
import 'resource_reference_response.dart';
import 'response_based_origin_error_detection_parameters_response.dart';
import 'system_data_response.dart';

/// Result data returned by getOriginGroup.
class GetOriginGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Health probe settings to the origin that is used to determine the health of the origin.
  final HealthProbeParametersResponse? healthProbeSettings;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The source of the content being delivered via CDN within given origin group.
  final List<ResourceReferenceResponse>? origins;
  /// Provisioning status of the origin group.
  final String? provisioningState;
  /// Resource status of the origin group.
  final String? resourceState;
  /// The JSON object that contains the properties to determine origin health using real requests/responses. This property is currently not supported.
  final ResponseBasedOriginErrorDetectionParametersResponse? responseBasedOriginErrorDetectionSettings;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Time in minutes to shift the traffic to the endpoint gradually when an unhealthy endpoint comes healthy or a new endpoint is added. Default is 10 mins. This property is currently not supported.
  final int? trafficRestorationTimeToHealedOrNewEndpointsInMinutes;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.azureApiVersion,
    this.healthProbeSettings,
    this.id,
    this.name,
    this.origins,
    this.provisioningState,
    this.resourceState,
    this.responseBasedOriginErrorDetectionSettings,
    this.systemData,
    this.trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'healthProbeSettings': ?healthProbeSettings?.toMap(),
      'id': ?id,
      'name': ?name,
      'origins': ?(() { final guardedValue = origins; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'resourceState': ?resourceState,
      'responseBasedOriginErrorDetectionSettings': ?responseBasedOriginErrorDetectionSettings?.toMap(),
      'systemData': ?systemData?.toMap(),
      'trafficRestorationTimeToHealedOrNewEndpointsInMinutes': ?trafficRestorationTimeToHealedOrNewEndpointsInMinutes,
      'type': ?type,
    };
  }

  factory GetOriginGroupResult.fromMap(Map<String, dynamic> map) {
    return GetOriginGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthProbeSettings: (() { final guardedValue = map['healthProbeSettings']; if (guardedValue == null) return null; return HealthProbeParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      origins: (() { final guardedValue = map['origins']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceReferenceResponse>(guardedValue, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceState: (() { final guardedValue = map['resourceState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      responseBasedOriginErrorDetectionSettings: (() { final guardedValue = map['responseBasedOriginErrorDetectionSettings']; if (guardedValue == null) return null; return ResponseBasedOriginErrorDetectionParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      trafficRestorationTimeToHealedOrNewEndpointsInMinutes: (() { final guardedValue = map['trafficRestorationTimeToHealedOrNewEndpointsInMinutes']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
