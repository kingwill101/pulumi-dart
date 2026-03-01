// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for Istio addon.
class IstioConfigResponse {
  /// The specified Istio auth mode, either none, or mutual TLS.
  final String auth;

  /// Whether Istio is enabled for this cluster.
  final bool disabled;

  /// Creates a new [IstioConfigResponse].
  /// [auth] The specified Istio auth mode, either none, or mutual TLS.
  /// [disabled] Whether Istio is enabled for this cluster.
  IstioConfigResponse({required this.auth, required this.disabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'auth': auth, 'disabled': disabled};
  }

  factory IstioConfigResponse.fromMap(Map<String, dynamic> map) {
    return IstioConfigResponse(
      auth: map['auth'] as String,
      disabled: map['disabled'] as bool,
    );
  }
}
