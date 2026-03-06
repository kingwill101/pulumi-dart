// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_domains_domain_cert_config.dart';
import 'get_custom_domains_domain_route_config.dart';

class GetCustomDomainsDomain {
  /// The account id.
  final pulumi.Input<String> accountId;
  /// The API version of the Function Compute service.
  final pulumi.Input<String> apiVersion;
  /// The configuration of HTTPS certificate.
  final pulumi.Input<GetCustomDomainsDomainCertConfig> certConfig;
  /// The created time of the custom domain.
  final pulumi.Input<String> createdTime;
  /// The custom domain name.
  final pulumi.Input<String> domainName;
  /// The custom domain id, same as domain name.
  final pulumi.Input<String> id;
  /// The last modified time of the custom domain.
  final pulumi.Input<String> lastModifiedTime;
  /// The custom domain protocol.
  final pulumi.Input<String> protocol;
  /// The configuration of domain route, mapping the path and Function Compute function.
  final pulumi.Input<List<GetCustomDomainsDomainRouteConfig>> routeConfigs;

  /// Creates a new [GetCustomDomainsDomain].
  /// [accountId] The account id.
  /// [apiVersion] The API version of the Function Compute service.
  /// [certConfig] The configuration of HTTPS certificate.
  /// [createdTime] The created time of the custom domain.
  /// [domainName] The custom domain name.
  /// [id] The custom domain id, same as domain name.
  /// [lastModifiedTime] The last modified time of the custom domain.
  /// [protocol] The custom domain protocol.
  /// [routeConfigs] The configuration of domain route, mapping the path and Function Compute function.
  const GetCustomDomainsDomain({
    required this.accountId,
    required this.apiVersion,
    required this.certConfig,
    required this.createdTime,
    required this.domainName,
    required this.id,
    required this.lastModifiedTime,
    required this.protocol,
    required this.routeConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'apiVersion': apiVersion,
      'certConfig': pulumi.Input.mapInputValue<GetCustomDomainsDomainCertConfig, Map<String, dynamic>>(certConfig, (value) => value.toMap()),
      'createdTime': createdTime,
      'domainName': domainName,
      'id': id,
      'lastModifiedTime': lastModifiedTime,
      'protocol': protocol,
      'routeConfigs': pulumi.Input.mapInputValue<List<GetCustomDomainsDomainRouteConfig>, List<Map<String, dynamic>>>(routeConfigs, (value) => pulumi.Input.encodeList<GetCustomDomainsDomainRouteConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetCustomDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainsDomain(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      apiVersion: pulumi.Input.fromValue(map['apiVersion'] as String),
      certConfig: pulumi.Input.fromValue(GetCustomDomainsDomainCertConfig.fromMap((map['certConfig']! as Map).cast<String, dynamic>())),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastModifiedTime: pulumi.Input.fromValue(map['lastModifiedTime'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      routeConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetCustomDomainsDomainRouteConfig>(map['routeConfigs']!, (value) => GetCustomDomainsDomainRouteConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

