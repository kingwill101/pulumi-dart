// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection_response.dart';
import 'service_access_policy_entry_response.dart';
import 'service_acr_configuration_info_response.dart';
import 'service_authentication_configuration_info_response.dart';
import 'service_cors_configuration_info_response.dart';
import 'service_cosmos_db_configuration_info_response.dart';
import 'service_export_configuration_info_response.dart';
import 'service_import_configuration_info_response.dart';

/// The properties of a service instance.
class ServicesPropertiesResponse {
  /// The access policies of the service instance.
  final pulumi.Input<List<ServiceAccessPolicyEntryResponse>>? accessPolicies;

  /// The azure container registry settings used for convert data operation of the service instance.
  final pulumi.Input<ServiceAcrConfigurationInfoResponse>? acrConfiguration;

  /// The authentication configuration for the service instance.
  final pulumi.Input<ServiceAuthenticationConfigurationInfoResponse>?
  authenticationConfiguration;

  /// The settings for the CORS configuration of the service instance.
  final pulumi.Input<ServiceCorsConfigurationInfoResponse>? corsConfiguration;

  /// The settings for the Cosmos DB database backing the service.
  final pulumi.Input<ServiceCosmosDbConfigurationInfoResponse>?
  cosmosDbConfiguration;

  /// The settings for the export operation of the service instance.
  final pulumi.Input<ServiceExportConfigurationInfoResponse>?
  exportConfiguration;

  /// The settings for the import operation of the service instance.
  final pulumi.Input<ServiceImportConfigurationInfoResponse>?
  importConfiguration;

  /// The list of private endpoint connections that are set up for this resource.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>>?
  privateEndpointConnections;

  /// The provisioning state.
  final pulumi.Input<String> provisioningState;

  /// Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  final pulumi.Input<String>? publicNetworkAccess;

  /// Creates a new [ServicesPropertiesResponse].
  /// [accessPolicies] The access policies of the service instance.
  /// [acrConfiguration] The azure container registry settings used for convert data operation of the service instance.
  /// [authenticationConfiguration] The authentication configuration for the service instance.
  /// [corsConfiguration] The settings for the CORS configuration of the service instance.
  /// [cosmosDbConfiguration] The settings for the Cosmos DB database backing the service.
  /// [exportConfiguration] The settings for the export operation of the service instance.
  /// [importConfiguration] The settings for the import operation of the service instance.
  /// [privateEndpointConnections] The list of private endpoint connections that are set up for this resource.
  /// [provisioningState] The provisioning state.
  /// [publicNetworkAccess] Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  ServicesPropertiesResponse({
    this.accessPolicies,
    this.acrConfiguration,
    this.authenticationConfiguration,
    this.corsConfiguration,
    this.cosmosDbConfiguration,
    this.exportConfiguration,
    this.importConfiguration,
    this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServiceAccessPolicyEntryResponse>,
            List<Map<String, dynamic>>
          >(
            accessPolicies,
            (value) =>
                pulumi.Input.encodeList<
                  ServiceAccessPolicyEntryResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'acrConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceAcrConfigurationInfoResponse,
            Map<String, dynamic>
          >(acrConfiguration, (value) => value.toMap()),
      'authenticationConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceAuthenticationConfigurationInfoResponse,
            Map<String, dynamic>
          >(authenticationConfiguration, (value) => value.toMap()),
      'corsConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceCorsConfigurationInfoResponse,
            Map<String, dynamic>
          >(corsConfiguration, (value) => value.toMap()),
      'cosmosDbConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceCosmosDbConfigurationInfoResponse,
            Map<String, dynamic>
          >(cosmosDbConfiguration, (value) => value.toMap()),
      'exportConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceExportConfigurationInfoResponse,
            Map<String, dynamic>
          >(exportConfiguration, (value) => value.toMap()),
      'importConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceImportConfigurationInfoResponse,
            Map<String, dynamic>
          >(importConfiguration, (value) => value.toMap()),
      'privateEndpointConnections':
          ?pulumi.Input.mapOptionalInputValue<
            List<PrivateEndpointConnectionResponse>,
            List<Map<String, dynamic>>
          >(
            privateEndpointConnections,
            (value) =>
                pulumi.Input.encodeList<
                  PrivateEndpointConnectionResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory ServicesPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServicesPropertiesResponse(
      accessPolicies: (() {
        final guardedValue = map['accessPolicies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServiceAccessPolicyEntryResponse>(
            guardedValue,
            (value) => ServiceAccessPolicyEntryResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      acrConfiguration: (() {
        final guardedValue = map['acrConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceAcrConfigurationInfoResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      authenticationConfiguration: (() {
        final guardedValue = map['authenticationConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceAuthenticationConfigurationInfoResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      corsConfiguration: (() {
        final guardedValue = map['corsConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceCorsConfigurationInfoResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cosmosDbConfiguration: (() {
        final guardedValue = map['cosmosDbConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceCosmosDbConfigurationInfoResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      exportConfiguration: (() {
        final guardedValue = map['exportConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceExportConfigurationInfoResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      importConfiguration: (() {
        final guardedValue = map['importConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceImportConfigurationInfoResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      privateEndpointConnections: (() {
        final guardedValue = map['privateEndpointConnections'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(
            guardedValue,
            (value) => PrivateEndpointConnectionResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      publicNetworkAccess: (() {
        final guardedValue = map['publicNetworkAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
