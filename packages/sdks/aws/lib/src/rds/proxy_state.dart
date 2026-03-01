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
    pulumi.Output<String>? arn,
    pulumi.Output<List<ProxyAuth>>? auths,
    pulumi.Output<bool>? debugLogging,
    pulumi.Output<String>? defaultAuthScheme,
    pulumi.Output<String>? endpoint,
    pulumi.Output<String>? endpointNetworkType,
    pulumi.Output<String>? engineFamily,
    pulumi.Output<int>? idleClientTimeout,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? requireTls,
    pulumi.Output<String>? roleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? targetConnectionNetworkType,
    pulumi.Output<List<String>>? vpcSecurityGroupIds,
    pulumi.Output<List<String>>? vpcSubnetIds,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      auths = pulumi.Input.asOptionalInput<List<ProxyAuth>>(auths),
      debugLogging = pulumi.Input.asOptionalInput<bool>(debugLogging),
      defaultAuthScheme = pulumi.Input.asOptionalInput<String>(defaultAuthScheme),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      endpointNetworkType = pulumi.Input.asOptionalInput<String>(endpointNetworkType),
      engineFamily = pulumi.Input.asOptionalInput<String>(engineFamily),
      idleClientTimeout = pulumi.Input.asOptionalInput<int>(idleClientTimeout),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      requireTls = pulumi.Input.asOptionalInput<bool>(requireTls),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetConnectionNetworkType = pulumi.Input.asOptionalInput<String>(targetConnectionNetworkType),
      vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(vpcSecurityGroupIds),
      vpcSubnetIds = pulumi.Input.asOptionalInput<List<String>>(vpcSubnetIds);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      auths: map['auths'] == null ? null : pulumi.Output.create<List<ProxyAuth>>(pulumi.Input.decodeList<ProxyAuth>(map['auths'], (value) => ProxyAuth.fromMap((value as Map).cast<String, dynamic>()))),
      debugLogging: map['debugLogging'] == null ? null : pulumi.Output.create<bool>(map['debugLogging'] as bool),
      defaultAuthScheme: map['defaultAuthScheme'] == null ? null : pulumi.Output.create<String>(map['defaultAuthScheme'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      endpointNetworkType: map['endpointNetworkType'] == null ? null : pulumi.Output.create<String>(map['endpointNetworkType'] as String),
      engineFamily: map['engineFamily'] == null ? null : pulumi.Output.create<String>(map['engineFamily'] as String),
      idleClientTimeout: map['idleClientTimeout'] == null ? null : pulumi.Output.create<int>(map['idleClientTimeout'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requireTls: map['requireTls'] == null ? null : pulumi.Output.create<bool>(map['requireTls'] as bool),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetConnectionNetworkType: map['targetConnectionNetworkType'] == null ? null : pulumi.Output.create<String>(map['targetConnectionNetworkType'] as String),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcSecurityGroupIds'] as List).cast<String>()),
      vpcSubnetIds: map['vpcSubnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['vpcSubnetIds'] as List).cast<String>()),
    );
  }
}

