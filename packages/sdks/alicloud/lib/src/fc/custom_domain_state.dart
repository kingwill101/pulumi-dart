// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_cert_config.dart';
import 'custom_domain_route_config.dart';

/// Input properties used for looking up and filtering CustomDomain resources.
class CustomDomainState {
  /// The account id.
  final pulumi.Input<String>? accountId;
  /// The api version of Function Compute.
  final pulumi.Input<String>? apiVersion;
  /// The configuration of HTTPS certificate.See `cert_config` below.
  final pulumi.Input<CustomDomainCertConfig>? certConfig;
  /// The date this resource was created.
  final pulumi.Input<String>? createdTime;
  /// The custom domain name. For example, "example.com".
  final pulumi.Input<String>? domainName;
  /// The date this resource was last modified.
  final pulumi.Input<String>? lastModifiedTime;
  /// The protocol, `HTTP` or `HTTP,HTTPS`.
  final pulumi.Input<String>? protocol;
  /// The configuration of domain route, mapping the path and Function Compute function.See `route_config` below.
  final pulumi.Input<List<CustomDomainRouteConfig>>? routeConfigs;

  /// Creates a new [CustomDomainState].
  /// [accountId] The account id.
  /// [apiVersion] The api version of Function Compute.
  /// [certConfig] The configuration of HTTPS certificate.See `cert_config` below.
  /// [createdTime] The date this resource was created.
  /// [domainName] The custom domain name. For example, "example.com".
  /// [lastModifiedTime] The date this resource was last modified.
  /// [protocol] The protocol, `HTTP` or `HTTP,HTTPS`.
  /// [routeConfigs] The configuration of domain route, mapping the path and Function Compute function.See `route_config` below.
  CustomDomainState({
    this.accountId,
    this.apiVersion,
    this.certConfig,
    this.createdTime,
    this.domainName,
    this.lastModifiedTime,
    this.protocol,
    this.routeConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'apiVersion': ?apiVersion,
      'certConfig': ?pulumi.Input.mapOptionalInputValue<CustomDomainCertConfig, Map<String, dynamic>>(certConfig, (value) => value.toMap()),
      'createdTime': ?createdTime,
      'domainName': ?domainName,
      'lastModifiedTime': ?lastModifiedTime,
      'protocol': ?protocol,
      'routeConfigs': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainRouteConfig>, List<Map<String, dynamic>>>(routeConfigs, (value) => pulumi.Input.encodeList<CustomDomainRouteConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomDomainState.fromMap(Map<String, dynamic> map) {
    return CustomDomainState(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      certConfig: map['certConfig'] == null ? null : (CustomDomainCertConfig.fromMap((map['certConfig'] as Map).cast<String, dynamic>())).input(),
      createdTime: map['createdTime'] == null ? null : (map['createdTime'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      routeConfigs: map['routeConfigs'] == null ? null : (pulumi.Input.decodeList<CustomDomainRouteConfig>(map['routeConfigs'], (value) => CustomDomainRouteConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

