// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_cert_config.dart';
import 'custom_domain_route_config.dart';

/// {@template pulumi_fc_custom_domain_custom_domain_args_doc}
/// The set of arguments for CustomDomain.
/// {@endtemplate}
/// {@macro pulumi_fc_custom_domain_custom_domain_args_doc}
class CustomDomainArgs {
  /// The configuration of HTTPS certificate.See `cert_config` below.
  final pulumi.Input<CustomDomainCertConfig>? certConfig;
  /// The custom domain name. For example, "example.com".
  final pulumi.Input<String> domainName;
  /// The protocol, `HTTP` or `HTTP,HTTPS`.
  final pulumi.Input<String> protocol;
  /// The configuration of domain route, mapping the path and Function Compute function.See `route_config` below.
  final pulumi.Input<List<CustomDomainRouteConfig>>? routeConfigs;

  /// Creates a new [CustomDomainArgs].
  /// [certConfig] The configuration of HTTPS certificate.See `cert_config` below.
  /// [domainName] The custom domain name. For example, "example.com".
  /// [protocol] The protocol, `HTTP` or `HTTP,HTTPS`.
  /// [routeConfigs] The configuration of domain route, mapping the path and Function Compute function.See `route_config` below.
  CustomDomainArgs({
    this.certConfig,
    required this.domainName,
    required this.protocol,
    this.routeConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certConfig': ?pulumi.Input.mapOptionalInputValue<CustomDomainCertConfig, Map<String, dynamic>>(certConfig, (value) => value.toMap()),
      'domainName': domainName,
      'protocol': protocol,
      'routeConfigs': ?pulumi.Input.mapOptionalInputValue<List<CustomDomainRouteConfig>, List<Map<String, dynamic>>>(routeConfigs, (value) => pulumi.Input.encodeList<CustomDomainRouteConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return CustomDomainArgs(
      certConfig: map['certConfig'] == null ? null : (CustomDomainCertConfig.fromMap((map['certConfig'] as Map).cast<String, dynamic>())).input(),
      domainName: (map['domainName'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      routeConfigs: map['routeConfigs'] == null ? null : (pulumi.Input.decodeList<CustomDomainRouteConfig>(map['routeConfigs'], (value) => CustomDomainRouteConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

