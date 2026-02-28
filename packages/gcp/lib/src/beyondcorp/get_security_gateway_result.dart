// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_gateway_hub.dart';
import 'get_security_gateway_proxy_protocol_config.dart';
import 'get_security_gateway_service_discovery.dart';

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

  /// Creates a new [GetSecurityGatewayResult].
  /// [createTime] Required.
  /// [delegatingServiceAccount] Required.
  /// [displayName] Required.
  /// [externalIps] Required.
  /// [hubs] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [proxyProtocolConfigs] Required.
  /// [securityGatewayId] Required.
  /// [serviceDiscoveries] Required.
  /// [state] Required.
  /// [updateTime] Required.
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
    return <String, dynamic>{
      'createTime': createTime,
      'delegatingServiceAccount': delegatingServiceAccount,
      'displayName': displayName,
      'externalIps': externalIps,
      'hubs': pulumi.Input.encodeList<GetSecurityGatewayHub, Map<String, dynamic>>(hubs, (value) => value.toMap()),
      'id': id,
      'location': location,
      'name': name,
      'project': ?project,
      'proxyProtocolConfigs': pulumi.Input.encodeList<GetSecurityGatewayProxyProtocolConfig, Map<String, dynamic>>(proxyProtocolConfigs, (value) => value.toMap()),
      'securityGatewayId': securityGatewayId,
      'serviceDiscoveries': pulumi.Input.encodeList<GetSecurityGatewayServiceDiscovery, Map<String, dynamic>>(serviceDiscoveries, (value) => value.toMap()),
      'state': state,
      'updateTime': updateTime,
    };
  }

  factory GetSecurityGatewayResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayResult(
      createTime: map['createTime'] as String,
      delegatingServiceAccount: map['delegatingServiceAccount'] as String,
      displayName: map['displayName'] as String,
      externalIps: (map['externalIps'] as List).cast<String>(),
      hubs: pulumi.Input.decodeList<GetSecurityGatewayHub>(map['hubs'], (value) => GetSecurityGatewayHub.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      proxyProtocolConfigs: pulumi.Input.decodeList<GetSecurityGatewayProxyProtocolConfig>(map['proxyProtocolConfigs'], (value) => GetSecurityGatewayProxyProtocolConfig.fromMap((value as Map).cast<String, dynamic>())),
      securityGatewayId: map['securityGatewayId'] as String,
      serviceDiscoveries: pulumi.Input.decodeList<GetSecurityGatewayServiceDiscovery>(map['serviceDiscoveries'], (value) => GetSecurityGatewayServiceDiscovery.fromMap((value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

