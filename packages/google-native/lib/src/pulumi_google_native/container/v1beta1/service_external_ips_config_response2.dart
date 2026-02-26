// ignore_for_file: unused_element, unnecessary_cast

/// Config to block services with externalIPs field.
class ServiceExternalIPsConfigResponse2 {
  /// Whether Services with ExternalIPs field are allowed or not.
  final bool enabled;

  ServiceExternalIPsConfigResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ServiceExternalIPsConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ServiceExternalIPsConfigResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
