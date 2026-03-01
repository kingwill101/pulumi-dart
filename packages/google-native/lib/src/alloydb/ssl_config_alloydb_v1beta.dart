// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_config_ca_source_alloydb_v1beta.dart';
import 'ssl_config_ssl_mode_alloydb_v1beta.dart';

/// SSL configuration.
class SslConfigAlloydbV1beta {
  /// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  final SslConfigCaSourceAlloydbV1beta? caSource;

  /// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  final SslConfigSslModeAlloydbV1beta? sslMode;

  /// Creates a new [SslConfigAlloydbV1beta].
  /// [caSource] Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  /// [sslMode] Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  SslConfigAlloydbV1beta({this.caSource, this.sslMode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caSource': ?caSource == null ? null : caSource!.value,
      'sslMode': ?sslMode == null ? null : sslMode!.value,
    };
  }

  factory SslConfigAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return SslConfigAlloydbV1beta(
      caSource: map['caSource'] == null
          ? null
          : SslConfigCaSourceAlloydbV1beta.fromValue(map['caSource'] as String),
      sslMode: map['sslMode'] == null
          ? null
          : SslConfigSslModeAlloydbV1beta.fromValue(map['sslMode'] as String),
    );
  }
}
