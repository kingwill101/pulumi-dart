// ignore_for_file: unused_element, unnecessary_cast

import 'dataflow_endpoint_data_explorer.dart';
import 'dataflow_endpoint_data_lake_storage.dart';
import 'dataflow_endpoint_fabric_one_lake.dart';
import 'dataflow_endpoint_kafka.dart';
import 'dataflow_endpoint_local_storage.dart';
import 'dataflow_endpoint_mqtt.dart';

/// DataflowEndpoint Resource properties. NOTE - Only one type of endpoint is supported for one Resource
class DataflowEndpointProperties {
  /// Azure Data Explorer endpoint.
  final DataflowEndpointDataExplorer? dataExplorerSettings;
  /// Azure Data Lake endpoint.
  final DataflowEndpointDataLakeStorage? dataLakeStorageSettings;
  /// Endpoint Type.
  final String endpointType;
  /// Microsoft Fabric endpoint.
  final DataflowEndpointFabricOneLake? fabricOneLakeSettings;
  /// Kafka endpoint.
  final DataflowEndpointKafka? kafkaSettings;
  /// Local persistent volume endpoint.
  final DataflowEndpointLocalStorage? localStorageSettings;
  /// Broker endpoint.
  final DataflowEndpointMqtt? mqttSettings;

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
      'dataExplorerSettings': ?dataExplorerSettings == null ? null : dataExplorerSettings!.toMap(),
      'dataLakeStorageSettings': ?dataLakeStorageSettings == null ? null : dataLakeStorageSettings!.toMap(),
      'endpointType': endpointType,
      'fabricOneLakeSettings': ?fabricOneLakeSettings == null ? null : fabricOneLakeSettings!.toMap(),
      'kafkaSettings': ?kafkaSettings == null ? null : kafkaSettings!.toMap(),
      'localStorageSettings': ?localStorageSettings == null ? null : localStorageSettings!.toMap(),
      'mqttSettings': ?mqttSettings == null ? null : mqttSettings!.toMap(),
    };
  }

  factory DataflowEndpointProperties.fromMap(Map<String, dynamic> map) {
    return DataflowEndpointProperties(
      dataExplorerSettings: map['dataExplorerSettings'] == null ? null : DataflowEndpointDataExplorer.fromMap((map['dataExplorerSettings'] as Map).cast<String, dynamic>()),
      dataLakeStorageSettings: map['dataLakeStorageSettings'] == null ? null : DataflowEndpointDataLakeStorage.fromMap((map['dataLakeStorageSettings'] as Map).cast<String, dynamic>()),
      endpointType: map['endpointType'] as String,
      fabricOneLakeSettings: map['fabricOneLakeSettings'] == null ? null : DataflowEndpointFabricOneLake.fromMap((map['fabricOneLakeSettings'] as Map).cast<String, dynamic>()),
      kafkaSettings: map['kafkaSettings'] == null ? null : DataflowEndpointKafka.fromMap((map['kafkaSettings'] as Map).cast<String, dynamic>()),
      localStorageSettings: map['localStorageSettings'] == null ? null : DataflowEndpointLocalStorage.fromMap((map['localStorageSettings'] as Map).cast<String, dynamic>()),
      mqttSettings: map['mqttSettings'] == null ? null : DataflowEndpointMqtt.fromMap((map['mqttSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

