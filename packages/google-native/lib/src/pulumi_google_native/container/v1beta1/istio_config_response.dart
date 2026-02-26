// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for Istio addon.
class IstioConfigResponse {
  /// The specified Istio auth mode, either none, or mutual TLS.
  final String auth;

  /// Whether Istio is enabled for this cluster.
  final bool disabled;

  IstioConfigResponse({
    required this.auth,
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['auth'] = auth;
    map['disabled'] = disabled;
    return map;
  }

  factory IstioConfigResponse.fromMap(Map<String, dynamic> map) {
    return IstioConfigResponse(
      auth: map['auth'] as String,
      disabled: map['disabled'] as bool,
    );
  }
}
