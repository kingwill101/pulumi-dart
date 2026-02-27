// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../proxy_auth/proxy_auth.dart';

/// The set of arguments for Proxy.
class ProxyArgs {
  /// Configuration block(s) with authorization mechanisms to connect to the associated instances or clusters. Required when `default_auth_scheme` is `NONE` or unspecified. Described below.
  final Input<List<ProxyAuth>>? auths;

  /// Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.
  final Input<bool>? debugLogging;

  /// Default authentication scheme that the proxy uses for client connections to the proxy and connections from the proxy to the underlying database. Valid values are `NONE` and `IAM_AUTH`. Defaults to `NONE`.
  final Input<String>? defaultAuthScheme;

  /// Network type of the DB proxy endpoint. Valid values are `IPV4`, `IPV6` and `DUAL`. Defaults to `IPV4`. If `IPV6` is specified, the subnets associated with the proxy must be IPv6-only, and `target_connection_network_type` must be `IPV6`.
  final Input<String>? endpointNetworkType;

  /// The kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. For Aurora MySQL, RDS for MariaDB, and RDS for MySQL databases, specify `MYSQL`. For Aurora PostgreSQL and RDS for PostgreSQL databases, specify `POSTGRESQL`. For RDS for Microsoft SQL Server, specify `SQLSERVER`. Valid values are `MYSQL`, `POSTGRESQL`, and `SQLSERVER`.
  final Input<String> engineFamily;

  /// The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.
  final Input<int>? idleClientTimeout;

  /// The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy.
  final Input<bool>? requireTls;

  /// The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
  final Input<String> roleArn;

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Network type that the proxy uses to connect to the target database. Valid values are `IPV4` and `IPV6`. Defaults to `IPV4`.
  final Input<String>? targetConnectionNetworkType;

  /// One or more VPC security group IDs to associate with the new proxy.
  final Input<List<String>>? vpcSecurityGroupIds;

  /// One or more VPC subnet IDs to associate with the new proxy.
  final Input<List<String>> vpcSubnetIds;

  ProxyArgs({
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
    final map = <String, dynamic>{};
    final authsValue = auths;
    if (authsValue != null) {
      map['auths'] = Input.mapOptionalInputValue<List<ProxyAuth>,
              List<Map<String, dynamic>>>(
          authsValue,
          (value) => Input.encodeList<ProxyAuth, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final debugLoggingValue = debugLogging;
    if (debugLoggingValue != null) {
      map['debugLogging'] = debugLoggingValue;
    }
    final defaultAuthSchemeValue = defaultAuthScheme;
    if (defaultAuthSchemeValue != null) {
      map['defaultAuthScheme'] = defaultAuthSchemeValue;
    }
    final endpointNetworkTypeValue = endpointNetworkType;
    if (endpointNetworkTypeValue != null) {
      map['endpointNetworkType'] = endpointNetworkTypeValue;
    }
    map['engineFamily'] = engineFamily;
    final idleClientTimeoutValue = idleClientTimeout;
    if (idleClientTimeoutValue != null) {
      map['idleClientTimeout'] = idleClientTimeoutValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requireTlsValue = requireTls;
    if (requireTlsValue != null) {
      map['requireTls'] = requireTlsValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetConnectionNetworkTypeValue = targetConnectionNetworkType;
    if (targetConnectionNetworkTypeValue != null) {
      map['targetConnectionNetworkType'] = targetConnectionNetworkTypeValue;
    }
    final vpcSecurityGroupIdsValue = vpcSecurityGroupIds;
    if (vpcSecurityGroupIdsValue != null) {
      map['vpcSecurityGroupIds'] = vpcSecurityGroupIdsValue;
    }
    map['vpcSubnetIds'] = vpcSubnetIds;
    return map;
  }

  factory ProxyArgs.fromMap(Map<String, dynamic> map) {
    return ProxyArgs(
      auths: Input.asOptionalInput<List<ProxyAuth>>(map['auths']),
      debugLogging: Input.asOptionalInput<bool>(map['debugLogging']),
      defaultAuthScheme:
          Input.asOptionalInput<String>(map['defaultAuthScheme']),
      endpointNetworkType:
          Input.asOptionalInput<String>(map['endpointNetworkType']),
      engineFamily: Input.asInput<String>(map['engineFamily']),
      idleClientTimeout: Input.asOptionalInput<int>(map['idleClientTimeout']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      requireTls: Input.asOptionalInput<bool>(map['requireTls']),
      roleArn: Input.asInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetConnectionNetworkType:
          Input.asOptionalInput<String>(map['targetConnectionNetworkType']),
      vpcSecurityGroupIds:
          Input.asOptionalInput<List<String>>(map['vpcSecurityGroupIds']),
      vpcSubnetIds: Input.asInput<List<String>>(map['vpcSubnetIds']),
    );
  }
}
