// ignore_for_file: unused_element, unnecessary_cast


/// Control Plane Apis version constraint for the API Management service.
class ApiVersionConstraintResponse {
  /// Limit control plane API calls to API Management service with version equal to or newer than this value.
  final String? minApiVersion;

  /// Creates a new [ApiVersionConstraintResponse].
  /// [minApiVersion] Limit control plane API calls to API Management service with version equal to or newer than this value.
  ApiVersionConstraintResponse({
    this.minApiVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minApiVersion': ?minApiVersion,
    };
  }

  factory ApiVersionConstraintResponse.fromMap(Map<String, dynamic> map) {
    return ApiVersionConstraintResponse(
      minApiVersion: map['minApiVersion'] == null ? null : map['minApiVersion'] as String,
    );
  }
}

