// ignore_for_file: unused_element, unnecessary_cast

import 'api_management_gateway_sku_properties_response.dart';
import 'backend_configuration_response.dart';
import 'frontend_configuration_response.dart';
import 'gateway_configuration_api_response.dart';
import 'system_data_response.dart';

/// Result data returned by getApiGateway.
class GetApiGatewayResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Information regarding how the gateway should integrate with backend systems.
  final BackendConfigurationResponse? backend;

  /// Information regarding the Configuration API of the API Management gateway. This is only applicable for API gateway with Standard SKU.
  final GatewayConfigurationApiResponse? configurationApi;

  /// Creation UTC date of the API Management gateway.The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final String createdAtUtc;

  /// ETag of the resource.
  final String etag;

  /// Information regarding how the gateway should be exposed.
  final FrontendConfigurationResponse? frontend;

  /// Resource ID.
  final String id;

  /// Resource location.
  final String location;

  /// Resource name.
  final String name;

  /// The current provisioning state of the API Management gateway which can be one of the following: Created/Activating/Succeeded/Updating/Failed/Stopped/Terminating/TerminationFailed/Deleted.
  final String provisioningState;

  /// SKU properties of the API Management gateway.
  final ApiManagementGatewaySkuPropertiesResponse sku;

  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The provisioning state of the API Management gateway, which is targeted by the long running operation started on the gateway.
  final String targetProvisioningState;

  /// Resource type for API Management resource is set to Microsoft.ApiManagement.
  final String type;

  /// The type of VPN in which API Management gateway needs to be configured in.
  final String? virtualNetworkType;

  /// Creates a new [GetApiGatewayResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backend] Information regarding how the gateway should integrate with backend systems.
  /// [configurationApi] Information regarding the Configuration API of the API Management gateway. This is only applicable for API gateway with Standard SKU.
  /// [createdAtUtc] Creation UTC date of the API Management gateway.The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  /// [etag] ETag of the resource.
  /// [frontend] Information regarding how the gateway should be exposed.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] The current provisioning state of the API Management gateway which can be one of the following: Created/Activating/Succeeded/Updating/Failed/Stopped/Terminating/TerminationFailed/Deleted.
  /// [sku] SKU properties of the API Management gateway.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [targetProvisioningState] The provisioning state of the API Management gateway, which is targeted by the long running operation started on the gateway.
  /// [type] Resource type for API Management resource is set to Microsoft.ApiManagement.
  /// [virtualNetworkType] The type of VPN in which API Management gateway needs to be configured in.
  GetApiGatewayResult({
    required this.azureApiVersion,
    this.backend,
    this.configurationApi,
    required this.createdAtUtc,
    required this.etag,
    this.frontend,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.sku,
    required this.systemData,
    this.tags,
    required this.targetProvisioningState,
    required this.type,
    this.virtualNetworkType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'backend': ?backend?.toMap(),
      'configurationApi': ?configurationApi?.toMap(),
      'createdAtUtc': createdAtUtc,
      'etag': etag,
      'frontend': ?frontend?.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'sku': sku.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'targetProvisioningState': targetProvisioningState,
      'type': type,
      'virtualNetworkType': ?virtualNetworkType,
    };
  }

  factory GetApiGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetApiGatewayResult(
      azureApiVersion: map['azureApiVersion'] as String,
      backend: (() {
        final guardedValue = map['backend'];
        if (guardedValue == null) return null;
        return BackendConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      configurationApi: (() {
        final guardedValue = map['configurationApi'];
        if (guardedValue == null) return null;
        return GatewayConfigurationApiResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      createdAtUtc: map['createdAtUtc'] as String,
      etag: map['etag'] as String,
      frontend: (() {
        final guardedValue = map['frontend'];
        if (guardedValue == null) return null;
        return FrontendConfigurationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sku: ApiManagementGatewaySkuPropertiesResponse.fromMap(
        (map['sku']! as Map).cast<String, dynamic>(),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      targetProvisioningState: map['targetProvisioningState'] as String,
      type: map['type'] as String,
      virtualNetworkType: (() {
        final guardedValue = map['virtualNetworkType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
