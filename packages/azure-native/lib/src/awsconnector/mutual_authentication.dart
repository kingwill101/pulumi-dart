// ignore_for_file: unused_element, unnecessary_cast


/// Definition of MutualAuthentication
class MutualAuthentication {
  /// Indicates whether expired client certificates are ignored.
  final bool? ignoreClientCertificateExpiry;
  /// The client certificate handling method. Options are ``off``, ``passthrough`` or ``verify``. The default value is ``off``.
  final String? mode;
  /// The Amazon Resource Name (ARN) of the trust store.
  final String? trustStoreArn;

  /// Creates a new [MutualAuthentication].
  /// [ignoreClientCertificateExpiry] Indicates whether expired client certificates are ignored.
  /// [mode] The client certificate handling method. Options are ``off``, ``passthrough`` or ``verify``. The default value is ``off``.
  /// [trustStoreArn] The Amazon Resource Name (ARN) of the trust store.
  MutualAuthentication({
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

  factory MutualAuthentication.fromMap(Map<String, dynamic> map) {
    return MutualAuthentication(
      ignoreClientCertificateExpiry: map['ignoreClientCertificateExpiry'] == null ? null : map['ignoreClientCertificateExpiry'] as bool,
      mode: map['mode'] == null ? null : map['mode'] as String,
      trustStoreArn: map['trustStoreArn'] == null ? null : map['trustStoreArn'] as String,
    );
  }
}

