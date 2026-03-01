// ignore_for_file: unused_element, unnecessary_cast


/// Describes the status and behavior of a service.
class ServiceStatusResponse {
  /// The behavior of the service when the Arc-enabled machine starts up.
  final String? startupType;
  /// The current status of the service.
  final String? status;

  /// Creates a new [ServiceStatusResponse].
  /// [startupType] The behavior of the service when the Arc-enabled machine starts up.
  /// [status] The current status of the service.
  ServiceStatusResponse({
    this.startupType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startupType': ?startupType,
      'status': ?status,
    };
  }

  factory ServiceStatusResponse.fromMap(Map<String, dynamic> map) {
    return ServiceStatusResponse(
      startupType: map['startupType'] == null ? null : map['startupType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

