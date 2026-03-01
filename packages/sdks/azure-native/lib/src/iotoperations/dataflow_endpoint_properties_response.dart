// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_endpoint_data_explorer_response.dart';
import 'dataflow_endpoint_data_lake_storage_response.dart';
import 'dataflow_endpoint_fabric_one_lake_response.dart';
import 'dataflow_endpoint_kafka_response.dart';
import 'dataflow_endpoint_local_storage_response.dart';
import 'dataflow_endpoint_mqtt_response.dart';

/// DataflowEndpoint Resource properties. NOTE - Only one type of endpoint is supported for one Resource
class DataflowEndpointPropertiesResponse {
  /// Azure Data Explorer endpoint.
  final DataflowEndpointDataExplorerResponse? dataExplorerSettings;
  /// Azure Data Lake endpoint.
  final DataflowEndpointDataLakeStorageResponse? dataLakeStorageSettings;
  /// Endpoint Type.
  final String endpointType;
  /// Microsoft Fabric endpoint.
  final DataflowEndpointFabricOneLakeResponse? fabricOneLakeSettings;
  /// Kafka endpoint.
  final DataflowEndpointKafkaResponse? kafkaSettings;
  /// Local persistent volume endpoint.
  final DataflowEndpointLocalStorageResponse? localStorageSettings;
  /// Broker endpoint.
  final DataflowEndpointMqttResponse? mqttSettings;
  /// The status of the last operation.
  final String provisioningState;

  /// Creates a new [DataflowEndpointPropertiesResponse].
  /// [dataExplorerSettings] Azure Data Explorer endpoint.
  /// [dataLakeStorageSettings] Azure Data Lake endpoint.
  /// [endpointType] Endpoint Type.
  /// [fabricOneLakeSettings] Microsoft Fabric endpoint.
  /// [kafkaSettings] Kafka endpoint.
  /// [localStorageSettings] Local persistent volume endpoint.
  /// [mqttSettings] Broker endpoint.
  /// [provisioningState] The status of the last operation.
  DataflowEndpointPropertiesResponse({
    this.dataExplorerSettings,
    this.dataLakeStorageSettings,
    required this.endpointType,
    this.fabricOneLakeSettings,
    this.kafkaSettings,
    this.localStorageSettings,
    this.mqttSettings,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExplorerSettings': ?dataExplorerSettings == null ? null : dataExplorerSettings!.toMap(),
      'dataLakeStorageSettings': ?dataLakeStorageSettings == null ? null : dataLakeStorageSettings!.toMap(),
      'endpointType': endpointType,
      'fabricOneLakeSettings': ?fabricOneLakeSettings == null ? null : fabricOneLakeSettings!.toMap(),
      'kafkaSettings': ?kafkaSettings == null ? null : kafkaSettings!.toMap(),
      'localStorageSettings': ?localStorageSettings == null ? null : localStorageSettings!.toMap(),
      'mqttSettings': ?mqttSettings == null ? null : mqttSettings!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory DataflowEndpointPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointPropertiesResponse(
      dataExplorerSettings: map['dataExplorerSettings'] == null ? null : DataflowEndpointDataExplorerResponse.fromMap((map['dataExplorerSettings'] as Map).cast<String, dynamic>()),
      dataLakeStorageSettings: map['dataLakeStorageSettings'] == null ? null : DataflowEndpointDataLakeStorageResponse.fromMap((map['dataLakeStorageSettings'] as Map).cast<String, dynamic>()),
      endpointType: map['endpointType'] as String,
      fabricOneLakeSettings: map['fabricOneLakeSettings'] == null ? null : DataflowEndpointFabricOneLakeResponse.fromMap((map['fabricOneLakeSettings'] as Map).cast<String, dynamic>()),
      kafkaSettings: map['kafkaSettings'] == null ? null : DataflowEndpointKafkaResponse.fromMap((map['kafkaSettings'] as Map).cast<String, dynamic>()),
      localStorageSettings: map['localStorageSettings'] == null ? null : DataflowEndpointLocalStorageResponse.fromMap((map['localStorageSettings'] as Map).cast<String, dynamic>()),
      mqttSettings: map['mqttSettings'] == null ? null : DataflowEndpointMqttResponse.fromMap((map['mqttSettings'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

