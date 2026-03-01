// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_domains_domain_cert_config.dart';
import 'get_custom_domains_domain_route_config.dart';

class GetCustomDomainsDomain {
  /// The account id.
  final String accountId;
  /// The API version of the Function Compute service.
  final String apiVersion;
  /// The configuration of HTTPS certificate.
  final GetCustomDomainsDomainCertConfig certConfig;
  /// The created time of the custom domain.
  final String createdTime;
  /// The custom domain name.
  final String domainName;
  /// The custom domain id, same as domain name.
  final String id;
  /// The last modified time of the custom domain.
  final String lastModifiedTime;
  /// The custom domain protocol.
  final String protocol;
  /// The configuration of domain route, mapping the path and Function Compute function.
  final List<GetCustomDomainsDomainRouteConfig> routeConfigs;

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
  GetCustomDomainsDomain({
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
      'certConfig': certConfig.toMap(),
      'createdTime': createdTime,
      'domainName': domainName,
      'id': id,
      'lastModifiedTime': lastModifiedTime,
      'protocol': protocol,
      'routeConfigs': pulumi.Input.encodeList<GetCustomDomainsDomainRouteConfig, Map<String, dynamic>>(routeConfigs, (value) => value.toMap()),
    };
  }

  factory GetCustomDomainsDomain.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainsDomain(
      accountId: map['accountId'] as String,
      apiVersion: map['apiVersion'] as String,
      certConfig: GetCustomDomainsDomainCertConfig.fromMap((map['certConfig'] as Map).cast<String, dynamic>()),
      createdTime: map['createdTime'] as String,
      domainName: map['domainName'] as String,
      id: map['id'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      protocol: map['protocol'] as String,
      routeConfigs: pulumi.Input.decodeList<GetCustomDomainsDomainRouteConfig>(map['routeConfigs'], (value) => GetCustomDomainsDomainRouteConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

