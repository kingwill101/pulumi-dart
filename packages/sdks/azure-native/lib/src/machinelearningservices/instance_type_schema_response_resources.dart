// ignore_for_file: unused_element, unnecessary_cast


/// Resource requests/limits for this instance type
class InstanceTypeSchemaResponseResources {
  /// Resource limits for this instance type
  final Map<String, String>? limits;
  /// Resource requests for this instance type
  final Map<String, String>? requests;

  /// Creates a new [InstanceTypeSchemaResponseResources].
  /// [limits] Resource limits for this instance type
  /// [requests] Resource requests for this instance type
  InstanceTypeSchemaResponseResources({
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?limits,
      'requests': ?requests,
    };
  }

  factory InstanceTypeSchemaResponseResources.fromMap(Map<String, dynamic> map) {
    return InstanceTypeSchemaResponseResources(
      limits: map['limits'] == null ? null : (map['limits'] as Map).cast<String, String>(),
      requests: map['requests'] == null ? null : (map['requests'] as Map).cast<String, String>(),
    );
  }
}

