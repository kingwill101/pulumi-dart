import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_endpoint_args.dart';

/// Provides an RDS DB proxy endpoint resource. For additional information, see the [RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/rds-proxy-endpoints.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DB proxy endpoints using the `DB-PROXY-NAME/DB-PROXY-ENDPOINT-NAME`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/proxyEndpoint:ProxyEndpoint example example/example
/// ```
class ProxyEndpoint extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) for the proxy endpoint.
  late final pulumi.Output<String> arn;

  /// The identifier for the proxy endpoint. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens.
  late final pulumi.Output<String> dbProxyEndpointName;

  /// The name of the DB proxy associated with the DB proxy endpoint that you create.
  late final pulumi.Output<String> dbProxyName;

  /// The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application.
  late final pulumi.Output<String> endpoint;

  /// Indicates whether this endpoint is the default endpoint for the associated DB proxy.
  late final pulumi.Output<bool> isDefault;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Indicates whether the DB proxy endpoint can be used for read/write or read-only operations. The default is `READ_WRITE`. Valid values are `READ_WRITE` and `READ_ONLY`.
  late final pulumi.Output<String?> targetRole;

  /// The VPC ID of the DB proxy endpoint.
  late final pulumi.Output<String> vpcId;

  /// One or more VPC security group IDs to associate with the new proxy.
  late final pulumi.Output<List<String>> vpcSecurityGroupIds;

  /// One or more VPC subnet IDs to associate with the new proxy.
  late final pulumi.Output<List<String>> vpcSubnetIds;

  ProxyEndpoint(
    String name, {
    ProxyEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:rds/proxyEndpoint:ProxyEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.dbProxyEndpointName = registerOutput<String>('dbProxyEndpointName');
    this.dbProxyName = registerOutput<String>('dbProxyName');
    this.endpoint = registerOutput<String>('endpoint');
    this.isDefault = registerOutput<bool>('isDefault');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetRole = registerOutput<String?>('targetRole');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
    this.vpcSubnetIds = registerOutput<List<String>>('vpcSubnetIds');
  }
}
