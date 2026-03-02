// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_custom_domain_auth_config.dart';
import 'v3_custom_domain_cert_config.dart';
import 'v3_custom_domain_cors_config.dart';
import 'v3_custom_domain_route_config.dart';
import 'v3_custom_domain_tls_config.dart';
import 'v3_custom_domain_waf_config.dart';

/// Input properties used for looking up and filtering V3CustomDomain resources.
class V3CustomDomainState {
  /// The ID of your Alibaba Cloud account (primary account).
  final pulumi.Input<String>? accountId;
  /// API version of Function Compute.
  final pulumi.Input<String>? apiVersion;
  /// Permission authentication configuration See `auth_config` below.
  final pulumi.Input<V3CustomDomainAuthConfig>? authConfig;
  /// HTTPS certificate information See `cert_config` below.
  final pulumi.Input<V3CustomDomainCertConfig>? certConfig;
  /// Cross-Origin Resource Sharing (CORS) configuration, used to control which origins can access resources under the custom domain. See `cors_config` below.
  final pulumi.Input<V3CustomDomainCorsConfig>? corsConfig;
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;
  /// The name of the resource
  final pulumi.Input<String>? customDomainName;
  /// The last time the custom domain name was Updated.
  final pulumi.Input<String>? lastModifiedTime;
  /// The protocol type supported by the domain name. HTTP: only HTTP protocol is supported. HTTPS: only HTTPS is supported. HTTP,HTTPS: Supports HTTP and HTTPS protocols.
  final pulumi.Input<String>? protocol;
  /// Route matching rule configuration See `route_config` below.
  final pulumi.Input<V3CustomDomainRouteConfig>? routeConfig;
  /// Number of subdomains.
  final pulumi.Input<String>? subdomainCount;
  /// TLS configuration information See `tls_config` below.
  final pulumi.Input<V3CustomDomainTlsConfig>? tlsConfig;
  /// Web application firewall configuration information See `waf_config` below.
  final pulumi.Input<V3CustomDomainWafConfig>? wafConfig;

  /// Creates a new [V3CustomDomainState].
  /// [accountId] The ID of your Alibaba Cloud account (primary account).
  /// [apiVersion] API version of Function Compute.
  /// [authConfig] Permission authentication configuration See `auth_config` below.
  /// [certConfig] HTTPS certificate information See `cert_config` below.
  /// [corsConfig] Cross-Origin Resource Sharing (CORS) configuration, used to control which origins can access resources under the custom domain. See `cors_config` below.
  /// [createTime] The creation time of the resource.
  /// [customDomainName] The name of the resource
  /// [lastModifiedTime] The last time the custom domain name was Updated.
  /// [protocol] The protocol type supported by the domain name. HTTP: only HTTP protocol is supported. HTTPS: only HTTPS is supported. HTTP,HTTPS: Supports HTTP and HTTPS protocols.
  /// [routeConfig] Route matching rule configuration See `route_config` below.
  /// [subdomainCount] Number of subdomains.
  /// [tlsConfig] TLS configuration information See `tls_config` below.
  /// [wafConfig] Web application firewall configuration information See `waf_config` below.
  V3CustomDomainState({
    this.accountId,
    this.apiVersion,
    this.authConfig,
    this.certConfig,
    this.corsConfig,
    this.createTime,
    this.customDomainName,
    this.lastModifiedTime,
    this.protocol,
    this.routeConfig,
    this.subdomainCount,
    this.tlsConfig,
    this.wafConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'apiVersion': ?apiVersion,
      'authConfig': ?pulumi.Input.mapOptionalInputValue<V3CustomDomainAuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'certConfig': ?pulumi.Input.mapOptionalInputValue<V3CustomDomainCertConfig, Map<String, dynamic>>(certConfig, (value) => value.toMap()),
      'corsConfig': ?pulumi.Input.mapOptionalInputValue<V3CustomDomainCorsConfig, Map<String, dynamic>>(corsConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'customDomainName': ?customDomainName,
      'lastModifiedTime': ?lastModifiedTime,
      'protocol': ?protocol,
      'routeConfig': ?pulumi.Input.mapOptionalInputValue<V3CustomDomainRouteConfig, Map<String, dynamic>>(routeConfig, (value) => value.toMap()),
      'subdomainCount': ?subdomainCount,
      'tlsConfig': ?pulumi.Input.mapOptionalInputValue<V3CustomDomainTlsConfig, Map<String, dynamic>>(tlsConfig, (value) => value.toMap()),
      'wafConfig': ?pulumi.Input.mapOptionalInputValue<V3CustomDomainWafConfig, Map<String, dynamic>>(wafConfig, (value) => value.toMap()),
    };
  }

  factory V3CustomDomainState.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainState(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      authConfig: map['authConfig'] == null ? null : (V3CustomDomainAuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>())).input(),
      certConfig: map['certConfig'] == null ? null : (V3CustomDomainCertConfig.fromMap((map['certConfig'] as Map).cast<String, dynamic>())).input(),
      corsConfig: map['corsConfig'] == null ? null : (V3CustomDomainCorsConfig.fromMap((map['corsConfig'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      customDomainName: map['customDomainName'] == null ? null : (map['customDomainName'] as String).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      routeConfig: map['routeConfig'] == null ? null : (V3CustomDomainRouteConfig.fromMap((map['routeConfig'] as Map).cast<String, dynamic>())).input(),
      subdomainCount: map['subdomainCount'] == null ? null : (map['subdomainCount'] as String).input(),
      tlsConfig: map['tlsConfig'] == null ? null : (V3CustomDomainTlsConfig.fromMap((map['tlsConfig'] as Map).cast<String, dynamic>())).input(),
      wafConfig: map['wafConfig'] == null ? null : (V3CustomDomainWafConfig.fromMap((map['wafConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

