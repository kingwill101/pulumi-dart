// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_broker_state_store_destination_response.dart';
import 'namespace_dataset_data_point_response.dart';

/// Defines the dataset properties.
class NamespaceDatasetResponse {
  /// Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  final List<NamespaceDatasetDataPointResponse>? dataPoints;
  /// Reference to a data source for a given dataset.
  final String? dataSource;
  /// Stringified JSON that contains connector-specific JSON string that describes configuration for the specific dataset.
  final String? datasetConfiguration;
  /// Destinations for a dataset.
  final List<DatasetBrokerStateStoreDestinationResponse>? destinations;
  /// Name of the dataset.
  final String name;
  /// URI or type definition ID.
  final String? typeRef;

  /// Creates a new [NamespaceDatasetResponse].
  /// [dataPoints] Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  /// [dataSource] Reference to a data source for a given dataset.
  /// [datasetConfiguration] Stringified JSON that contains connector-specific JSON string that describes configuration for the specific dataset.
  /// [destinations] Destinations for a dataset.
  /// [name] Name of the dataset.
  /// [typeRef] URI or type definition ID.
  NamespaceDatasetResponse({
    this.dataPoints,
    this.dataSource,
    this.datasetConfiguration,
    this.destinations,
    required this.name,
    this.typeRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPoints': ?dataPoints == null ? null : pulumi.Input.encodeList<NamespaceDatasetDataPointResponse, Map<String, dynamic>>(dataPoints!, (value) => value.toMap()),
      'dataSource': ?dataSource,
      'datasetConfiguration': ?datasetConfiguration,
      'destinations': ?destinations == null ? null : pulumi.Input.encodeList<DatasetBrokerStateStoreDestinationResponse, Map<String, dynamic>>(destinations!, (value) => value.toMap()),
      'name': name,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceDatasetResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceDatasetResponse(
      dataPoints: map['dataPoints'] == null ? null : pulumi.Input.decodeList<NamespaceDatasetDataPointResponse>(map['dataPoints'], (value) => NamespaceDatasetDataPointResponse.fromMap((value as Map).cast<String, dynamic>())),
      dataSource: map['dataSource'] == null ? null : map['dataSource'] as String,
      datasetConfiguration: map['datasetConfiguration'] == null ? null : map['datasetConfiguration'] as String,
      destinations: map['destinations'] == null ? null : pulumi.Input.decodeList<DatasetBrokerStateStoreDestinationResponse>(map['destinations'], (value) => DatasetBrokerStateStoreDestinationResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      typeRef: map['typeRef'] == null ? null : map['typeRef'] as String,
    );
  }
}

