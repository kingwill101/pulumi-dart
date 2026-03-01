// ignore_for_file: unused_element, unnecessary_cast


/// aggregateIpv4Route model.
class AggregateRoute {
  /// IPv4 Prefix of the aggregate Ipv4Route.
  final String prefix;

  /// Creates a new [AggregateRoute].
  /// [prefix] IPv4 Prefix of the aggregate Ipv4Route.
  AggregateRoute({
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
    };
  }

  factory AggregateRoute.fromMap(Map<String, dynamic> map) {
    return AggregateRoute(
      prefix: map['prefix'] as String,
    );
  }
}

