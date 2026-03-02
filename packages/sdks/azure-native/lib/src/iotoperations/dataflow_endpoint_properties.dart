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
      dataExplorerSettings: map['dataExplorerSettings'] == null ? null : (DataflowEndpointDataExplorer.fromMap((map['dataExplorerSettings'] as Map).cast<String, dynamic>())).input(),
      dataLakeStorageSettings: map['dataLakeStorageSettings'] == null ? null : (DataflowEndpointDataLakeStorage.fromMap((map['dataLakeStorageSettings'] as Map).cast<String, dynamic>())).input(),
      endpointType: (map['endpointType'] as String).input(),
      fabricOneLakeSettings: map['fabricOneLakeSettings'] == null ? null : (DataflowEndpointFabricOneLake.fromMap((map['fabricOneLakeSettings'] as Map).cast<String, dynamic>())).input(),
      kafkaSettings: map['kafkaSettings'] == null ? null : (DataflowEndpointKafka.fromMap((map['kafkaSettings'] as Map).cast<String, dynamic>())).input(),
      localStorageSettings: map['localStorageSettings'] == null ? null : (DataflowEndpointLocalStorage.fromMap((map['localStorageSettings'] as Map).cast<String, dynamic>())).input(),
      mqttSettings: map['mqttSettings'] == null ? null : (DataflowEndpointMqtt.fromMap((map['mqttSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

