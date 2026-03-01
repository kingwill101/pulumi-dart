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
  final List<ServiceAccessPolicyEntryResponse>? accessPolicies;
  /// The azure container registry settings used for convert data operation of the service instance.
  final ServiceAcrConfigurationInfoResponse? acrConfiguration;
  /// The authentication configuration for the service instance.
  final ServiceAuthenticationConfigurationInfoResponse? authenticationConfiguration;
  /// The settings for the CORS configuration of the service instance.
  final ServiceCorsConfigurationInfoResponse? corsConfiguration;
  /// The settings for the Cosmos DB database backing the service.
  final ServiceCosmosDbConfigurationInfoResponse? cosmosDbConfiguration;
  /// The settings for the export operation of the service instance.
  final ServiceExportConfigurationInfoResponse? exportConfiguration;
  /// The settings for the import operation of the service instance.
  final ServiceImportConfigurationInfoResponse? importConfiguration;
  /// The list of private endpoint connections that are set up for this resource.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// The provisioning state.
  final String provisioningState;
  /// Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  final String? publicNetworkAccess;

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
      'accessPolicies': ?accessPolicies == null ? null : pulumi.Input.encodeList<ServiceAccessPolicyEntryResponse, Map<String, dynamic>>(accessPolicies!, (value) => value.toMap()),
      'acrConfiguration': ?acrConfiguration == null ? null : acrConfiguration!.toMap(),
      'authenticationConfiguration': ?authenticationConfiguration == null ? null : authenticationConfiguration!.toMap(),
      'corsConfiguration': ?corsConfiguration == null ? null : corsConfiguration!.toMap(),
      'cosmosDbConfiguration': ?cosmosDbConfiguration == null ? null : cosmosDbConfiguration!.toMap(),
      'exportConfiguration': ?exportConfiguration == null ? null : exportConfiguration!.toMap(),
      'importConfiguration': ?importConfiguration == null ? null : importConfiguration!.toMap(),
      'privateEndpointConnections': ?privateEndpointConnections == null ? null : pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory ServicesPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServicesPropertiesResponse(
      accessPolicies: map['accessPolicies'] == null ? null : pulumi.Input.decodeList<ServiceAccessPolicyEntryResponse>(map['accessPolicies'], (value) => ServiceAccessPolicyEntryResponse.fromMap((value as Map).cast<String, dynamic>())),
      acrConfiguration: map['acrConfiguration'] == null ? null : ServiceAcrConfigurationInfoResponse.fromMap((map['acrConfiguration'] as Map).cast<String, dynamic>()),
      authenticationConfiguration: map['authenticationConfiguration'] == null ? null : ServiceAuthenticationConfigurationInfoResponse.fromMap((map['authenticationConfiguration'] as Map).cast<String, dynamic>()),
      corsConfiguration: map['corsConfiguration'] == null ? null : ServiceCorsConfigurationInfoResponse.fromMap((map['corsConfiguration'] as Map).cast<String, dynamic>()),
      cosmosDbConfiguration: map['cosmosDbConfiguration'] == null ? null : ServiceCosmosDbConfigurationInfoResponse.fromMap((map['cosmosDbConfiguration'] as Map).cast<String, dynamic>()),
      exportConfiguration: map['exportConfiguration'] == null ? null : ServiceExportConfigurationInfoResponse.fromMap((map['exportConfiguration'] as Map).cast<String, dynamic>()),
      importConfiguration: map['importConfiguration'] == null ? null : ServiceImportConfigurationInfoResponse.fromMap((map['importConfiguration'] as Map).cast<String, dynamic>()),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
    );
  }
}

