// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_security_gateway_hub/get_security_gateway_hub.dart';
import '../get_security_gateway_proxy_protocol_config/get_security_gateway_proxy_protocol_config.dart';
import '../get_security_gateway_service_discovery/get_security_gateway_service_discovery.dart';

/// Result data returned by getSecurityGateway.
class GetSecurityGatewayResult {
  final String createTime;
  final String delegatingServiceAccount;
  final String displayName;
  final List<String> externalIps;
  final List<GetSecurityGatewayHub> hubs;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final String? project;
  final List<GetSecurityGatewayProxyProtocolConfig> proxyProtocolConfigs;
  final String securityGatewayId;
  final List<GetSecurityGatewayServiceDiscovery> serviceDiscoveries;
  final String state;
  final String updateTime;

  GetSecurityGatewayResult({
    required this.createTime,
    required this.delegatingServiceAccount,
    required this.displayName,
    required this.externalIps,
    required this.hubs,
    required this.id,
    required this.location,
    required this.name,
    this.project,
    required this.proxyProtocolConfigs,
    required this.securityGatewayId,
    required this.serviceDiscoveries,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['delegatingServiceAccount'] = delegatingServiceAccount;
    map['displayName'] = displayName;
    map['externalIps'] = externalIps;
    map['hubs'] = Input.encodeList<GetSecurityGatewayHub, Map<String, dynamic>>(
        hubs, (value) => value.toMap());
    map['id'] = id;
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['proxyProtocolConfigs'] = Input.encodeList<
        GetSecurityGatewayProxyProtocolConfig,
        Map<String, dynamic>>(proxyProtocolConfigs, (value) => value.toMap());
    map['securityGatewayId'] = securityGatewayId;
    map['serviceDiscoveries'] = Input.encodeList<
        GetSecurityGatewayServiceDiscovery,
        Map<String, dynamic>>(serviceDiscoveries, (value) => value.toMap());
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetSecurityGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayResult(
      createTime: map['createTime'] as String,
      delegatingServiceAccount: map['delegatingServiceAccount'] as String,
      displayName: map['displayName'] as String,
      externalIps: (map['externalIps'] as List).cast<String>(),
      hubs: Input.decodeList<GetSecurityGatewayHub>(
          map['hubs'],
          (value) => GetSecurityGatewayHub.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      proxyProtocolConfigs:
          Input.decodeList<GetSecurityGatewayProxyProtocolConfig>(
              map['proxyProtocolConfigs'],
              (value) => GetSecurityGatewayProxyProtocolConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      securityGatewayId: map['securityGatewayId'] as String,
      serviceDiscoveries: Input.decodeList<GetSecurityGatewayServiceDiscovery>(
          map['serviceDiscoveries'],
          (value) => GetSecurityGatewayServiceDiscovery.fromMap(
              (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
