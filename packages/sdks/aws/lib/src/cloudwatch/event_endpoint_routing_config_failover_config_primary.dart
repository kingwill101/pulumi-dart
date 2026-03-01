// ignore_for_file: unused_element, unnecessary_cast


class EventEndpointRoutingConfigFailoverConfigPrimary {
  /// The ARN of the health check used by the endpoint to determine whether failover is triggered.
  final String? healthCheck;

  /// Creates a new [EventEndpointRoutingConfigFailoverConfigPrimary].
  /// [healthCheck] The ARN of the health check used by the endpoint to determine whether failover is triggered.
  EventEndpointRoutingConfigFailoverConfigPrimary({
    this.healthCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheck': ?healthCheck,
    };
  }

  factory EventEndpointRoutingConfigFailoverConfigPrimary.fromMap(Map<String, dynamic> map) {
    return EventEndpointRoutingConfigFailoverConfigPrimary(
      healthCheck: map['healthCheck'] == null ? null : map['healthCheck'] as String,
    );
  }
}

