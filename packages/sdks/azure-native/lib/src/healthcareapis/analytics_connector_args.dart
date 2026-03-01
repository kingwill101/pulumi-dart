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
  AnalyticsConnectorArgs({
    pulumi.Output<String>? analyticsConnectorName,
    required pulumi.Output<AnalyticsConnectorDataLakeDataDestination> dataDestinationConfiguration,
    required pulumi.Output<AnalyticsConnectorFhirToParquetMapping> dataMappingConfiguration,
    required pulumi.Output<AnalyticsConnectorFhirServiceDataSource> dataSourceConfiguration,
    pulumi.Output<ServiceManagedIdentityIdentity>? identity,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
  }) :
      analyticsConnectorName = pulumi.Input.asOptionalInput<String>(analyticsConnectorName),
      dataDestinationConfiguration = pulumi.Input.asInput<AnalyticsConnectorDataLakeDataDestination>(dataDestinationConfiguration),
      dataMappingConfiguration = pulumi.Input.asInput<AnalyticsConnectorFhirToParquetMapping>(dataMappingConfiguration),
      dataSourceConfiguration = pulumi.Input.asInput<AnalyticsConnectorFhirServiceDataSource>(dataSourceConfiguration),
      identity = pulumi.Input.asOptionalInput<ServiceManagedIdentityIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      analyticsConnectorName: map['analyticsConnectorName'] == null ? null : pulumi.Output.create<String>(map['analyticsConnectorName'] as String),
      dataDestinationConfiguration: pulumi.Output.create<AnalyticsConnectorDataLakeDataDestination>(AnalyticsConnectorDataLakeDataDestination.fromMap((map['dataDestinationConfiguration'] as Map).cast<String, dynamic>())),
      dataMappingConfiguration: pulumi.Output.create<AnalyticsConnectorFhirToParquetMapping>(AnalyticsConnectorFhirToParquetMapping.fromMap((map['dataMappingConfiguration'] as Map).cast<String, dynamic>())),
      dataSourceConfiguration: pulumi.Output.create<AnalyticsConnectorFhirServiceDataSource>(AnalyticsConnectorFhirServiceDataSource.fromMap((map['dataSourceConfiguration'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<ServiceManagedIdentityIdentity>(ServiceManagedIdentityIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

