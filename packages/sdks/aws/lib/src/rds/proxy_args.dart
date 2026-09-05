// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_auth.dart';

/// {@template pulumi_rds_proxy_proxy_args_doc}
/// The set of arguments for Proxy.
/// {@endtemplate}
/// {@macro pulumi_rds_proxy_proxy_args_doc}
class ProxyArgs {
  /// Configuration block(s) with authorization mechanisms to connect to the associated instances or clusters. Required when `defaultAuthScheme` is `NONE` or unspecified. See the `auth` block below.
  final pulumi.Input<List<ProxyAuth>?>? auths;
  /// Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.
  final pulumi.Input<bool?>? debugLogging;
  /// Default authentication scheme that the proxy uses for client connections to the proxy and connections from the proxy to the underlying database. Valid values are `NONE` and `IAM_AUTH`. Defaults to `NONE`.
  final pulumi.Input<String?>? defaultAuthScheme;
  /// Network type of the DB proxy endpoint. Valid values are `IPV4`, `IPV6` and `DUAL`. Defaults to `IPV4`. If `IPV6` is specified, the subnets associated with the proxy must be IPv6-only, and `targetConnectionNetworkType` must be `IPV6`.
  final pulumi.Input<String?>? endpointNetworkType;
  /// Kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. For Aurora MySQL, RDS for MariaDB, and RDS for MySQL databases, specify `MYSQL`. For Aurora PostgreSQL and RDS for PostgreSQL databases, specify `POSTGRESQL`. For RDS for Microsoft SQL Server, specify `SQLSERVER`. Valid values are `MYSQL`, `POSTGRESQL`, and `SQLSERVER`.
  final pulumi.Input<String> engineFamily;
  /// Number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.
  final pulumi.Input<int?>? idleClientTimeout;
  /// Identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Whether TLS encryption is required for connections to the proxy. Enabling this setting enforces encrypted TLS connections to the proxy.
  final pulumi.Input<bool?>? requireTls;
  /// ARN of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
  final pulumi.Input<String> roleArn;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Network type that the proxy uses to connect to the target database. Valid values are `IPV4` and `IPV6`. Defaults to `IPV4`.
  final pulumi.Input<String?>? targetConnectionNetworkType;
  /// One or more VPC security group IDs to associate with the new proxy.
  final pulumi.Input<List<String>?>? vpcSecurityGroupIds;
  /// One or more VPC subnet IDs to associate with the new proxy.
  final pulumi.Input<List<String>> vpcSubnetIds;

  /// Creates a new [ProxyArgs].
  /// [auths] Configuration block(s) with authorization mechanisms to connect to the associated instances or clusters. Required when `defaultAuthScheme` is `NONE` or unspecified. See the `auth` block below.
  /// [debugLogging] Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.
  /// [defaultAuthScheme] Default authentication scheme that the proxy uses for client connections to the proxy and connections from the proxy to the underlying database. Valid values are `NONE` and `IAM_AUTH`. Defaults to `NONE`.
  /// [endpointNetworkType] Network type of the DB proxy endpoint. Valid values are `IPV4`, `IPV6` and `DUAL`. Defaults to `IPV4`. If `IPV6` is specified, the subnets associated with the proxy must be IPv6-only, and `targetConnectionNetworkType` must be `IPV6`.
  /// [engineFamily] Kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. For Aurora MySQL, RDS for MariaDB, and RDS for MySQL databases, specify `MYSQL`. For Aurora PostgreSQL and RDS for PostgreSQL databases, specify `POSTGRESQL`. For RDS for Microsoft SQL Server, specify `SQLSERVER`. Valid values are `MYSQL`, `POSTGRESQL`, and `SQLSERVER`.
  /// [idleClientTimeout] Number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.
  /// [name] Identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requireTls] Whether TLS encryption is required for connections to the proxy. Enabling this setting enforces encrypted TLS connections to the proxy.
  /// [roleArn] ARN of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetConnectionNetworkType] Network type that the proxy uses to connect to the target database. Valid values are `IPV4` and `IPV6`. Defaults to `IPV4`.
  /// [vpcSecurityGroupIds] One or more VPC security group IDs to associate with the new proxy.
  /// [vpcSubnetIds] One or more VPC subnet IDs to associate with the new proxy.
  const ProxyArgs({
    this.auths,
    this.debugLogging,
    this.defaultAuthScheme,
    this.endpointNetworkType,
    required this.engineFamily,
    this.idleClientTimeout,
    this.name,
    this.region,
    this.requireTls,
    required this.roleArn,
    this.tags,
    this.targetConnectionNetworkType,
    this.vpcSecurityGroupIds,
    required this.vpcSubnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auths': ?pulumi.Input.mapOptionalInputValue<List<ProxyAuth>, List<Map<String, dynamic>>>(auths, (value) => pulumi.Input.encodeList<ProxyAuth, Map<String, dynamic>>(value, (value) => value.toMap())),
      'debugLogging': ?debugLogging,
      'defaultAuthScheme': ?defaultAuthScheme,
      'endpointNetworkType': ?endpointNetworkType,
      'engineFamily': engineFamily,
      'idleClientTimeout': ?idleClientTimeout,
      'name': ?name,
      'region': ?region,
      'requireTls': ?requireTls,
      'roleArn': roleArn,
      'tags': ?tags,
      'targetConnectionNetworkType': ?targetConnectionNetworkType,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
      'vpcSubnetIds': vpcSubnetIds,
    };
  }

  factory ProxyArgs.fromMap(Map<String, dynamic> map) {
    return ProxyArgs(
      auths: (() { final guardedValue = map['auths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProxyAuth>(guardedValue, (value) => ProxyAuth.fromMap((value as Map).cast<String, dynamic>()))); })(),
      debugLogging: (() { final guardedValue = map['debugLogging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      defaultAuthScheme: (() { final guardedValue = map['defaultAuthScheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointNetworkType: (() { final guardedValue = map['endpointNetworkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineFamily: pulumi.Input.fromValue(map['engineFamily'] as String),
      idleClientTimeout: (() { final guardedValue = map['idleClientTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requireTls: (() { final guardedValue = map['requireTls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetConnectionNetworkType: (() { final guardedValue = map['targetConnectionNetworkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vpcSubnetIds: pulumi.Input.fromValue((map['vpcSubnetIds'] as List).cast<String>()),
    );
  }
}
