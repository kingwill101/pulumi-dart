// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_broker_state_store_destination_response.dart';
import 'namespace_dataset_data_point_response.dart';

/// Defines the dataset properties.
class NamespaceDatasetResponse {
  /// Array of data points that are part of the dataset. Each data point can have per-data point configuration.
  final pulumi.Input<List<NamespaceDatasetDataPointResponse>>? dataPoints;
  /// Reference to a data source for a given dataset.
  final pulumi.Input<String>? dataSource;
  /// Stringified JSON that contains connector-specific JSON string that describes configuration for the specific dataset.
  final pulumi.Input<String>? datasetConfiguration;
  /// Destinations for a dataset.
  final pulumi.Input<List<DatasetBrokerStateStoreDestinationResponse>>? destinations;
  /// Name of the dataset.
  final pulumi.Input<String> name;
  /// URI or type definition ID.
  final pulumi.Input<String>? typeRef;

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
      'dataPoints': ?pulumi.Input.mapOptionalInputValue<List<NamespaceDatasetDataPointResponse>, List<Map<String, dynamic>>>(dataPoints, (value) => pulumi.Input.encodeList<NamespaceDatasetDataPointResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataSource': ?dataSource,
      'datasetConfiguration': ?datasetConfiguration,
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<DatasetBrokerStateStoreDestinationResponse>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<DatasetBrokerStateStoreDestinationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'typeRef': ?typeRef,
    };
  }

  factory NamespaceDatasetResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceDatasetResponse(
      dataPoints: (() { final guardedValue = map['dataPoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceDatasetDataPointResponse>(guardedValue, (value) => NamespaceDatasetDataPointResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasetConfiguration: (() { final guardedValue = map['datasetConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DatasetBrokerStateStoreDestinationResponse>(guardedValue, (value) => DatasetBrokerStateStoreDestinationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      typeRef: (() { final guardedValue = map['typeRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

