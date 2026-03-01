// ignore_for_file: unused_element, unnecessary_cast


/// Specifies a metric to load balance a service during runtime.
class ServiceLoadMetric {
  /// Used only for Stateless services. The default amount of load, as a number, that this service creates for this metric.
  final int? defaultLoad;
  /// The name of the metric. If the service chooses to report load during runtime, the load metric name should match the name that is specified in Name exactly. Note that metric names are case sensitive.
  final String name;
  /// Used only for Stateful services. The default amount of load, as a number, that this service creates for this metric when it is a Primary replica.
  final int? primaryDefaultLoad;
  /// Used only for Stateful services. The default amount of load, as a number, that this service creates for this metric when it is a Secondary replica.
  final int? secondaryDefaultLoad;
  /// The service load metric relative weight, compared to other metrics configured for this service, as a number.
  final String? weight;

  /// Creates a new [ServiceLoadMetric].
  /// [defaultLoad] Used only for Stateless services. The default amount of load, as a number, that this service creates for this metric.
  /// [name] The name of the metric. If the service chooses to report load during runtime, the load metric name should match the name that is specified in Name exactly. Note that metric names are case sensitive.
  /// [primaryDefaultLoad] Used only for Stateful services. The default amount of load, as a number, that this service creates for this metric when it is a Primary replica.
  /// [secondaryDefaultLoad] Used only for Stateful services. The default amount of load, as a number, that this service creates for this metric when it is a Secondary replica.
  /// [weight] The service load metric relative weight, compared to other metrics configured for this service, as a number.
  ServiceLoadMetric({
    this.defaultLoad,
    required this.name,
    this.primaryDefaultLoad,
    this.secondaryDefaultLoad,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultLoad': ?defaultLoad,
      'name': name,
      'primaryDefaultLoad': ?primaryDefaultLoad,
      'secondaryDefaultLoad': ?secondaryDefaultLoad,
      'weight': ?weight,
    };
  }

  factory ServiceLoadMetric.fromMap(Map<String, dynamic> map) {
    return ServiceLoadMetric(
      defaultLoad: map['defaultLoad'] == null ? null : map['defaultLoad'] as int,
      name: map['name'] as String,
      primaryDefaultLoad: map['primaryDefaultLoad'] == null ? null : map['primaryDefaultLoad'] as int,
      secondaryDefaultLoad: map['secondaryDefaultLoad'] == null ? null : map['secondaryDefaultLoad'] as int,
      weight: map['weight'] == null ? null : map['weight'] as String,
    );
  }
}

