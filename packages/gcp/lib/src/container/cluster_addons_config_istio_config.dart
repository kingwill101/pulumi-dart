// ignore_for_file: unused_element, unnecessary_cast

class ClusterAddonsConfigIstioConfig {
  /// The authentication type between services in Istio. Available options include `AUTH_MUTUAL_TLS`.
  final String? auth;

  /// The status of the Istio addon, which makes it easy to set up Istio for services in a
  /// cluster. It is disabled by default. Set `disabled = false` to enable.
  final bool disabled;

  /// Creates a new [ClusterAddonsConfigIstioConfig].
  /// [auth] The authentication type between services in Istio. Available options include `AUTH_MUTUAL_TLS`.
  /// [disabled] The status of the Istio addon, which makes it easy to set up Istio for services in a
  ClusterAddonsConfigIstioConfig({this.auth, required this.disabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'auth': ?auth, 'disabled': disabled};
  }

  factory ClusterAddonsConfigIstioConfig.fromMap(Map<String, dynamic> map) {
    return ClusterAddonsConfigIstioConfig(
      auth: map['auth'] == null ? null : map['auth'] as String,
      disabled: map['disabled'] as bool,
    );
  }
}
