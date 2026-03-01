// ignore_for_file: unused_element, unnecessary_cast

class PipeTargetParametersEventbridgeEventBusParameters {
  /// A free-form string, with a maximum of 128 characters, used to decide what fields to expect in the event detail.
  final String? detailType;

  /// The URL subdomain of the endpoint. For example, if the URL for Endpoint is https://abcde.veo.endpoints.event.amazonaws.com, then the EndpointId is abcde.veo.
  final String? endpointId;

  /// List of AWS resources, identified by Amazon Resource Name (ARN), which the event primarily concerns. Any number, including zero, may be present.
  final List<String>? resources;

  /// Source resource of the pipe. This field typically requires an ARN (Amazon Resource Name). However, when using a self-managed Kafka cluster, you should use a different format. Instead of an ARN, use 'smk://' followed by the bootstrap server's address.
  final String? source;

  /// The time stamp of the event, per RFC3339. If no time stamp is provided, the time stamp of the PutEvents call is used. This is the JSON path to the field in the event e.g. $.detail.timestamp
  final String? time;

  /// Creates a new [PipeTargetParametersEventbridgeEventBusParameters].
  /// [detailType] A free-form string, with a maximum of 128 characters, used to decide what fields to expect in the event detail.
  /// [endpointId] The URL subdomain of the endpoint. For example, if the URL for Endpoint is https://abcde.veo.endpoints.event.amazonaws.com, then the EndpointId is abcde.veo.
  /// [resources] List of AWS resources, identified by Amazon Resource Name (ARN), which the event primarily concerns. Any number, including zero, may be present.
  /// [source] Source resource of the pipe. This field typically requires an ARN (Amazon Resource Name). However, when using a self-managed Kafka cluster, you should use a different format. Instead of an ARN, use 'smk://' followed by the bootstrap server's address.
  /// [time] The time stamp of the event, per RFC3339. If no time stamp is provided, the time stamp of the PutEvents call is used. This is the JSON path to the field in the event e.g. $.detail.timestamp
  PipeTargetParametersEventbridgeEventBusParameters({
    this.detailType,
    this.endpointId,
    this.resources,
    this.source,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailType': ?detailType,
      'endpointId': ?endpointId,
      'resources': ?resources,
      'source': ?source,
      'time': ?time,
    };
  }

  factory PipeTargetParametersEventbridgeEventBusParameters.fromMap(
    Map<String, dynamic> map,
  ) {
    return PipeTargetParametersEventbridgeEventBusParameters(
      detailType: map['detailType'] == null
          ? null
          : map['detailType'] as String,
      endpointId: map['endpointId'] == null
          ? null
          : map['endpointId'] as String,
      resources: map['resources'] == null
          ? null
          : (map['resources'] as List).cast<String>(),
      source: map['source'] == null ? null : map['source'] as String,
      time: map['time'] == null ? null : map['time'] as String,
    );
  }
}
