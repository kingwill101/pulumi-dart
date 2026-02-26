// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_config_ca_source3.dart';
import 'ssl_config_ssl_mode3.dart';

/// SSL configuration.
class SslConfig3 {
  /// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  final SslConfigCaSource3? caSource;

  /// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  final SslConfigSslMode3? sslMode;

  SslConfig3({
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

  factory SslConfig3.fromMap(Map<String, dynamic> map) {
    return SslConfig3(
      caSource: map['caSource'] == null
          ? null
          : SslConfigCaSource3.fromValue(map['caSource'] as String),
      sslMode: map['sslMode'] == null
          ? null
          : SslConfigSslMode3.fromValue(map['sslMode'] as String),
    );
  }
}
