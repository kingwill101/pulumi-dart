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
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? apiVersion,
    pulumi.Output<CustomDomainCertConfig>? certConfig,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<String>? protocol,
    pulumi.Output<List<CustomDomainRouteConfig>>? routeConfigs,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      certConfig = pulumi.Input.asOptionalInput<CustomDomainCertConfig>(certConfig),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      routeConfigs = pulumi.Input.asOptionalInput<List<CustomDomainRouteConfig>>(routeConfigs);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      certConfig: map['certConfig'] == null ? null : pulumi.Output.create<CustomDomainCertConfig>(CustomDomainCertConfig.fromMap((map['certConfig'] as Map).cast<String, dynamic>())),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      routeConfigs: map['routeConfigs'] == null ? null : pulumi.Output.create<List<CustomDomainRouteConfig>>(pulumi.Input.decodeList<CustomDomainRouteConfig>(map['routeConfigs'], (value) => CustomDomainRouteConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

