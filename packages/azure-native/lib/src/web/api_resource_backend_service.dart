// ignore_for_file: unused_element, unnecessary_cast


/// The API backend service
class ApiResourceBackendService {
  /// The service URL
  final String? serviceUrl;

  /// Creates a new [ApiResourceBackendService].
  /// [serviceUrl] The service URL
  ApiResourceBackendService({
    this.serviceUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceUrl': ?serviceUrl,
    };
  }

  factory ApiResourceBackendService.fromMap(Map<String, dynamic> map) {
    return ApiResourceBackendService(
      serviceUrl: map['serviceUrl'] == null ? null : map['serviceUrl'] as String,
    );
  }
}

