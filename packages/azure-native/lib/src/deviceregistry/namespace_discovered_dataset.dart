// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_broker_state_store_destination.dart';
import 'namespace_discovered_dataset_data_point.dart';

/// Defines the dataset properties.
class NamespaceDiscoveredDataset {
  /// Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  final List<NamespaceDiscoveredDatasetDataPoint>? dataPoints;
  /// Reference to a data source for a given dataset.
  final String? dataSource;
  /// Stringified JSON that contains connector-specific properties that describes configuration for the specific dataset.
  final String? datasetConfiguration;
  /// Destinations for a dataset.
  final List<DatasetBrokerStateStoreDestination>? destinations;
  /// Timestamp (in UTC) indicating when the dataset was added or modified.
  final String? lastUpdatedOn;
  /// Name of the dataset.
  final String name;
  /// URI or type definition ID.
  final String? typeRef;

  /// Creates a new [NamespaceDiscoveredDataset].
  /// [dataPoints] Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  /// [dataSource] Reference to a data source for a given dataset.
  /// [datasetConfiguration] Stringified JSON that contains connector-specific properties that describes configuration for the specific dataset.
  /// [destinations] Destinations for a dataset.
  /// [lastUpdatedOn] Timestamp (in UTC) indicating when the dataset was added or modified.
  /// [name] Name of the dataset.
  /// [typeRef] URI or type definition ID.
  NamespaceDiscoveredDataset({
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
      'dataPoints': ?dataPoints == null ? null : pulumi.Input.encodeList<NamespaceDiscoveredDatasetDataPoint, Map<String, dynamic>>(dataPoints!, (value) => value.toMap()),
      'dataSource': ?dataSource,
      'datasetConfiguration': ?datasetConfiguration,
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<DatasetBrokerStateStoreDestination, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'lastUpdatedOn': ?lastUpdatedOn,
      'name': name,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceDiscoveredDataset.fromMap(Map<String, dynamic> map) {
    return NamespaceDiscoveredDataset(
      dataPoints: map['dataPoints'] == null ? null : pulumi.Input.decodeList<NamespaceDiscoveredDatasetDataPoint>(map['dataPoints'], (value) => NamespaceDiscoveredDatasetDataPoint.fromMap((value as Map).cast<String, dynamic>())),
      dataSource: map['dataSource'] == null ? null : map['dataSource'] as String,
      datasetConfiguration: map['datasetConfiguration'] == null ? null : map['datasetConfiguration'] as String,
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<DatasetBrokerStateStoreDestination>(map['destinations'], (value) => DatasetBrokerStateStoreDestination.fromMap((value as Map).cast<String, dynamic>())),
      lastUpdatedOn: map['lastUpdatedOn'] == null ? null : map['lastUpdatedOn'] as String,
      name: map['name'] as String,
      typeRef: map['typeRef'] == null ? null : map['typeRef'] as String,
    );
  }
}

