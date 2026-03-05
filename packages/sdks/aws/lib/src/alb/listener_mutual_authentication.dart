// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerMutualAuthentication {
  /// Valid values are `off` and `on`.
  final pulumi.Input<String>? advertiseTrustStoreCaNames;
  /// Whether client certificate expiry is ignored.
  /// Default is `false`.
  final pulumi.Input<bool>? ignoreClientCertificateExpiry;
  /// Valid values are `off`, `passthrough`, and `verify`.
  final pulumi.Input<String> mode;
  /// ARN of the elbv2 Trust Store.
  final pulumi.Input<String>? trustStoreArn;

  /// Creates a new [ListenerMutualAuthentication].
  /// [advertiseTrustStoreCaNames] Valid values are `off` and `on`.
  /// [ignoreClientCertificateExpiry] Whether client certificate expiry is ignored.
  /// [mode] Valid values are `off`, `passthrough`, and `verify`.
  /// [trustStoreArn] ARN of the elbv2 Trust Store.
  ListenerMutualAuthentication({
    this.advertiseTrustStoreCaNames,
    this.ignoreClientCertificateExpiry,
    required this.mode,
    this.trustStoreArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseTrustStoreCaNames': ?advertiseTrustStoreCaNames,
      'ignoreClientCertificateExpiry': ?ignoreClientCertificateExpiry,
      'mode': mode,
      'trustStoreArn': ?trustStoreArn,
    };
  }

  factory ListenerMutualAuthentication.fromMap(Map<String, dynamic> map) {
    return ListenerMutualAuthentication(
      advertiseTrustStoreCaNames: (() { final guardedValue = map['advertiseTrustStoreCaNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreClientCertificateExpiry: (() { final guardedValue = map['ignoreClientCertificateExpiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      trustStoreArn: (() { final guardedValue = map['trustStoreArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

