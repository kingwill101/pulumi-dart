// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Customized cipher suite set object that will be used for Https when cipherSuiteSetType is Customized.
class AFDDomainHttpsCustomizedCipherSuiteSetResponse {
  /// Cipher suites for TLS 1.2. Required at least one in minimumTlsVersion TLS 1.2.
  final pulumi.Input<List<String>>? cipherSuiteSetForTls12;

  /// Cipher suites for TLS 1.3. Required at least one in minimumTlsVersion TLS 1.2, TLS 1.3.
  final pulumi.Input<List<String>>? cipherSuiteSetForTls13;

  /// Creates a new [AFDDomainHttpsCustomizedCipherSuiteSetResponse].
  /// [cipherSuiteSetForTls12] Cipher suites for TLS 1.2. Required at least one in minimumTlsVersion TLS 1.2.
  /// [cipherSuiteSetForTls13] Cipher suites for TLS 1.3. Required at least one in minimumTlsVersion TLS 1.2, TLS 1.3.
  AFDDomainHttpsCustomizedCipherSuiteSetResponse({
    this.cipherSuiteSetForTls12,
    this.cipherSuiteSetForTls13,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipherSuiteSetForTls12': ?cipherSuiteSetForTls12,
      'cipherSuiteSetForTls13': ?cipherSuiteSetForTls13,
    };
  }

  factory AFDDomainHttpsCustomizedCipherSuiteSetResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AFDDomainHttpsCustomizedCipherSuiteSetResponse(
      cipherSuiteSetForTls12: (() {
        final guardedValue = map['cipherSuiteSetForTls12'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      cipherSuiteSetForTls13: (() {
        final guardedValue = map['cipherSuiteSetForTls13'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
