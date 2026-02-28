// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_config_ca_source.dart';
import 'ssl_config_ssl_mode.dart';

/// SSL configuration.
class SslConfig {
  /// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  final SslConfigCaSource? caSource;

  /// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  final SslConfigSslMode? sslMode;

  /// Creates a new [SslConfig].
  /// [caSource] Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  /// [sslMode] Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  SslConfig({
    this.caSource,
    this.sslMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final caSourceValue = caSource;
    if (caSourceValue != null) {
      map['caSource'] = caSourceValue.value;
    }
    final sslModeValue = sslMode;
    if (sslModeValue != null) {
      map['sslMode'] = sslModeValue.value;
    }
    return map;
  }

  factory SslConfig.fromMap(Map<String, dynamic> map) {
    return SslConfig(
      caSource: map['caSource'] == null
          ? null
          : SslConfigCaSource.fromValue(map['caSource'] as String),
      sslMode: map['sslMode'] == null
          ? null
          : SslConfigSslMode.fromValue(map['sslMode'] as String),
    );
  }
}
