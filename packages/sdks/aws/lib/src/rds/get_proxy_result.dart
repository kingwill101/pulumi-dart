// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_proxy_auth.dart';

/// Result data returned by getProxy.
class GetProxyResult {
  /// ARN of the DB Proxy.
  final String? arn;
  /// Configuration(s) with authorization mechanisms to connect to the associated instance or cluster.
  final List<GetProxyAuth>? auths;
  /// Whether the proxy includes detailed information about SQL statements in its logs.
  final bool? debugLogging;
  /// Default authentication scheme that the proxy uses for client connections to the proxy and connections from the proxy to the underlying database.
  final String? defaultAuthScheme;
  /// Endpoint that you can use to connect to the DB proxy.
  final String? endpoint;
  /// Network type of the DB proxy endpoint.
  final String? endpointNetworkType;
  /// Kinds of databases that the proxy can connect to.
  final String? engineFamily;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Number of seconds a connection to the proxy can have no activity before the proxy drops the client connection.
  final int? idleClientTimeout;
  final String? name;
  final String? region;
  /// Whether TLS encryption is required for connections to the proxy.
  final bool? requireTls;
  /// ARN for the IAM role that the proxy uses to access Amazon Secrets Manager.
  final String? roleArn;
  /// Network type that the proxy uses to connect to the target database.
  final String? targetConnectionNetworkType;
  /// Provides the VPC ID of the DB proxy.
  final String? vpcId;
  /// Provides a list of VPC security groups that the proxy belongs to.
  final List<String>? vpcSecurityGroupIds;
  /// EC2 subnet IDs for the proxy.
  final List<String>? vpcSubnetIds;

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
  /// [name] Optional.
  /// [region] Optional.
  /// [requireTls] Whether TLS encryption is required for connections to the proxy.
  /// [roleArn] ARN for the IAM role that the proxy uses to access Amazon Secrets Manager.
  /// [targetConnectionNetworkType] Network type that the proxy uses to connect to the target database.
  /// [vpcId] Provides the VPC ID of the DB proxy.
  /// [vpcSecurityGroupIds] Provides a list of VPC security groups that the proxy belongs to.
  /// [vpcSubnetIds] EC2 subnet IDs for the proxy.
  const GetProxyResult({
    this.arn,
    this.auths,
    this.debugLogging,
    this.defaultAuthScheme,
    this.endpoint,
    this.endpointNetworkType,
    this.engineFamily,
    this.id,
    this.idleClientTimeout,
    this.name,
    this.region,
    this.requireTls,
    this.roleArn,
    this.targetConnectionNetworkType,
    this.vpcId,
    this.vpcSecurityGroupIds,
    this.vpcSubnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'auths': ?(() { final guardedValue = auths; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetProxyAuth, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'debugLogging': ?debugLogging,
      'defaultAuthScheme': ?defaultAuthScheme,
      'endpoint': ?endpoint,
      'endpointNetworkType': ?endpointNetworkType,
      'engineFamily': ?engineFamily,
      'id': ?id,
      'idleClientTimeout': ?idleClientTimeout,
      'name': ?name,
      'region': ?region,
      'requireTls': ?requireTls,
      'roleArn': ?roleArn,
      'targetConnectionNetworkType': ?targetConnectionNetworkType,
      'vpcId': ?vpcId,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
      'vpcSubnetIds': ?vpcSubnetIds,
    };
  }

  factory GetProxyResult.fromMap(Map<String, dynamic> map) {
    return GetProxyResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      auths: (() { final guardedValue = map['auths']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetProxyAuth>(guardedValue, (value) => GetProxyAuth.fromMap((value as Map).cast<String, dynamic>())); })(),
      debugLogging: (() { final guardedValue = map['debugLogging']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      defaultAuthScheme: (() { final guardedValue = map['defaultAuthScheme']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointNetworkType: (() { final guardedValue = map['endpointNetworkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineFamily: (() { final guardedValue = map['engineFamily']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idleClientTimeout: (() { final guardedValue = map['idleClientTimeout']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requireTls: (() { final guardedValue = map['requireTls']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetConnectionNetworkType: (() { final guardedValue = map['targetConnectionNetworkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      vpcSubnetIds: (() { final guardedValue = map['vpcSubnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
