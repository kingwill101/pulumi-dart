// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analytics_connector_data_lake_data_destination.dart';
import 'analytics_connector_fhir_service_data_source.dart';
import 'analytics_connector_fhir_to_parquet_mapping.dart';
import 'service_managed_identity_identity.dart';

/// {@template pulumi_healthcareapis_analytics_connector_args_doc}
/// The set of arguments for AnalyticsConnector.
/// {@endtemplate}
/// {@macro pulumi_healthcareapis_analytics_connector_args_doc}
class AnalyticsConnectorArgs {
  /// The name of Analytics Connector resource.
  final pulumi.Input<String>? analyticsConnectorName;
  /// Data destination configuration for Analytics Connector.
  final pulumi.Input<AnalyticsConnectorDataLakeDataDestination> dataDestinationConfiguration;
  /// Data mapping configuration for Analytics Connector.
  final pulumi.Input<AnalyticsConnectorFhirToParquetMapping> dataMappingConfiguration;
  /// Data source for Analytics Connector.
  final pulumi.Input<AnalyticsConnectorFhirServiceDataSource> dataSourceConfiguration;
  /// Setting indicating whether the service has a managed identity associated with it.
  final pulumi.Input<ServiceManagedIdentityIdentity>? identity;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of workspace resource.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [AnalyticsConnectorArgs].
  /// [analyticsConnectorName] The name of Analytics Connector resource.
  /// [dataDestinationConfiguration] Data destination configuration for Analytics Connector.
  /// [dataMappingConfiguration] Data mapping configuration for Analytics Connector.
  /// [dataSourceConfiguration] Data source for Analytics Connector.
  /// [identity] Setting indicating whether the service has a managed identity associated with it.
  /// [location] The resource location.
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [tags] Resource tags.
  /// [workspaceName] The name of workspace resource.
  const AnalyticsConnectorArgs({
    this.analyticsConnectorName,
    required this.dataDestinationConfiguration,
    required this.dataMappingConfiguration,
    required this.dataSourceConfiguration,
    this.identity,
    this.location,
    required this.resourceGroupName,
    this.tags,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analyticsConnectorName': ?analyticsConnectorName,
      'dataDestinationConfiguration': pulumi.Input.mapInputValue<AnalyticsConnectorDataLakeDataDestination, Map<String, dynamic>>(dataDestinationConfiguration, (value) => value.toMap()),
      'dataMappingConfiguration': pulumi.Input.mapInputValue<AnalyticsConnectorFhirToParquetMapping, Map<String, dynamic>>(dataMappingConfiguration, (value) => value.toMap()),
      'dataSourceConfiguration': pulumi.Input.mapInputValue<AnalyticsConnectorFhirServiceDataSource, Map<String, dynamic>>(dataSourceConfiguration, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ServiceManagedIdentityIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory AnalyticsConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AnalyticsConnectorArgs(
      analyticsConnectorName: (() { final guardedValue = map['analyticsConnectorName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataDestinationConfiguration: pulumi.Input.fromValue(AnalyticsConnectorDataLakeDataDestination.fromMap((map['dataDestinationConfiguration']! as Map).cast<String, dynamic>())),
      dataMappingConfiguration: pulumi.Input.fromValue(AnalyticsConnectorFhirToParquetMapping.fromMap((map['dataMappingConfiguration']! as Map).cast<String, dynamic>())),
      dataSourceConfiguration: pulumi.Input.fromValue(AnalyticsConnectorFhirServiceDataSource.fromMap((map['dataSourceConfiguration']! as Map).cast<String, dynamic>())),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceManagedIdentityIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

