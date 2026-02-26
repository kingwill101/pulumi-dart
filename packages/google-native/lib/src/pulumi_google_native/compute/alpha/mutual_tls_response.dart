// ignore_for_file: unused_element, unnecessary_cast

/// [Deprecated] Configuration for the mutual Tls mode for peer authentication. Configuration for the mutual Tls mode for peer authentication.
class MutualTlsResponse {
  /// Specifies if the server TLS is configured to be strict or permissive. This field can be set to one of the following: STRICT: Client certificate must be presented, connection is in TLS. PERMISSIVE: Client certificate can be omitted, connection can be either plaintext or TLS.
  final String mode;

  MutualTlsResponse({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    return map;
  }

  factory MutualTlsResponse.fromMap(Map<String, dynamic> map) {
    return MutualTlsResponse(
      mode: map['mode'] as String,
    );
  }
}
