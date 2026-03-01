// ignore_for_file: unused_element, unnecessary_cast

/// Config to block services with externalIPs field.
class ServiceExternalIPsConfigResponseContainerV1beta1 {
  /// Whether Services with ExternalIPs field are allowed or not.
  final bool enabled;

  /// Creates a new [ServiceExternalIPsConfigResponseContainerV1beta1].
  /// [enabled] Whether Services with ExternalIPs field are allowed or not.
  ServiceExternalIPsConfigResponseContainerV1beta1({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ServiceExternalIPsConfigResponseContainerV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceExternalIPsConfigResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
