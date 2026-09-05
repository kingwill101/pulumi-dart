// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainEndpointOptions {
  /// Enables or disables the requirement that all requests to the domain arrive over HTTPS.
  final pulumi.Input<bool?>? enforceHttps;
  /// The minimum required TLS version. See the [AWS documentation](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/API_DomainEndpointOptions.html) for valid values.
  final pulumi.Input<String?>? tlsSecurityPolicy;

  /// Creates a new [DomainEndpointOptions].
  /// [enforceHttps] Enables or disables the requirement that all requests to the domain arrive over HTTPS.
  /// [tlsSecurityPolicy] The minimum required TLS version. See the [AWS documentation](https://docs.aws.amazon.com/cloudsearch/latest/developerguide/API_DomainEndpointOptions.html) for valid values.
  const DomainEndpointOptions({
    this.enforceHttps,
    this.tlsSecurityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforceHttps': ?enforceHttps,
      'tlsSecurityPolicy': ?tlsSecurityPolicy,
    };
  }

  factory DomainEndpointOptions.fromMap(Map<String, dynamic> map) {
    return DomainEndpointOptions(
      enforceHttps: (() { final guardedValue = map['enforceHttps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tlsSecurityPolicy: (() { final guardedValue = map['tlsSecurityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
