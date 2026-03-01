// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MutualAuthentication
class MutualAuthenticationResponse {
  /// Indicates whether expired client certificates are ignored.
  final bool? ignoreClientCertificateExpiry;
  /// The client certificate handling method. Options are ``off``, ``passthrough`` or ``verify``. The default value is ``off``.
  final String? mode;
  /// The Amazon Resource Name (ARN) of the trust store.
  final String? trustStoreArn;

  /// Creates a new [MutualAuthenticationResponse].
  /// [ignoreClientCertificateExpiry] Indicates whether expired client certificates are ignored.
  /// [mode] The client certificate handling method. Options are ``off``, ``passthrough`` or ``verify``. The default value is ``off``.
  /// [trustStoreArn] The Amazon Resource Name (ARN) of the trust store.
  MutualAuthenticationResponse({
    this.ignoreClientCertificateExpiry,
    this.mode,
    this.trustStoreArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ignoreClientCertificateExpiry': ?ignoreClientCertificateExpiry,
      'mode': ?mode,
      'trustStoreArn': ?trustStoreArn,
    };
  }

  factory MutualAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return MutualAuthenticationResponse(
      ignoreClientCertificateExpiry: map['ignoreClientCertificateExpiry'] == null ? null : map['ignoreClientCertificateExpiry'] as bool,
      mode: map['mode'] == null ? null : map['mode'] as String,
      trustStoreArn: map['trustStoreArn'] == null ? null : map['trustStoreArn'] as String,
    );
  }
}

