// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_proxy_auth.dart';

/// Result data returned by getProxy.
class GetProxyResult {
  /// ARN of the DB Proxy.
  final String arn;
  /// Configuration(s) with authorization mechanisms to connect to the associated instance or cluster.
  final List<GetProxyAuth> auths;
  /// Whether the proxy includes detailed information about SQL statements in its logs.
  final bool debugLogging;
  /// Default authentication scheme that the proxy uses for client connections to the proxy and connections from the proxy to the underlying database.
  final String defaultAuthScheme;
  /// Endpoint that you can use to connect to the DB proxy.
  final String endpoint;
  /// Network type of the DB proxy endpoint.
  final String endpointNetworkType;
  /// Kinds of databases that the proxy can connect to.
  final String engineFamily;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Number of seconds a connection to the proxy can have no activity before the proxy drops the client connection.
  final int idleClientTimeout;
  final String name;
  final String region;
  /// Whether Transport Layer Security (TLS) encryption is required for connections to the proxy.
  final bool requireTls;
  /// ARN for the IAM role that the proxy uses to access Amazon Secrets Manager.
  final String roleArn;
  /// Network type that the proxy uses to connect to the target database.
  final String targetConnectionNetworkType;
  /// Provides the VPC ID of the DB proxy.
  final String vpcId;
  /// Provides a list of VPC security groups that the proxy belongs to.
  final List<String> vpcSecurityGroupIds;
  /// EC2 subnet IDs for the proxy.
  final List<String> vpcSubnetIds;

  /// Creates a new [GetProxyResult].
  /// [arn] ARN of the DB Proxy.
  /// [auths] Configuration(s) with authorization mechanisms to connect to the associated instance or cluster.
  /// [debugLogging] Whether the proxy includes detailed information about SQL statements in its logs.
  /// [defaultAuthScheme] Default authentication scheme that the proxy uses for client connections to the proxy and connections from the proxy to the underlying database.
  /// [endpoint] Endpoint that you can use to connect to the DB proxy.
  /// [endpointNetworkType] Network type of the DB proxy endpoint.
  /// [engineFamily] Kinds of databases that the proxy can connect to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idleClientTimeout] Number of seconds a connection to the proxy can have no activity before the proxy drops the client connection.
  /// [name] Required.
  /// [region] Required.
  /// [requireTls] Whether Transport Layer Security (TLS) encryption is required for connections to the proxy.
  /// [roleArn] ARN for the IAM role that the proxy uses to access Amazon Secrets Manager.
  /// [targetConnectionNetworkType] Network type that the proxy uses to connect to the target database.
  /// [vpcId] Provides the VPC ID of the DB proxy.
  /// [vpcSecurityGroupIds] Provides a list of VPC security groups that the proxy belongs to.
  /// [vpcSubnetIds] EC2 subnet IDs for the proxy.
  GetProxyResult({
    required this.arn,
    required this.auths,
    required this.debugLogging,
    required this.defaultAuthScheme,
    required this.endpoint,
    required this.endpointNetworkType,
    required this.engineFamily,
    required this.id,
    required this.idleClientTimeout,
    required this.name,
    required this.region,
    required this.requireTls,
    required this.roleArn,
    required this.targetConnectionNetworkType,
    required this.vpcId,
    required this.vpcSecurityGroupIds,
    required this.vpcSubnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'auths': pulumi.Input.encodeList<GetProxyAuth, Map<String, dynamic>>(auths, (value) => value.toMap()),
      'debugLogging': debugLogging,
      'defaultAuthScheme': defaultAuthScheme,
      'endpoint': endpoint,
      'endpointNetworkType': endpointNetworkType,
      'engineFamily': engineFamily,
      'id': id,
      'idleClientTimeout': idleClientTimeout,
      'name': name,
      'region': region,
      'requireTls': requireTls,
      'roleArn': roleArn,
      'targetConnectionNetworkType': targetConnectionNetworkType,
      'vpcId': vpcId,
      'vpcSecurityGroupIds': vpcSecurityGroupIds,
      'vpcSubnetIds': vpcSubnetIds,
    };
  }

  factory GetProxyResult.fromMap(Map<String, dynamic> map) {
    return GetProxyResult(
      arn: map['arn'] as String,
      auths: pulumi.Input.decodeList<GetProxyAuth>(map['auths']!, (value) => GetProxyAuth.fromMap((value as Map).cast<String, dynamic>())),
      debugLogging: map['debugLogging'] as bool,
      defaultAuthScheme: map['defaultAuthScheme'] as String,
      endpoint: map['endpoint'] as String,
      endpointNetworkType: map['endpointNetworkType'] as String,
      engineFamily: map['engineFamily'] as String,
      id: map['id'] as String,
      idleClientTimeout: map['idleClientTimeout'] as int,
      name: map['name'] as String,
      region: map['region'] as String,
      requireTls: map['requireTls'] as bool,
      roleArn: map['roleArn'] as String,
      targetConnectionNetworkType: map['targetConnectionNetworkType'] as String,
      vpcId: map['vpcId'] as String,
      vpcSecurityGroupIds: (map['vpcSecurityGroupIds'] as List).cast<String>(),
      vpcSubnetIds: (map['vpcSubnetIds'] as List).cast<String>(),
    );
  }
}

