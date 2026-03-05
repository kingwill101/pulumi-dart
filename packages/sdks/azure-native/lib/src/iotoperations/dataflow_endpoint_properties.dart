// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataflow_endpoint_data_explorer.dart';
import 'dataflow_endpoint_data_lake_storage.dart';
import 'dataflow_endpoint_fabric_one_lake.dart';
import 'dataflow_endpoint_kafka.dart';
import 'dataflow_endpoint_local_storage.dart';
import 'dataflow_endpoint_mqtt.dart';

/// DataflowEndpoint Resource properties. NOTE - Only one type of endpoint is supported for one Resource
class DataflowEndpointProperties {
  /// Azure Data Explorer endpoint.
  final pulumi.Input<DataflowEndpointDataExplorer>? dataExplorerSettings;
  /// Azure Data Lake endpoint.
  final pulumi.Input<DataflowEndpointDataLakeStorage>? dataLakeStorageSettings;
  /// Endpoint Type.
  final pulumi.Input<String> endpointType;
  /// Microsoft Fabric endpoint.
  final pulumi.Input<DataflowEndpointFabricOneLake>? fabricOneLakeSettings;
  /// Kafka endpoint.
  final pulumi.Input<DataflowEndpointKafka>? kafkaSettings;
  /// Local persistent volume endpoint.
  final pulumi.Input<DataflowEndpointLocalStorage>? localStorageSettings;
  /// Broker endpoint.
  final pulumi.Input<DataflowEndpointMqtt>? mqttSettings;

  /// Creates a new [DataflowEndpointProperties].
  /// [dataExplorerSettings] Azure Data Explorer endpoint.
  /// [dataLakeStorageSettings] Azure Data Lake endpoint.
  /// [endpointType] Endpoint Type.
  /// [fabricOneLakeSettings] Microsoft Fabric endpoint.
  /// [kafkaSettings] Kafka endpoint.
  /// [localStorageSettings] Local persistent volume endpoint.
  /// [mqttSettings] Broker endpoint.
  DataflowEndpointProperties({
    this.dataExplorerSettings,
    this.dataLakeStorageSettings,
    required this.endpointType,
    this.fabricOneLakeSettings,
    this.kafkaSettings,
    this.localStorageSettings,
    this.mqttSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExplorerSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointDataExplorer, Map<String, dynamic>>(dataExplorerSettings, (value) => value.toMap()),
      'dataLakeStorageSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointDataLakeStorage, Map<String, dynamic>>(dataLakeStorageSettings, (value) => value.toMap()),
      'endpointType': endpointType,
      'fabricOneLakeSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointFabricOneLake, Map<String, dynamic>>(fabricOneLakeSettings, (value) => value.toMap()),
      'kafkaSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointKafka, Map<String, dynamic>>(kafkaSettings, (value) => value.toMap()),
      'localStorageSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointLocalStorage, Map<String, dynamic>>(localStorageSettings, (value) => value.toMap()),
      'mqttSettings': ?pulumi.Input.mapOptionalInputValue<DataflowEndpointMqtt, Map<String, dynamic>>(mqttSettings, (value) => value.toMap()),
    };
  }

  factory DataflowEndpointProperties.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointProperties(
      dataExplorerSettings: (() { final guardedValue = map['dataExplorerSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointDataExplorer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataLakeStorageSettings: (() { final guardedValue = map['dataLakeStorageSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointDataLakeStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      fabricOneLakeSettings: (() { final guardedValue = map['fabricOneLakeSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointFabricOneLake.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kafkaSettings: (() { final guardedValue = map['kafkaSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointKafka.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localStorageSettings: (() { final guardedValue = map['localStorageSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointLocalStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mqttSettings: (() { final guardedValue = map['mqttSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataflowEndpointMqtt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

