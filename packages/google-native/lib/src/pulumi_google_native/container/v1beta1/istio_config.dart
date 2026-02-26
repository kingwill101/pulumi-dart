// ignore_for_file: unused_element, unnecessary_cast

import 'istio_config_auth.dart';

/// Configuration options for Istio addon.
class IstioConfig {
  /// The specified Istio auth mode, either none, or mutual TLS.
  final IstioConfigAuth? auth;

  /// Whether Istio is enabled for this cluster.
  final bool? disabled;

  IstioConfig({
    this.auth,
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authValue = auth;
    if (authValue != null) {
      map['auth'] = authValue.value;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    return map;
  }

  factory IstioConfig.fromMap(Map<String, dynamic> map) {
    return IstioConfig(
      auth: map['auth'] == null
          ? null
          : IstioConfigAuth.fromValue(map['auth'] as String),
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}
