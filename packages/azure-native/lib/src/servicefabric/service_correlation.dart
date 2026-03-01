// ignore_for_file: unused_element, unnecessary_cast


/// Creates a particular correlation between services.
class ServiceCorrelation {
  /// The ServiceCorrelationScheme which describes the relationship between this service and the service specified via ServiceName.
  final String scheme;
  /// The Arm Resource ID of the service that the correlation relationship is established with.
  final String serviceName;

  /// Creates a new [ServiceCorrelation].
  /// [scheme] The ServiceCorrelationScheme which describes the relationship between this service and the service specified via ServiceName.
  /// [serviceName] The Arm Resource ID of the service that the correlation relationship is established with.
  ServiceCorrelation({
    required this.scheme,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheme': scheme,
      'serviceName': serviceName,
    };
  }

  factory ServiceCorrelation.fromMap(Map<String, dynamic> map) {
    return ServiceCorrelation(
      scheme: map['scheme'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

