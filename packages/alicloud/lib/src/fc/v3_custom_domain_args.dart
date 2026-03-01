// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_custom_domain_auth_config.dart';
import 'v3_custom_domain_cert_config.dart';
import 'v3_custom_domain_cors_config.dart';
import 'v3_custom_domain_route_config.dart';
import 'v3_custom_domain_tls_config.dart';
import 'v3_custom_domain_waf_config.dart';

/// {@template pulumi_fc_v3_custom_domain_v3_custom_domain_args_doc}
/// The set of arguments for V3CustomDomain.
/// {@endtemplate}
/// {@macro pulumi_fc_v3_custom_domain_v3_custom_domain_args_doc}
class V3CustomDomainArgs {
  /// Permission authentication configuration See `auth_config` below.
  final pulumi.Input<V3CustomDomainAuthConfig>? authConfig;
  /// HTTPS certificate information See `cert_config` below.
  final pulumi.Input<V3CustomDomainCertConfig>? certConfig;
  /// Cross-Origin Resource Sharing (CORS) configuration, used to control which origins can access resources under the custom domain. See `cors_config` below.
  final pulumi.Input<V3CustomDomainCorsConfig>? corsConfig;
  /// The name of the resource
  final pulumi.Input<String>? customDomainName;
  /// The protocol type supported by the domain name. HTTP: only HTTP protocol is supported. HTTPS: only HTTPS is supported. HTTP,HTTPS: Supports HTTP and HTTPS protocols.
  final pulumi.Input<String>? protocol;
  /// Route matching rule configuration See `route_config` below.
  final pulumi.Input<V3CustomDomainRouteConfig>? routeConfig;
  /// TLS configuration information See `tls_config` below.
  final pulumi.Input<V3CustomDomainTlsConfig>? tlsConfig;
  /// Web application firewall configuration information See `waf_config` below.
  final pulumi.Input<V3CustomDomainWafConfig>? wafConfig;

  /// Creates a new [V3CustomDomainArgs].
  /// [authConfig] Permission authentication configuration See `auth_config` below.
  /// [certConfig] HTTPS certificate information See `cert_config` below.
  /// [corsConfig] Cross-Origin Resource Sharing (CORS) configuration, used to control which origins can access resources under the custom domain. See `cors_config` below.
  /// [customDomainName] The name of the resource
  /// [protocol] The protocol type supported by the domain name. HTTP: only HTTP protocol is supported. HTTPS: only HTTPS is supported. HTTP,HTTPS: Supports HTTP and HTTPS protocols.
  /// [routeConfig] Route matching rule configuration See `route_config` below.
  /// [tlsConfig] TLS configuration information See `tls_config` below.
  /// [wafConfig] Web application firewall configuration information See `waf_config` below.
  V3CustomDomainArgs({
    V3CustomDomainAuthConfig? authConfig,
    V3CustomDomainCertConfig? certConfig,
    V3CustomDomainCorsConfig? corsConfig,
    String? customDomainName,
    String? protocol,
    V3CustomDomainRouteConfig? routeConfig,
    V3CustomDomainTlsConfig? tlsConfig,
    V3CustomDomainWafConfig? wafConfig,
  }) :
      authConfig = pulumi.Input.asOptionalInput<V3CustomDomainAuthConfig>(authConfig),
      certConfig = pulumi.Input.asOptionalInput<V3CustomDomainCertConfig>(certConfig),
      corsConfig = pulumi.Input.asOptionalInput<V3CustomDomainCorsConfig>(corsConfig),
      customDomainName = pulumi.Input.asOptionalInput<String>(customDomainName),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      routeConfig = pulumi.Input.asOptionalInput<V3CustomDomainRouteConfig>(routeConfig),
      tlsConfig = pulumi.Input.asOptionalInput<V3CustomDomainTlsConfig>(tlsConfig),
      wafConfig = pulumi.Input.asOptionalInput<V3CustomDomainWafConfig>(wafConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfig': ?pulumi.Input.mapOptionalInputValue<V3CustomDomainAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'certConfig': ?pulumi.Input.mapOptionalInputValue<V3CustomDomainCertConfig, Map<String, dynamic>>(certConfig, (value) => value.toMap()),
      'corsConfig': ?pulumi.Input.mapOptionalInputValue<V3CustomDomainCorsConfig, Map<String, dynamic>>(corsConfig, (value) => value.toMap()),
      'customDomainName': ?customDomainName,
      'protocol': ?protocol,
      'routeConfig': ?pulumi.Input.mapOptionalInputValue<V3CustomDomainRouteConfig, Map<String, dynamic>>(routeConfig, (value) => value.toMap()),
      'tlsConfig': ?pulumi.Input.mapOptionalInputValue<V3CustomDomainTlsConfig, Map<String, dynamic>>(tlsConfig, (value) => value.toMap()),
      'wafConfig': ?pulumi.Input.mapOptionalInputValue<V3CustomDomainWafConfig, Map<String, dynamic>>(wafConfig, (value) => value.toMap()),
    };
  }

  factory V3CustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainArgs(
      authConfig: map['authConfig'] == null ? null : V3CustomDomainAuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>()),
      certConfig: map['certConfig'] == null ? null : V3CustomDomainCertConfig.fromMap((map['certConfig'] as Map).cast<String, dynamic>()),
      corsConfig: map['corsConfig'] == null ? null : V3CustomDomainCorsConfig.fromMap((map['corsConfig'] as Map).cast<String, dynamic>()),
      customDomainName: map['customDomainName'] == null ? null : map['customDomainName'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      routeConfig: map['routeConfig'] == null ? null : V3CustomDomainRouteConfig.fromMap((map['routeConfig'] as Map).cast<String, dynamic>()),
      tlsConfig: map['tlsConfig'] == null ? null : V3CustomDomainTlsConfig.fromMap((map['tlsConfig'] as Map).cast<String, dynamic>()),
      wafConfig: map['wafConfig'] == null ? null : V3CustomDomainWafConfig.fromMap((map['wafConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

