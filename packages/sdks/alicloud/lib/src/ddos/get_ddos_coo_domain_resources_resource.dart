// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ddos_coo_domain_resources_resource_proxy_type.dart';

class GetDdosCooDomainResourcesResource {
  /// The IP addresses in the blacklist for the domain name.
  final List<String> blackLists;
  /// Whether frequency control guard (CC guard) is enabled. Values: `True`: Opened, `False`: Not enabled.
  final bool ccEnabled;
  /// Whether custom frequency control guard (CC guard) is enabled. Values: `True`: Opened, `False`: Not enabled.
  final bool ccRuleEnabled;
  /// The mode of the Frequency Control policy.
  final String ccTemplate;
  /// The name of the certificate.
  final String certName;
  /// The domain name of the website that you want to add to the instance.
  final String domain;
  /// Whether Http2.0 is enabled.
  final bool http2Enable;
  /// The advanced HTTPS settings.
  final String httpsExt;
  /// The ID of the Domain Resource.
  final String id;
  /// A ID list of Ddoscoo instance.
  final List<String> instanceIds;
  /// The type of backload algorithm.
  final String policyMode;
  /// Whether the website service forwarding rules have been turned on.
  final bool proxyEnabled;
  /// Protocol type and port number information.
  final List<GetDdosCooDomainResourcesResourceProxyType> proxyTypes;
  /// Server address information of the source station.
  final List<String> realServers;
  /// Server address type.
  final int rsType;
  /// The type of the cipher suite.
  final String sslCiphers;
  /// The version of the TLS protocol.
  final String sslProtocols;
  /// The IP addresses in the whitelist for the domain name.
  final List<String> whiteLists;

  /// Creates a new [GetDdosCooDomainResourcesResource].
  /// [blackLists] The IP addresses in the blacklist for the domain name.
  /// [ccEnabled] Whether frequency control guard (CC guard) is enabled. Values: `True`: Opened, `False`: Not enabled.
  /// [ccRuleEnabled] Whether custom frequency control guard (CC guard) is enabled. Values: `True`: Opened, `False`: Not enabled.
  /// [ccTemplate] The mode of the Frequency Control policy.
  /// [certName] The name of the certificate.
  /// [domain] The domain name of the website that you want to add to the instance.
  /// [http2Enable] Whether Http2.0 is enabled.
  /// [httpsExt] The advanced HTTPS settings.
  /// [id] The ID of the Domain Resource.
  /// [instanceIds] A ID list of Ddoscoo instance.
  /// [policyMode] The type of backload algorithm.
  /// [proxyEnabled] Whether the website service forwarding rules have been turned on.
  /// [proxyTypes] Protocol type and port number information.
  /// [realServers] Server address information of the source station.
  /// [rsType] Server address type.
  /// [sslCiphers] The type of the cipher suite.
  /// [sslProtocols] The version of the TLS protocol.
  /// [whiteLists] The IP addresses in the whitelist for the domain name.
  GetDdosCooDomainResourcesResource({
    required this.blackLists,
    required this.ccEnabled,
    required this.ccRuleEnabled,
    required this.ccTemplate,
    required this.certName,
    required this.domain,
    required this.http2Enable,
    required this.httpsExt,
    required this.id,
    required this.instanceIds,
    required this.policyMode,
    required this.proxyEnabled,
    required this.proxyTypes,
    required this.realServers,
    required this.rsType,
    required this.sslCiphers,
    required this.sslProtocols,
    required this.whiteLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blackLists': blackLists,
      'ccEnabled': ccEnabled,
      'ccRuleEnabled': ccRuleEnabled,
      'ccTemplate': ccTemplate,
      'certName': certName,
      'domain': domain,
      'http2Enable': http2Enable,
      'httpsExt': httpsExt,
      'id': id,
      'instanceIds': instanceIds,
      'policyMode': policyMode,
      'proxyEnabled': proxyEnabled,
      'proxyTypes': pulumi.Input.encodeList<GetDdosCooDomainResourcesResourceProxyType, Map<String, dynamic>>(proxyTypes, (value) => value.toMap()),
      'realServers': realServers,
      'rsType': rsType,
      'sslCiphers': sslCiphers,
      'sslProtocols': sslProtocols,
      'whiteLists': whiteLists,
    };
  }

  factory GetDdosCooDomainResourcesResource.fromMap(Map<String, dynamic> map) {
    return GetDdosCooDomainResourcesResource(
      blackLists: (map['blackLists'] as List).cast<String>(),
      ccEnabled: map['ccEnabled'] as bool,
      ccRuleEnabled: map['ccRuleEnabled'] as bool,
      ccTemplate: map['ccTemplate'] as String,
      certName: map['certName'] as String,
      domain: map['domain'] as String,
      http2Enable: map['http2Enable'] as bool,
      httpsExt: map['httpsExt'] as String,
      id: map['id'] as String,
      instanceIds: (map['instanceIds'] as List).cast<String>(),
      policyMode: map['policyMode'] as String,
      proxyEnabled: map['proxyEnabled'] as bool,
      proxyTypes: pulumi.Input.decodeList<GetDdosCooDomainResourcesResourceProxyType>(map['proxyTypes'], (value) => GetDdosCooDomainResourcesResourceProxyType.fromMap((value as Map).cast<String, dynamic>())),
      realServers: (map['realServers'] as List).cast<String>(),
      rsType: map['rsType'] as int,
      sslCiphers: map['sslCiphers'] as String,
      sslProtocols: map['sslProtocols'] as String,
      whiteLists: (map['whiteLists'] as List).cast<String>(),
    );
  }
}

