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
  final pulumi.Input<List<ServiceAccessPolicyEntry>>? accessPolicies;
  /// The azure container registry settings used for convert data operation of the service instance.
  final pulumi.Input<ServiceAcrConfigurationInfo>? acrConfiguration;
  /// The authentication configuration for the service instance.
  final pulumi.Input<ServiceAuthenticationConfigurationInfo>? authenticationConfiguration;
  /// The settings for the CORS configuration of the service instance.
  final pulumi.Input<ServiceCorsConfigurationInfo>? corsConfiguration;
  /// The settings for the Cosmos DB database backing the service.
  final pulumi.Input<ServiceCosmosDbConfigurationInfo>? cosmosDbConfiguration;
  /// The settings for the export operation of the service instance.
  final pulumi.Input<ServiceExportConfigurationInfo>? exportConfiguration;
  /// The settings for the import operation of the service instance.
  final pulumi.Input<ServiceImportConfigurationInfo>? importConfiguration;
  /// The list of private endpoint connections that are set up for this resource.
  final pulumi.Input<List<PrivateEndpointConnection>>? privateEndpointConnections;
  /// Control permission for data plane traffic coming from public networks while private endpoint is enabled.
  final pulumi.Input<String>? publicNetworkAccess;

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
  const ServicesProperties({
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
      'accessPolicies': ?pulumi.Input.mapOptionalInputValue<List<ServiceAccessPolicyEntry>, List<Map<String, dynamic>>>(accessPolicies, (value) => pulumi.Input.encodeList<ServiceAccessPolicyEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'acrConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceAcrConfigurationInfo, Map<String, dynamic>>(acrConfiguration, (value) => value.toMap()),
      'authenticationConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceAuthenticationConfigurationInfo, Map<String, dynamic>>(authenticationConfiguration, (value) => value.toMap()),
      'corsConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceCorsConfigurationInfo, Map<String, dynamic>>(corsConfiguration, (value) => value.toMap()),
      'cosmosDbConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceCosmosDbConfigurationInfo, Map<String, dynamic>>(cosmosDbConfiguration, (value) => value.toMap()),
      'exportConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceExportConfigurationInfo, Map<String, dynamic>>(exportConfiguration, (value) => value.toMap()),
      'importConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceImportConfigurationInfo, Map<String, dynamic>>(importConfiguration, (value) => value.toMap()),
      'privateEndpointConnections': ?pulumi.Input.mapOptionalInputValue<List<PrivateEndpointConnection>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'publicNetworkAccess': ?publicNetworkAccess,
    };
  }

  factory ServicesProperties.fromMap(Map<String, dynamic> map) {
    return ServicesProperties(
      accessPolicies: (() { final guardedValue = map['accessPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceAccessPolicyEntry>(guardedValue, (value) => ServiceAccessPolicyEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      acrConfiguration: (() { final guardedValue = map['acrConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAcrConfigurationInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authenticationConfiguration: (() { final guardedValue = map['authenticationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAuthenticationConfigurationInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      corsConfiguration: (() { final guardedValue = map['corsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceCorsConfigurationInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cosmosDbConfiguration: (() { final guardedValue = map['cosmosDbConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceCosmosDbConfigurationInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exportConfiguration: (() { final guardedValue = map['exportConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceExportConfigurationInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      importConfiguration: (() { final guardedValue = map['importConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceImportConfigurationInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnection>(guardedValue, (value) => PrivateEndpointConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
