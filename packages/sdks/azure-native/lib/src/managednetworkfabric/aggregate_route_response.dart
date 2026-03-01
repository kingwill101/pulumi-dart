// ignore_for_file: unused_element, unnecessary_cast


/// aggregateIpv4Route model.
class AggregateRouteResponse {
  /// IPv4 Prefix of the aggregate Ipv4Route.
  final String prefix;

  /// Creates a new [AggregateRouteResponse].
  /// [prefix] IPv4 Prefix of the aggregate Ipv4Route.
  AggregateRouteResponse({
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
    };
  }

  factory AggregateRouteResponse.fromMap(Map<String, dynamic> map) {
    return AggregateRouteResponse(
      prefix: map['prefix'] as String,
    );
  }
}

