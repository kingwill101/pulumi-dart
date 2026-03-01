// ignore_for_file: unused_element, unnecessary_cast

import 'istio_config_auth.dart';

/// Configuration options for Istio addon.
class IstioConfig {
  /// The specified Istio auth mode, either none, or mutual TLS.
  final IstioConfigAuth? auth;

  /// Whether Istio is enabled for this cluster.
  final bool? disabled;

  /// Creates a new [IstioConfig].
  /// [auth] The specified Istio auth mode, either none, or mutual TLS.
  /// [disabled] Whether Istio is enabled for this cluster.
  IstioConfig({this.auth, this.disabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?auth == null ? null : auth!.value,
      'disabled': ?disabled,
    };
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
