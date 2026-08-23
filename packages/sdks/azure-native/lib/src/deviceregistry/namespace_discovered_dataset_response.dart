// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_broker_state_store_destination_response.dart';
import 'namespace_discovered_dataset_data_point_response.dart';

/// Defines the dataset properties.
class NamespaceDiscoveredDatasetResponse {
  /// Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  final pulumi.Input<List<NamespaceDiscoveredDatasetDataPointResponse>>? dataPoints;
  /// Reference to a data source for a given dataset.
  final pulumi.Input<String>? dataSource;
  /// Stringified JSON that contains connector-specific properties that describes configuration for the specific dataset.
  final pulumi.Input<String>? datasetConfiguration;
  /// Destinations for a dataset.
  final pulumi.Input<List<DatasetBrokerStateStoreDestinationResponse>>? destinations;
  /// Timestamp (in UTC) indicating when the dataset was added or modified.
  final pulumi.Input<String>? lastUpdatedOn;
  /// Name of the dataset.
  final pulumi.Input<String> name;
  /// URI or type definition ID.
  final pulumi.Input<String>? typeRef;

  /// Creates a new [NamespaceDiscoveredDatasetResponse].
  /// [dataPoints] Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  /// [dataSource] Reference to a data source for a given dataset.
  /// [datasetConfiguration] Stringified JSON that contains connector-specific properties that describes configuration for the specific dataset.
  /// [destinations] Destinations for a dataset.
  /// [lastUpdatedOn] Timestamp (in UTC) indicating when the dataset was added or modified.
  /// [name] Name of the dataset.
  /// [typeRef] URI or type definition ID.
  const NamespaceDiscoveredDatasetResponse({
    this.dataPoints,
    this.dataSource,
    this.datasetConfiguration,
    this.destinations,
    this.lastUpdatedOn,
    required this.name,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': ?pulumi.Input.mapOptionalInputValue<List<NamespaceDiscoveredDatasetDataPointResponse>, List<Map<String, dynamic>>>(dataPoints, (value) => pulumi.Input.encodeList<NamespaceDiscoveredDatasetDataPointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataSource': ?dataSource,
      'datasetConfiguration': ?datasetConfiguration,
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<DatasetBrokerStateStoreDestinationResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<DatasetBrokerStateStoreDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lastUpdatedOn': ?lastUpdatedOn,
      'name': name,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceDiscoveredDatasetResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceDiscoveredDatasetResponse(
      dataPoints: (() { final guardedValue = map['dataPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceDiscoveredDatasetDataPointResponse>(guardedValue, (value) => NamespaceDiscoveredDatasetDataPointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasetConfiguration: (() { final guardedValue = map['datasetConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatasetBrokerStateStoreDestinationResponse>(guardedValue, (value) => DatasetBrokerStateStoreDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lastUpdatedOn: (() { final guardedValue = map['lastUpdatedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      typeRef: (() { final guardedValue = map['typeRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
