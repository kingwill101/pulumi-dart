// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of MutualAuthentication
class MutualAuthenticationResponse {
  /// Indicates whether expired client certificates are ignored.
  final pulumi.Input<bool?>? ignoreClientCertificateExpiry;
  /// The client certificate handling method. Options are ``off``, ``passthrough`` or ``verify``. The default value is ``off``.
  final pulumi.Input<String?>? mode;
  /// The Amazon Resource Name (ARN) of the trust store.
  final pulumi.Input<String?>? trustStoreArn;

  /// Creates a new [MutualAuthenticationResponse].
  /// [ignoreClientCertificateExpiry] Indicates whether expired client certificates are ignored.
  /// [mode] The client certificate handling method. Options are ``off``, ``passthrough`` or ``verify``. The default value is ``off``.
  /// [trustStoreArn] The Amazon Resource Name (ARN) of the trust store.
  const MutualAuthenticationResponse({
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
      ignoreClientCertificateExpiry: (() { final guardedValue = map['ignoreClientCertificateExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStoreArn: (() { final guardedValue = map['trustStoreArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
