// ignore_for_file: unused_element, unnecessary_cast

/// Config to block services with externalIPs field.
class ServiceExternalIPsConfigContainerV1beta1 {
  /// Whether Services with ExternalIPs field are allowed or not.
  final bool? enabled;

  ServiceExternalIPsConfigContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory ServiceExternalIPsConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ServiceExternalIPsConfigContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
