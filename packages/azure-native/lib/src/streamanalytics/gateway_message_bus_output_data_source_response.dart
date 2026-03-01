// ignore_for_file: unused_element, unnecessary_cast


/// Describes a Gateway Message Bus output data source.
class GatewayMessageBusOutputDataSourceResponse {
  /// The name of the Service Bus topic.
  final String? topic;
  /// Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  /// Expected value is 'GatewayMessageBus'.
  final String type;

  /// Creates a new [GatewayMessageBusOutputDataSourceResponse].
  /// [topic] The name of the Service Bus topic.
  /// [type] Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests.
  GatewayMessageBusOutputDataSourceResponse({
    this.topic,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': ?topic,
      'type': type,
    };
  }

  factory GatewayMessageBusOutputDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return GatewayMessageBusOutputDataSourceResponse(
      topic: map['topic'] == null ? null : map['topic'] as String,
      type: map['type'] as String,
    );
  }
}

