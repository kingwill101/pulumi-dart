// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_psc_config.dart';
import 'producer_psc_config.dart';

/// The set of arguments for ServiceConnectionMap.
class ServiceConnectionMapArgs {
  /// The PSC configurations on consumer side.
  final pulumi.Input<List<ConsumerPscConfig>>? consumerPscConfigs;

  /// A description of this resource.
  final pulumi.Input<String>? description;

  /// Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// User-defined labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Immutable. The name of a ServiceConnectionMap. Format: projects/{project}/locations/{location}/serviceConnectionMaps/{service_connection_map} See: https://google.aip.dev/122#fields-representing-resource-names
  final pulumi.Input<String>? name;

  /// The PSC configurations on producer side.
  final pulumi.Input<List<ProducerPscConfig>>? producerPscConfigs;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The service class identifier this ServiceConnectionMap is for. The user of ServiceConnectionMap create API needs to have networkconnecitivty.serviceclasses.use iam permission for the service class.
  final pulumi.Input<String>? serviceClass;

  /// Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/serviceConnectionMaps/foo') See https://google.aip.dev/122#resource-id-segments Unique per location. If one is not provided, one will be generated.
  final pulumi.Input<String>? serviceConnectionMapId;

  /// The token provided by the consumer. This token authenticates that the consumer can create a connecton within the specified project and network.
  final pulumi.Input<String>? token;

  ServiceConnectionMapArgs({
    this.consumerPscConfigs,
    this.description,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.producerPscConfigs,
    this.project,
    this.requestId,
    this.serviceClass,
    this.serviceConnectionMapId,
    this.token,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumerPscConfigsValue = consumerPscConfigs;
    if (consumerPscConfigsValue != null) {
      map['consumerPscConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<ConsumerPscConfig>, List<Map<String, dynamic>>>(
          consumerPscConfigsValue,
          (value) =>
              pulumi.Input.encodeList<ConsumerPscConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final producerPscConfigsValue = producerPscConfigs;
    if (producerPscConfigsValue != null) {
      map['producerPscConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<ProducerPscConfig>, List<Map<String, dynamic>>>(
          producerPscConfigsValue,
          (value) =>
              pulumi.Input.encodeList<ProducerPscConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final serviceClassValue = serviceClass;
    if (serviceClassValue != null) {
      map['serviceClass'] = serviceClassValue;
    }
    final serviceConnectionMapIdValue = serviceConnectionMapId;
    if (serviceConnectionMapIdValue != null) {
      map['serviceConnectionMapId'] = serviceConnectionMapIdValue;
    }
    final tokenValue = token;
    if (tokenValue != null) {
      map['token'] = tokenValue;
    }
    return map;
  }

  factory ServiceConnectionMapArgs.fromMap(Map<String, dynamic> map) {
    return ServiceConnectionMapArgs(
      consumerPscConfigs: pulumi.Input.asOptionalInput<List<ConsumerPscConfig>>(
          map['consumerPscConfigs']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      producerPscConfigs: pulumi.Input.asOptionalInput<List<ProducerPscConfig>>(
          map['producerPscConfigs']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      serviceClass: pulumi.Input.asOptionalInput<String>(map['serviceClass']),
      serviceConnectionMapId:
          pulumi.Input.asOptionalInput<String>(map['serviceConnectionMapId']),
      token: pulumi.Input.asOptionalInput<String>(map['token']),
    );
  }
}
