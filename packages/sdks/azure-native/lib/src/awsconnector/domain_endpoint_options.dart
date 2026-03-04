// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tlssecurity_policy_enum_value.dart';

/// Definition of DomainEndpointOptions
class DomainEndpointOptions {
  /// &lt;p&gt;The fully qualified URL for the custom endpoint.&lt;/p&gt;
  final pulumi.Input<String>? customEndpoint;

  /// &lt;p&gt;The ARN for your security certificate, managed in Amazon Web Services Certificate Manager (ACM).&lt;/p&gt;
  final pulumi.Input<String>? customEndpointCertificateArn;

  /// &lt;p&gt;Whether to enable a custom endpoint for the domain.&lt;/p&gt;
  final pulumi.Input<bool>? customEndpointEnabled;

  /// &lt;p&gt;True to require that all traffic to the domain arrive over HTTPS.&lt;/p&gt;
  final pulumi.Input<bool>? enforceHTTPS;

  /// &lt;p&gt;Specify the TLS security policy to apply to the HTTPS endpoint of the domain. The policy can be one of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Policy-Min-TLS-1-0-2019-07:&lt;/b&gt; TLS security policy that supports TLS version 1.0 to TLS version 1.2&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Policy-Min-TLS-1-2-2019-07:&lt;/b&gt; TLS security policy that supports only TLS version 1.2&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Policy-Min-TLS-1-2-PFS-2023-10:&lt;/b&gt; TLS security policy that supports TLS version 1.2 to TLS version 1.3 with perfect forward secrecy cipher suites&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  final pulumi.Input<TLSSecurityPolicyEnumValue>? tlsSecurityPolicy;

  /// Creates a new [DomainEndpointOptions].
  /// [customEndpoint] &lt;p&gt;The fully qualified URL for the custom endpoint.&lt;/p&gt;
  /// [customEndpointCertificateArn] &lt;p&gt;The ARN for your security certificate, managed in Amazon Web Services Certificate Manager (ACM).&lt;/p&gt;
  /// [customEndpointEnabled] &lt;p&gt;Whether to enable a custom endpoint for the domain.&lt;/p&gt;
  /// [enforceHTTPS] &lt;p&gt;True to require that all traffic to the domain arrive over HTTPS.&lt;/p&gt;
  /// [tlsSecurityPolicy] &lt;p&gt;Specify the TLS security policy to apply to the HTTPS endpoint of the domain. The policy can be one of the following values:&lt;/p&gt; &lt;ul&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Policy-Min-TLS-1-0-2019-07:&lt;/b&gt; TLS security policy that supports TLS version 1.0 to TLS version 1.2&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Policy-Min-TLS-1-2-2019-07:&lt;/b&gt; TLS security policy that supports only TLS version 1.2&lt;/p&gt; &lt;/li&gt; &lt;li&gt; &lt;p&gt; &lt;b&gt;Policy-Min-TLS-1-2-PFS-2023-10:&lt;/b&gt; TLS security policy that supports TLS version 1.2 to TLS version 1.3 with perfect forward secrecy cipher suites&lt;/p&gt; &lt;/li&gt; &lt;/ul&gt;
  DomainEndpointOptions({
    this.customEndpoint,
    this.customEndpointCertificateArn,
    this.customEndpointEnabled,
    this.enforceHTTPS,
    this.tlsSecurityPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customEndpoint': ?customEndpoint,
      'customEndpointCertificateArn': ?customEndpointCertificateArn,
      'customEndpointEnabled': ?customEndpointEnabled,
      'enforceHTTPS': ?enforceHTTPS,
      'tlsSecurityPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            TLSSecurityPolicyEnumValue,
            Map<String, dynamic>
          >(tlsSecurityPolicy, (value) => value.toMap()),
    };
  }

  factory DomainEndpointOptions.fromMap(Map<String, dynamic> map) {
    return DomainEndpointOptions(
      customEndpoint: (() {
        final guardedValue = map['customEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customEndpointCertificateArn: (() {
        final guardedValue = map['customEndpointCertificateArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customEndpointEnabled: (() {
        final guardedValue = map['customEndpointEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enforceHTTPS: (() {
        final guardedValue = map['enforceHTTPS'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tlsSecurityPolicy: (() {
        final guardedValue = map['tlsSecurityPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TLSSecurityPolicyEnumValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
