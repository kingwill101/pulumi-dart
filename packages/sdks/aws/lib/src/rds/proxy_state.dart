// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_auth.dart';

/// Input properties used for looking up and filtering Proxy resources.
class ProxyState {
  /// The Amazon Resource Name (ARN) for the proxy.
  final pulumi.Input<String>? arn;
  /// Configuration block(s) with authorization mechanisms to connect to the associated instances or clusters. Required when `default_auth_scheme` is `NONE` or unspecified. Described below.
  final pulumi.Input<List<ProxyAuth>>? auths;
  /// Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.
  final pulumi.Input<bool>? debugLogging;
  /// Default authentication scheme that the proxy uses for client connections to the proxy and connections from the proxy to the underlying database. Valid values are `NONE` and `IAM_AUTH`. Defaults to `NONE`.
  final pulumi.Input<String>? defaultAuthScheme;
  /// The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application.
  final pulumi.Input<String>? endpoint;
  /// Network type of the DB proxy endpoint. Valid values are `IPV4`, `IPV6` and `DUAL`. Defaults to `IPV4`. If `IPV6` is specified, the subnets associated with the proxy must be IPv6-only, and `target_connection_network_type` must be `IPV6`.
  final pulumi.Input<String>? endpointNetworkType;
  /// The kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. For Aurora MySQL, RDS for MariaDB, and RDS for MySQL databases, specify `MYSQL`. For Aurora PostgreSQL and RDS for PostgreSQL databases, specify `POSTGRESQL`. For RDS for Microsoft SQL Server, specify `SQLSERVER`. Valid values are `MYSQL`, `POSTGRESQL`, and `SQLSERVER`.
  final pulumi.Input<String>? engineFamily;
  /// The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.
  final pulumi.Input<int>? idleClientTimeout;
  /// The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy.
  final pulumi.Input<bool>? requireTls;
  /// The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
  final pulumi.Input<String>? roleArn;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Network type that the proxy uses to connect to the target database. Valid values are `IPV4` and `IPV6`. Defaults to `IPV4`.
  final pulumi.Input<String>? targetConnectionNetworkType;
  /// One or more VPC security group IDs to associate with the new proxy.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;
  /// One or more VPC subnet IDs to associate with the new proxy.
  final pulumi.Input<List<String>>? vpcSubnetIds;

  /// Creates a new [ProxyState].
  /// [arn] The Amazon Resource Name (ARN) for the proxy.
  /// [auths] Configuration block(s) with authorization mechanisms to connect to the associated instances or clusters. Required when `default_auth_scheme` is `NONE` or unspecified. Described below.
  /// [debugLogging] Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.
  /// [defaultAuthScheme] Default authentication scheme that the proxy uses for client connections to the proxy and connections from the proxy to the underlying database. Valid values are `NONE` and `IAM_AUTH`. Defaults to `NONE`.
  /// [endpoint] The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application.
  /// [endpointNetworkType] Network type of the DB proxy endpoint. Valid values are `IPV4`, `IPV6` and `DUAL`. Defaults to `IPV4`. If `IPV6` is specified, the subnets associated with the proxy must be IPv6-only, and `target_connection_network_type` must be `IPV6`.
  /// [engineFamily] The kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. For Aurora MySQL, RDS for MariaDB, and RDS for MySQL databases, specify `MYSQL`. For Aurora PostgreSQL and RDS for PostgreSQL databases, specify `POSTGRESQL`. For RDS for Microsoft SQL Server, specify `SQLSERVER`. Valid values are `MYSQL`, `POSTGRESQL`, and `SQLSERVER`.
  /// [idleClientTimeout] The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.
  /// [name] The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requireTls] A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetConnectionNetworkType] Network type that the proxy uses to connect to the target database. Valid values are `IPV4` and `IPV6`. Defaults to `IPV4`.
  /// [vpcSecurityGroupIds] One or more VPC security group IDs to associate with the new proxy.
  /// [vpcSubnetIds] One or more VPC subnet IDs to associate with the new proxy.
  ProxyState({
    this.arn,
    this.auths,
    this.debugLogging,
    this.defaultAuthScheme,
    this.endpoint,
    this.endpointNetworkType,
    this.engineFamily,
    this.idleClientTimeout,
    this.name,
    this.region,
    this.requireTls,
    this.roleArn,
    this.tags,
    this.tagsAll,
    this.targetConnectionNetworkType,
    this.vpcSecurityGroupIds,
    this.vpcSubnetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'auths': ?pulumi.Input.mapOptionalInputValue<List<ProxyAuth>, List<Map<String, dynamic>>>(auths, (value) => pulumi.Input.encodeList<ProxyAuth, Map<String, dynamic>>(value, (value) => value.toMap())),
      'debugLogging': ?debugLogging,
      'defaultAuthScheme': ?defaultAuthScheme,
      'endpoint': ?endpoint,
      'endpointNetworkType': ?endpointNetworkType,
      'engineFamily': ?engineFamily,
      'idleClientTimeout': ?idleClientTimeout,
      'name': ?name,
      'region': ?region,
      'requireTls': ?requireTls,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetConnectionNetworkType': ?targetConnectionNetworkType,
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
      'vpcSubnetIds': ?vpcSubnetIds,
    };
  }

  factory ProxyState.fromMap(Map<String, dynamic> map) {
    return ProxyState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      auths: map['auths'] == null ? null : (pulumi.Input.decodeList<ProxyAuth>(map['auths'], (value) => ProxyAuth.fromMap((value as Map).cast<String, dynamic>()))).input(),
      debugLogging: map['debugLogging'] == null ? null : (map['debugLogging'] as bool).input(),
      defaultAuthScheme: map['defaultAuthScheme'] == null ? null : (map['defaultAuthScheme'] as String).input(),
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      endpointNetworkType: map['endpointNetworkType'] == null ? null : (map['endpointNetworkType'] as String).input(),
      engineFamily: map['engineFamily'] == null ? null : (map['engineFamily'] as String).input(),
      idleClientTimeout: map['idleClientTimeout'] == null ? null : (map['idleClientTimeout'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      requireTls: map['requireTls'] == null ? null : (map['requireTls'] as bool).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      targetConnectionNetworkType: map['targetConnectionNetworkType'] == null ? null : (map['targetConnectionNetworkType'] as String).input(),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : ((map['vpcSecurityGroupIds'] as List).cast<String>()).input(),
      vpcSubnetIds: map['vpcSubnetIds'] == null ? null : ((map['vpcSubnetIds'] as List).cast<String>()).input(),
    );
  }
}

