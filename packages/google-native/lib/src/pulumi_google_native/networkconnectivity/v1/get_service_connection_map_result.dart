// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'consumer_psc_config_response.dart';
import 'consumer_psc_connection_response.dart';
import 'producer_psc_config_response.dart';

/// Result data returned by getServiceConnectionMap.
class GetServiceConnectionMapResult {
  /// The PSC configurations on consumer side.
  final List<ConsumerPscConfigResponse> consumerPscConfigs;

  /// PSC connection details on consumer side.
  final List<ConsumerPscConnectionResponse> consumerPscConnections;

  /// Time when the ServiceConnectionMap was created.
  final String createTime;

  /// A description of this resource.
  final String description;

  /// Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final String etag;

  /// The infrastructure used for connections between consumers/producers.
  final String infrastructure;

  /// User-defined labels.
  final Map<String, String> labels;

  /// Immutable. The name of a ServiceConnectionMap. Format: projects/{project}/locations/{location}/serviceConnectionMaps/{service_connection_map} See: https://google.aip.dev/122#fields-representing-resource-names
  final String name;

  /// The PSC configurations on producer side.
  final List<ProducerPscConfigResponse> producerPscConfigs;

  /// The service class identifier this ServiceConnectionMap is for. The user of ServiceConnectionMap create API needs to have networkconnecitivty.serviceclasses.use iam permission for the service class.
  final String serviceClass;

  /// The service class uri this ServiceConnectionMap is for.
  final String serviceClassUri;

  /// The token provided by the consumer. This token authenticates that the consumer can create a connecton within the specified project and network.
  final String token;

  /// Time when the ServiceConnectionMap was updated.
  final String updateTime;

  GetServiceConnectionMapResult({
    required this.consumerPscConfigs,
    required this.consumerPscConnections,
    required this.createTime,
    required this.description,
    required this.etag,
    required this.infrastructure,
    required this.labels,
    required this.name,
    required this.producerPscConfigs,
    required this.serviceClass,
    required this.serviceClassUri,
    required this.token,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerPscConfigs'] =
        Input.encodeList<ConsumerPscConfigResponse, Map<String, dynamic>>(
            consumerPscConfigs, (value) => value.toMap());
    map['consumerPscConnections'] =
        Input.encodeList<ConsumerPscConnectionResponse, Map<String, dynamic>>(
            consumerPscConnections, (value) => value.toMap());
    map['createTime'] = createTime;
    map['description'] = description;
    map['etag'] = etag;
    map['infrastructure'] = infrastructure;
    map['labels'] = labels;
    map['name'] = name;
    map['producerPscConfigs'] =
        Input.encodeList<ProducerPscConfigResponse, Map<String, dynamic>>(
            producerPscConfigs, (value) => value.toMap());
    map['serviceClass'] = serviceClass;
    map['serviceClassUri'] = serviceClassUri;
    map['token'] = token;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetServiceConnectionMapResult.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionMapResult(
      consumerPscConfigs: Input.decodeList<ConsumerPscConfigResponse>(
          map['consumerPscConfigs'],
          (value) => ConsumerPscConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      consumerPscConnections: Input.decodeList<ConsumerPscConnectionResponse>(
          map['consumerPscConnections'],
          (value) => ConsumerPscConnectionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      infrastructure: map['infrastructure'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      producerPscConfigs: Input.decodeList<ProducerPscConfigResponse>(
          map['producerPscConfigs'],
          (value) => ProducerPscConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      serviceClass: map['serviceClass'] as String,
      serviceClassUri: map['serviceClassUri'] as String,
      token: map['token'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
