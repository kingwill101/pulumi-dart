import 'package:pulumi/pulumi.dart' as pulumi;
import '../proxy_auth/proxy_auth.dart';
import 'proxy_args.dart';

/// Provides an RDS DB proxy resource. For additional information, see the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-proxy.html).
///
/// > **Note:** Not all Availability Zones (AZs) support DB proxies. Specifying `vpc_subnet_ids` for AZs that do not support proxies will not trigger an error as long as at least one `vpc_subnet_id` is valid. However, this will cause Terraform to continuously detect differences between the configuration and the actual infrastructure. Refer to the Unsupported Availability Zones section below for potential workarounds.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Unsupported Availability Zones
///
/// Terraform may report constant differences if you use `vpc_subnet_ids` that correspond to Availability Zones (AZs) that do not support a DB proxy. While this typically does not result in an error, AWS only returns `vpc_subnet_ids` for AZs that support DB proxies. As a result, Terraform detects a mismatch between your configuration and the actual infrastructure, leading it to report that changes are required. Below are some ways to avoid this issue.
///
/// One solution is to exclude AZs that do not support DB proxies by using the `aws.getAvailabilityZones` data source. The example below demonstrates how to configure this for the `us-east-1` region, excluding the `use1-az3` AZ. (Keep in mind that AZ names can vary between accounts, while AZ IDs remain consistent.) If the `us-east-1` region has six AZs in total and you aim to configure the maximum number of subnets, you would exclude one AZ and configure five subnets:
///
///
///
/// Another approach is to use the `lifecycle` `ignore_changes` meta-argument. With this method, Terraform will stop detecting differences for the `vpc_subnet_ids` argument. However, note that this approach disables Terraform's ability to track and manage updates to `vpc_subnet_ids`, so use it carefully to avoid unintended drift between your configuration and the actual infrastructure.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DB proxies using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/proxy:Proxy example example
/// ```
class Proxy extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) for the proxy.
  late final pulumi.Output<String> arn;

  /// Configuration block(s) with authorization mechanisms to connect to the associated instances or clusters. Required when `default_auth_scheme` is `NONE` or unspecified. Described below.
  late final pulumi.Output<List<ProxyAuth>?> auths;

  /// Whether the proxy includes detailed information about SQL statements in its logs. This information helps you to debug issues involving SQL behavior or the performance and scalability of the proxy connections. The debug information includes the text of SQL statements that you submit through the proxy. Thus, only enable this setting when needed for debugging, and only when you have security measures in place to safeguard any sensitive information that appears in the logs.
  late final pulumi.Output<bool?> debugLogging;

  /// Default authentication scheme that the proxy uses for client connections to the proxy and connections from the proxy to the underlying database. Valid values are `NONE` and `IAM_AUTH`. Defaults to `NONE`.
  late final pulumi.Output<String> defaultAuthScheme;

  /// The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application.
  late final pulumi.Output<String> endpoint;

  /// Network type of the DB proxy endpoint. Valid values are `IPV4`, `IPV6` and `DUAL`. Defaults to `IPV4`. If `IPV6` is specified, the subnets associated with the proxy must be IPv6-only, and `target_connection_network_type` must be `IPV6`.
  late final pulumi.Output<String> endpointNetworkType;

  /// The kinds of databases that the proxy can connect to. This value determines which database network protocol the proxy recognizes when it interprets network traffic to and from the database. For Aurora MySQL, RDS for MariaDB, and RDS for MySQL databases, specify `MYSQL`. For Aurora PostgreSQL and RDS for PostgreSQL databases, specify `POSTGRESQL`. For RDS for Microsoft SQL Server, specify `SQLSERVER`. Valid values are `MYSQL`, `POSTGRESQL`, and `SQLSERVER`.
  late final pulumi.Output<String> engineFamily;

  /// The number of seconds that a connection to the proxy can be inactive before the proxy disconnects it. You can set this value higher or lower than the connection timeout limit for the associated database.
  late final pulumi.Output<int> idleClientTimeout;

  /// The identifier for the proxy. This name must be unique for all proxies owned by your AWS account in the specified AWS Region. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A Boolean parameter that specifies whether Transport Layer Security (TLS) encryption is required for connections to the proxy. By enabling this setting, you can enforce encrypted TLS connections to the proxy.
  late final pulumi.Output<bool?> requireTls;

  /// The Amazon Resource Name (ARN) of the IAM role that the proxy uses to access secrets in AWS Secrets Manager.
  late final pulumi.Output<String> roleArn;

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Network type that the proxy uses to connect to the target database. Valid values are `IPV4` and `IPV6`. Defaults to `IPV4`.
  late final pulumi.Output<String> targetConnectionNetworkType;

  /// One or more VPC security group IDs to associate with the new proxy.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  /// One or more VPC subnet IDs to associate with the new proxy.
  late final pulumi.Output<List<String>> vpcSubnetIds;

  Proxy(
    String name, {
    ProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/proxy:Proxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.auths = registerOutput<List<ProxyAuth>?>('auths');
    this.debugLogging = registerOutput<bool?>('debugLogging');
    this.defaultAuthScheme = registerOutput<String>('defaultAuthScheme');
    this.endpoint = registerOutput<String>('endpoint');
    this.endpointNetworkType = registerOutput<String>('endpointNetworkType');
    this.engineFamily = registerOutput<String>('engineFamily');
    this.idleClientTimeout = registerOutput<int>('idleClientTimeout');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.requireTls = registerOutput<bool?>('requireTls');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetConnectionNetworkType =
        registerOutput<String>('targetConnectionNetworkType');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
    this.vpcSubnetIds = registerOutput<List<String>>('vpcSubnetIds');
  }
}
