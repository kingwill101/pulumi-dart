// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint_connection.dart';
import 'service_access_policy_entry.dart';
import 'service_acr_configuration_info.dart';
import 'service_authentication_configuration_info.dart';
import 'service_cors_configuration_info.dart';
import 'service_cosmos_db_configuration_info.dart';
import 'service_export_configuration_info.dart';
import 'service_import_configuration_info.dart';

/// The properties of a service instance.
class ServicesProperties {
  /// The access policies of the service instance.
  final List<ServiceAccessPolicyEntry>? accessPolicies;
  /// The azure container registry settings used for convert data operation of the service instance.
  final ServiceAcrConfigurationInfo? acrConfiguration;
  /// The authentication configuration for the service instance.
  final ServiceAuthenticationConfigurationInfo? authenticationConfiguration;
  /// The settings for the CORS configuration of the service instance.
  final ServiceCorsConfigurationInfo? corsConfiguration;
  /// The settings for the Cosmos DB database backing the service.
  final ServiceCosmosDbConfigurationInfo? cosmosDbConfiguration;
  /// The settings for the export operation of the service instance.
  final ServiceExportConfigurationInfo? exportConfiguration;
  /// The settings for the import operation of the service instance.
  final ServiceImportConfigurationInfo? importConfiguration;
  /// The list of private endpoint connections that are set up for this resource.
  final List<PrivateEndpointConnection>? privateEndpointConnections;
  /// Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  final String? publicNetworkAccess;

  /// Creates a new [ServicesProperties].
  /// [accessPolicies] The access policies of the service instance.
  /// [acrConfiguration] The azure container registry settings used for convert data operation of the service instance.
  /// [authenticationConfiguration] The authentication configuration for the service instance.
  /// [corsConfiguration] The settings for the CORS configuration of the service instance.
  /// [cosmosDbConfiguration] The settings for the Cosmos DB database backing the service.
  /// [exportConfiguration] The settings for the export operation of the service instance.
  /// [importConfiguration] The settings for the import operation of the service instance.
  /// [privateEndpointConnections] The list of private endpoint connections that are set up for this resource.
  /// [publicNetworkAccess] Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  ServicesProperties({
    this.accessPolicies,
    this.acrConfiguration,
    this.authenticationConfiguration,
    this.corsConfiguration,
    this.cosmosDbConfiguration,
    this.exportConfiguration,
    this.importConfiguration,
    this.privateEndpointConnections,
    this.publicNetworkAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicies': ?accessPolicies == null ? null : pulumi.Input.encodeList<ServiceAccessPolicyEntry, Map<String, dynamic>>(accessPolicies!, (value) => value.toMap()),
      'acrConfiguration': ?acrConfiguration == null ? null : acrConfiguration!.toMap(),
      'authenticationConfiguration': ?authenticationConfiguration == null ? null : authenticationConfiguration!.toMap(),
      'corsConfiguration': ?corsConfiguration == null ? null : corsConfiguration!.toMap(),
      'cosmosDbConfiguration': ?cosmosDbConfiguration == null ? null : cosmosDbConfiguration!.toMap(),
      'exportConfiguration': ?exportConfiguration == null ? null : exportConfiguration!.toMap(),
      'importConfiguration': ?importConfiguration == null ? null : importConfiguration!.toMap(),
      'privateEndpointConnections': ?privateEndpointConnections == null ? null : pulumi.Input.encodeList<PrivateEndpointConnection, Map<String, dynamic>>(privateEndpointConnections!, (value) => value.toMap()),
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory ServicesProperties.fromMap(Map<String, dynamic> map) {
    return ServicesProperties(
      accessPolicies: map['accessPolicies'] == null ? null : pulumi.Input.decodeList<ServiceAccessPolicyEntry>(map['accessPolicies'], (value) => ServiceAccessPolicyEntry.fromMap((value as Map).cast<String, dynamic>())),
      acrConfiguration: map['acrConfiguration'] == null ? null : ServiceAcrConfigurationInfo.fromMap((map['acrConfiguration'] as Map).cast<String, dynamic>()),
      authenticationConfiguration: map['authenticationConfiguration'] == null ? null : ServiceAuthenticationConfigurationInfo.fromMap((map['authenticationConfiguration'] as Map).cast<String, dynamic>()),
      corsConfiguration: map['corsConfiguration'] == null ? null : ServiceCorsConfigurationInfo.fromMap((map['corsConfiguration'] as Map).cast<String, dynamic>()),
      cosmosDbConfiguration: map['cosmosDbConfiguration'] == null ? null : ServiceCosmosDbConfigurationInfo.fromMap((map['cosmosDbConfiguration'] as Map).cast<String, dynamic>()),
      exportConfiguration: map['exportConfiguration'] == null ? null : ServiceExportConfigurationInfo.fromMap((map['exportConfiguration'] as Map).cast<String, dynamic>()),
      importConfiguration: map['importConfiguration'] == null ? null : ServiceImportConfigurationInfo.fromMap((map['importConfiguration'] as Map).cast<String, dynamic>()),
      privateEndpointConnections: map['privateEndpointConnections'] == null ? null : pulumi.Input.decodeList<PrivateEndpointConnection>(map['privateEndpointConnections'], (value) => PrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>())),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
    );
  }
}

