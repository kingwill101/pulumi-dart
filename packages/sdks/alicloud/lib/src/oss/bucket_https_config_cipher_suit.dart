// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketHttpsConfigCipherSuit {
  /// This field is used to configure custom encryption algorithm suites for TLS 1.2.
  final pulumi.Input<List<String>>? customCipherSuites;
  /// Configures TLS encryption algorithm suites. Valid values:
  /// true: strong encryption algorithm suites or custom encryption algorithm suites.
  /// false: all encryption algorithm suites (default).
  final pulumi.Input<bool>? enable;
  /// Specifies whether to use strong encryption algorithm suites. Valid values:
  /// true: uses strong encryption algorithm suites.
  /// false: uses custom encryption algorithm suites.
  final pulumi.Input<bool>? strongCipherSuite;
  /// Specifies custom encryption algorithm suites. You can specify multiple suites. This field is used to configure custom encryption algorithm suites for TLS 1.3.
  final pulumi.Input<List<String>>? tls13CustomCipherSuites;

  /// Creates a new [BucketHttpsConfigCipherSuit].
  /// [customCipherSuites] This field is used to configure custom encryption algorithm suites for TLS 1.2.
  /// [enable] Configures TLS encryption algorithm suites. Valid values:
  /// [strongCipherSuite] Specifies whether to use strong encryption algorithm suites. Valid values:
  /// [tls13CustomCipherSuites] Specifies custom encryption algorithm suites. You can specify multiple suites. This field is used to configure custom encryption algorithm suites for TLS 1.3.
  const BucketHttpsConfigCipherSuit({
    this.customCipherSuites,
    this.enable,
    this.strongCipherSuite,
    this.tls13CustomCipherSuites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customCipherSuites': ?customCipherSuites,
      'enable': ?enable,
      'strongCipherSuite': ?strongCipherSuite,
      'tls13CustomCipherSuites': ?tls13CustomCipherSuites,
    };
  }

  factory BucketHttpsConfigCipherSuit.fromMap(Map<String, dynamic> map) {
    return BucketHttpsConfigCipherSuit(
      customCipherSuites: (() { final guardedValue = map['customCipherSuites']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      strongCipherSuite: (() { final guardedValue = map['strongCipherSuite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tls13CustomCipherSuites: (() { final guardedValue = map['tls13CustomCipherSuites']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

