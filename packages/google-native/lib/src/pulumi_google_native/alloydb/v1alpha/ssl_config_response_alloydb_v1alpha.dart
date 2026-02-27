// ignore_for_file: unused_element, unnecessary_cast

/// SSL configuration.
class SslConfigResponseAlloydbV1alpha {
  /// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  final String caSource;

  /// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  final String sslMode;

  SslConfigResponseAlloydbV1alpha({
    required this.caSource,
    required this.sslMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['caSource'] = caSource;
    map['sslMode'] = sslMode;
    return map;
  }

  factory SslConfigResponseAlloydbV1alpha.fromMap(Map<String, dynamic> map) {
    return SslConfigResponseAlloydbV1alpha(
      caSource: map['caSource'] as String,
      sslMode: map['sslMode'] as String,
    );
  }
}
