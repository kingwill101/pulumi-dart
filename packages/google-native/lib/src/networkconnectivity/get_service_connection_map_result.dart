// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [GetServiceConnectionMapResult].
  /// [consumerPscConfigs] The PSC configurations on consumer side.
  /// [consumerPscConnections] PSC connection details on consumer side.
  /// [createTime] Time when the ServiceConnectionMap was created.
  /// [description] A description of this resource.
  /// [etag] Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [infrastructure] The infrastructure used for connections between consumers/producers.
  /// [labels] User-defined labels.
  /// [name] Immutable. The name of a ServiceConnectionMap. Format: projects/{project}/locations/{location}/serviceConnectionMaps/{service_connection_map} See: https://google.aip.dev/122#fields-representing-resource-names
  /// [producerPscConfigs] The PSC configurations on producer side.
  /// [serviceClass] The service class identifier this ServiceConnectionMap is for. The user of ServiceConnectionMap create API needs to have networkconnecitivty.serviceclasses.use iam permission for the service class.
  /// [serviceClassUri] The service class uri this ServiceConnectionMap is for.
  /// [token] The token provided by the consumer. This token authenticates that the consumer can create a connecton within the specified project and network.
  /// [updateTime] Time when the ServiceConnectionMap was updated.
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
    return <String, dynamic>{
      'consumerPscConfigs':
          pulumi.Input.encodeList<
            ConsumerPscConfigResponse,
            Map<String, dynamic>
          >(consumerPscConfigs, (value) => value.toMap()),
      'consumerPscConnections':
          pulumi.Input.encodeList<
            ConsumerPscConnectionResponse,
            Map<String, dynamic>
          >(consumerPscConnections, (value) => value.toMap()),
      'createTime': createTime,
      'description': description,
      'etag': etag,
      'infrastructure': infrastructure,
      'labels': labels,
      'name': name,
      'producerPscConfigs':
          pulumi.Input.encodeList<
            ProducerPscConfigResponse,
            Map<String, dynamic>
          >(producerPscConfigs, (value) => value.toMap()),
      'serviceClass': serviceClass,
      'serviceClassUri': serviceClassUri,
      'token': token,
      'updateTime': updateTime,
    };
  }

  factory GetServiceConnectionMapResult.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionMapResult(
      consumerPscConfigs: pulumi.Input.decodeList<ConsumerPscConfigResponse>(
        map['consumerPscConfigs'],
        (value) => ConsumerPscConfigResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      consumerPscConnections:
          pulumi.Input.decodeList<ConsumerPscConnectionResponse>(
            map['consumerPscConnections'],
            (value) => ConsumerPscConnectionResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      infrastructure: map['infrastructure'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      producerPscConfigs: pulumi.Input.decodeList<ProducerPscConfigResponse>(
        map['producerPscConfigs'],
        (value) => ProducerPscConfigResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      serviceClass: map['serviceClass'] as String,
      serviceClassUri: map['serviceClassUri'] as String,
      token: map['token'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
