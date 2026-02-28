// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_auth.dart';

/// {@template pulumi_rds_proxy_proxy_args_doc}
/// The set of arguments for Proxy.
/// {@endtemplate}
/// {@macro pulumi_rds_proxy_proxy_args_doc}
class ProxyArgs {
  /// Configuration block(s) with authorization mechanisms to connect to the associated instances or clusters. Required when `default_auth_scheme` is `NONE` or unspecified. Described below.
  final pulumi.Input<List<ProxyAuth>>? auths;

  /// Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.
  final pulumi.Input<bool>? debugLogging;

  /// Default authentication scheme that the proxy uses for client connections to the proxy and connections from the proxy to the underlying database. Valid values are `NONE` and `IAM_AUTH`. Defaults to `NONE`.
  final pulumi.Input<String>? defaultAuthScheme;

  /// Network type of the DB proxy endpoint. Valid values are `IPV4`, `IPV6` and `DUAL`. Defaults to `IPV4`. If `IPV6` is specified, the subnets associated with the proxy must be IPv6-only, and `target_connection_network_type` must be `IPV6`.
  final pulumi.Input<String>? endpointNetworkType;

  /// The kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. For Aurora MySQL, RDS for MariaDB, and RDS for MySQL databases, specify `MYSQL`. For Aurora PostgreSQL and RDS for PostgreSQL databases, specify `POSTGRESQL`. For RDS for Microsoft SQL Server, specify `SQLSERVER`. Valid values are `MYSQL`, `POSTGRESQL`, and `SQLSERVER`.
  final pulumi.Input<String> engineFamily;

  /// The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.
  final pulumi.Input<int>? idleClientTimeout;

  /// The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy.
  final pulumi.Input<bool>? requireTls;

  /// The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
  final pulumi.Input<String> roleArn;

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Network type that the proxy uses to connect to the target database. Valid values are `IPV4` and `IPV6`. Defaults to `IPV4`.
  final pulumi.Input<String>? targetConnectionNetworkType;

  /// One or more VPC security group IDs to associate with the new proxy.
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// One or more VPC subnet IDs to associate with the new proxy.
  final pulumi.Input<List<String>> vpcSubnetIds;

  /// Creates a new [ProxyArgs].
  /// [auths] Configuration block(s) with authorization mechanisms to connect to the associated instances or clusters. Required when `default_auth_scheme` is `NONE` or unspecified. Described below.
  /// [debugLogging] Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.
  /// [defaultAuthScheme] Default authentication scheme that the proxy uses for client connections to the proxy and connections from the proxy to the underlying database. Valid values are `NONE` and `IAM_AUTH`. Defaults to `NONE`.
  /// [endpointNetworkType] Network type of the DB proxy endpoint. Valid values are `IPV4`, `IPV6` and `DUAL`. Defaults to `IPV4`. If `IPV6` is specified, the subnets associated with the proxy must be IPv6-only, and `target_connection_network_type` must be `IPV6`.
  /// [engineFamily] The kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. For Aurora MySQL, RDS for MariaDB, and RDS for MySQL databases, specify `MYSQL`. For Aurora PostgreSQL and RDS for PostgreSQL databases, specify `POSTGRESQL`. For RDS for Microsoft SQL Server, specify `SQLSERVER`. Valid values are `MYSQL`, `POSTGRESQL`, and `SQLSERVER`.
  /// [idleClientTimeout] The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.
  /// [name] The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requireTls] A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy.
  /// [roleArn] The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetConnectionNetworkType] Network type that the proxy uses to connect to the target database. Valid values are `IPV4` and `IPV6`. Defaults to `IPV4`.
  /// [vpcSecurityGroupIds] One or more VPC security group IDs to associate with the new proxy.
  /// [vpcSubnetIds] One or more VPC subnet IDs to associate with the new proxy.
  ProxyArgs({
    List<ProxyAuth>? auths,
    bool? debugLogging,
    String? defaultAuthScheme,
    String? endpointNetworkType,
    required String engineFamily,
    int? idleClientTimeout,
    String? name,
    String? region,
    bool? requireTls,
    required String roleArn,
    Map<String, String>? tags,
    String? targetConnectionNetworkType,
    List<String>? vpcSecurityGroupIds,
    required List<String> vpcSubnetIds,
  })  : auths = pulumi.Input.asOptionalInput<List<ProxyAuth>>(auths),
        debugLogging = pulumi.Input.asOptionalInput<bool>(debugLogging),
        defaultAuthScheme =
            pulumi.Input.asOptionalInput<String>(defaultAuthScheme),
        endpointNetworkType =
            pulumi.Input.asOptionalInput<String>(endpointNetworkType),
        engineFamily = pulumi.Input.asInput<String>(engineFamily),
        idleClientTimeout =
            pulumi.Input.asOptionalInput<int>(idleClientTimeout),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        requireTls = pulumi.Input.asOptionalInput<bool>(requireTls),
        roleArn = pulumi.Input.asInput<String>(roleArn),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        targetConnectionNetworkType =
            pulumi.Input.asOptionalInput<String>(targetConnectionNetworkType),
        vpcSecurityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds),
        vpcSubnetIds = pulumi.Input.asInput<List<String>>(vpcSubnetIds);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authsValue = auths;
    if (authsValue != null) {
      map['auths'] = pulumi.Input.mapOptionalInputValue<List<ProxyAuth>,
              List<Map<String, dynamic>>>(
          authsValue,
          (value) => pulumi.Input.encodeList<ProxyAuth, Map<String, dynamic>>(
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
      auths: map['auths'] == null
          ? null
          : pulumi.Input.decodeList<ProxyAuth>(
              map['auths'],
              (value) =>
                  ProxyAuth.fromMap((value as Map).cast<String, dynamic>())),
      debugLogging:
          map['debugLogging'] == null ? null : map['debugLogging'] as bool,
      defaultAuthScheme: map['defaultAuthScheme'] == null
          ? null
          : map['defaultAuthScheme'] as String,
      endpointNetworkType: map['endpointNetworkType'] == null
          ? null
          : map['endpointNetworkType'] as String,
      engineFamily: map['engineFamily'] as String,
      idleClientTimeout: map['idleClientTimeout'] == null
          ? null
          : map['idleClientTimeout'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      requireTls: map['requireTls'] == null ? null : map['requireTls'] as bool,
      roleArn: map['roleArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      targetConnectionNetworkType: map['targetConnectionNetworkType'] == null
          ? null
          : map['targetConnectionNetworkType'] as String,
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null
          ? null
          : (map['vpcSecurityGroupIds'] as List).cast<String>(),
      vpcSubnetIds: (map['vpcSubnetIds'] as List).cast<String>(),
    );
  }
}
