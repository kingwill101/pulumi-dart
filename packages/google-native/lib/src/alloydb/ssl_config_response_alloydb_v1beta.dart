// ignore_for_file: unused_element, unnecessary_cast

/// SSL configuration.
class SslConfigResponseAlloydbV1beta {
  /// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  final String caSource;

  /// Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  final String sslMode;

  /// Creates a new [SslConfigResponseAlloydbV1beta].
  /// [caSource] Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
  /// [sslMode] Optional. SSL mode. Specifies client-server SSL/TLS connection behavior.
  SslConfigResponseAlloydbV1beta({
    required this.caSource,
    required this.sslMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'caSource': caSource, 'sslMode': sslMode};
  }

  factory SslConfigResponseAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return SslConfigResponseAlloydbV1beta(
      caSource: map['caSource'] as String,
      sslMode: map['sslMode'] as String,
    );
  }
}
