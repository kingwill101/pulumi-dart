// ignore_for_file: unused_element, unnecessary_cast

class GetClusterAddonsConfigIstioConfig {
  /// The authentication type between services in Istio. Available options include AUTH_MUTUAL_TLS.
  final String auth;

  /// The status of the Istio addon, which makes it easy to set up Istio for services in a cluster. It is disabled by default. Set disabled = false to enable.
  final bool disabled;

  /// Creates a new [GetClusterAddonsConfigIstioConfig].
  /// [auth] The authentication type between services in Istio. Available options include AUTH_MUTUAL_TLS.
  /// [disabled] The status of the Istio addon, which makes it easy to set up Istio for services in a cluster. It is disabled by default. Set disabled = false to enable.
  GetClusterAddonsConfigIstioConfig({
    required this.auth,
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auth'] = auth;
    map['disabled'] = disabled;
    return map;
  }

  factory GetClusterAddonsConfigIstioConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfigIstioConfig(
      auth: map['auth'] as String,
      disabled: map['disabled'] as bool,
    );
  }
}
