// ignore_for_file: unused_element, unnecessary_cast

/// Config to block services with externalIPs field.
class ServiceExternalIPsConfigResponse {
  /// Whether Services with ExternalIPs field are allowed or not.
  final bool enabled;

  ServiceExternalIPsConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ServiceExternalIPsConfigResponse.fromMap(Map<String, dynamic> map) {
    return ServiceExternalIPsConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
