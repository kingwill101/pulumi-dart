// ignore_for_file: unused_element, unnecessary_cast


/// Resource provider service.
class ResourceProviderServiceResponse {
  /// The service name.
  final String? serviceName;
  /// The status.
  final String? status;

  /// Creates a new [ResourceProviderServiceResponse].
  /// [serviceName] The service name.
  /// [status] The status.
  ResourceProviderServiceResponse({
    this.serviceName,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceName': ?serviceName,
      'status': ?status,
    };
  }

  factory ResourceProviderServiceResponse.fromMap(Map<String, dynamic> map) {
    return ResourceProviderServiceResponse(
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

