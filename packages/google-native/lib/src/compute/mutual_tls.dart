// ignore_for_file: unused_element, unnecessary_cast

import 'mutual_tls_mode.dart';

/// [Deprecated] Configuration for the mutual Tls mode for peer authentication. Configuration for the mutual Tls mode for peer authentication.
class MutualTls {
  /// Specifies if the server TLS is configured to be strict or permissive. This field can be set to one of the following: STRICT: Client certificate must be presented, connection is in TLS. PERMISSIVE: Client certificate can be omitted, connection can be either plaintext or TLS.
  final MutualTlsMode? mode;

  /// Creates a new [MutualTls].
  /// [mode] Specifies if the server TLS is configured to be strict or permissive. This field can be set to one of the following: STRICT: Client certificate must be presented, connection is in TLS. PERMISSIVE: Client certificate can be omitted, connection can be either plaintext or TLS.
  MutualTls({
    this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode == null ? null : mode!.value,
    };
  }

  factory MutualTls.fromMap(Map<String, dynamic> map) {
    return MutualTls(
      mode: map['mode'] == null ? null : MutualTlsMode.fromValue(map['mode'] as String),
    );
  }
}

