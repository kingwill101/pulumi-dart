// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_endpoint_data_explorer_response.dart';
import 'dataflow_endpoint_data_lake_storage_response.dart';
import 'dataflow_endpoint_fabric_one_lake_response.dart';
import 'dataflow_endpoint_kafka_response.dart';
import 'dataflow_endpoint_local_storage_response.dart';
import 'dataflow_endpoint_mqtt_response.dart';

/// DataflowEndpoint Resource properties. NOTE - Only one type of endpoint is supported for one Resource
class DataflowEndpointPropertiesResponse {
  /// Azure Data Explorer endpoint.
  final pulumi.Input<DataflowEndpointDataExplorerResponse?>? dataExplorerSettings;
  /// Azure Data Lake endpoint.
  final pulumi.Input<DataflowEndpointDataLakeStorageResponse?>? dataLakeStorageSettings;
  /// Endpoint Type.
  final pulumi.Input<String> endpointType;
  /// Microsoft Fabric endpoint.
  final pulumi.Input<DataflowEndpointFabricOneLakeResponse?>? fabricOneLakeSettings;
  /// Kafka endpoint.
  final pulumi.Input<DataflowEndpointKafkaResponse?>? kafkaSettings;
  /// Local persistent volume endpoint.
  final pulumi.Input<DataflowEndpointLocalStorageResponse?>? localStorageSettings;
  /// Broker endpoint.
  final pulumi.Input<DataflowEndpointMqttResponse?>? mqttSettings;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [DataflowEndpointPropertiesResponse].
  /// [dataExplorerSettings] Azure Data Explorer endpoint.
  /// [dataLakeStorageSettings] Azure Data Lake endpoint.
  /// [endpointType] Endpoint Type.
  /// [fabricOneLakeSettings] Microsoft Fabric endpoint.
  /// [kafkaSettings] Kafka endpoint.
  /// [localStorageSettings] Local persistent volume endpoint.
  /// [mqttSettings] Broker endpoint.
  /// [provisioningState] The status of the last operation.
  const DataflowEndpointPropertiesResponse({
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
      'dataExplorerSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointDataExplorerResponse, Map<String, dynamic>>(dataExplorerSettings, (value) => value.toMap()),
      'dataLakeStorageSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointDataLakeStorageResponse, Map<String, dynamic>>(dataLakeStorageSettings, (value) => value.toMap()),
      'endpointType': endpointType,
      'fabricOneLakeSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointFabricOneLakeResponse, Map<String, dynamic>>(fabricOneLakeSettings, (value) => value.toMap()),
      'kafkaSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointKafkaResponse, Map<String, dynamic>>(kafkaSettings, (value) => value.toMap()),
      'localStorageSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointLocalStorageResponse, Map<String, dynamic>>(localStorageSettings, (value) => value.toMap()),
      'mqttSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointMqttResponse, Map<String, dynamic>>(mqttSettings, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory DataflowEndpointPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointPropertiesResponse(
      dataExplorerSettings: (() { final guardedValue = map['dataExplorerSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointDataExplorerResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataLakeStorageSettings: (() { final guardedValue = map['dataLakeStorageSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointDataLakeStorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      fabricOneLakeSettings: (() { final guardedValue = map['fabricOneLakeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointFabricOneLakeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kafkaSettings: (() { final guardedValue = map['kafkaSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointKafkaResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localStorageSettings: (() { final guardedValue = map['localStorageSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointLocalStorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mqttSettings: (() { final guardedValue = map['mqttSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointMqttResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}
