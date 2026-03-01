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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? apiVersion,
    pulumi.Output<V3CustomDomainAuthConfig>? authConfig,
    pulumi.Output<V3CustomDomainCertConfig>? certConfig,
    pulumi.Output<V3CustomDomainCorsConfig>? corsConfig,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? customDomainName,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<String>? protocol,
    pulumi.Output<V3CustomDomainRouteConfig>? routeConfig,
    pulumi.Output<String>? subdomainCount,
    pulumi.Output<V3CustomDomainTlsConfig>? tlsConfig,
    pulumi.Output<V3CustomDomainWafConfig>? wafConfig,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      authConfig = pulumi.Input.asOptionalInput<V3CustomDomainAuthConfig>(authConfig),
      certConfig = pulumi.Input.asOptionalInput<V3CustomDomainCertConfig>(certConfig),
      corsConfig = pulumi.Input.asOptionalInput<V3CustomDomainCorsConfig>(corsConfig),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      customDomainName = pulumi.Input.asOptionalInput<String>(customDomainName),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      routeConfig = pulumi.Input.asOptionalInput<V3CustomDomainRouteConfig>(routeConfig),
      subdomainCount = pulumi.Input.asOptionalInput<String>(subdomainCount),
      tlsConfig = pulumi.Input.asOptionalInput<V3CustomDomainTlsConfig>(tlsConfig),
      wafConfig = pulumi.Input.asOptionalInput<V3CustomDomainWafConfig>(wafConfig);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      authConfig: map['authConfig'] == null ? null : pulumi.Output.create<V3CustomDomainAuthConfig>(V3CustomDomainAuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>())),
      certConfig: map['certConfig'] == null ? null : pulumi.Output.create<V3CustomDomainCertConfig>(V3CustomDomainCertConfig.fromMap((map['certConfig'] as Map).cast<String, dynamic>())),
      corsConfig: map['corsConfig'] == null ? null : pulumi.Output.create<V3CustomDomainCorsConfig>(V3CustomDomainCorsConfig.fromMap((map['corsConfig'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      customDomainName: map['customDomainName'] == null ? null : pulumi.Output.create<String>(map['customDomainName'] as String),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      routeConfig: map['routeConfig'] == null ? null : pulumi.Output.create<V3CustomDomainRouteConfig>(V3CustomDomainRouteConfig.fromMap((map['routeConfig'] as Map).cast<String, dynamic>())),
      subdomainCount: map['subdomainCount'] == null ? null : pulumi.Output.create<String>(map['subdomainCount'] as String),
      tlsConfig: map['tlsConfig'] == null ? null : pulumi.Output.create<V3CustomDomainTlsConfig>(V3CustomDomainTlsConfig.fromMap((map['tlsConfig'] as Map).cast<String, dynamic>())),
      wafConfig: map['wafConfig'] == null ? null : pulumi.Output.create<V3CustomDomainWafConfig>(V3CustomDomainWafConfig.fromMap((map['wafConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

