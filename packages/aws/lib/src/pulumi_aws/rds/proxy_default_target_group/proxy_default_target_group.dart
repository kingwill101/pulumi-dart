import 'package:pulumi/pulumi.dart';
import '../proxy_default_target_group_connection_pool_config/proxy_default_target_group_connection_pool_config.dart';
import 'proxy_default_target_group_args.dart';

/// Provides a resource to manage an RDS DB proxy default target group resource.
///
/// The <span pulumi-lang-nodejs="`aws.rds.ProxyDefaultTargetGroup`" pulumi-lang-dotnet="`aws.rds.ProxyDefaultTargetGroup`" pulumi-lang-go="`rds.ProxyDefaultTargetGroup`" pulumi-lang-python="`rds.ProxyDefaultTargetGroup`" pulumi-lang-yaml="`aws.rds.ProxyDefaultTargetGroup`" pulumi-lang-java="`aws.rds.ProxyDefaultTargetGroup`">`aws.rds.ProxyDefaultTargetGroup`</span> behaves differently from normal resources, in that the provider does not _create_ or _destroy_ this resource, since it implicitly exists as part of an RDS DB Proxy. On the provider resource creation it is automatically imported and on resource destruction, the provider performs no actions in RDS.
///
/// > **NOTE:** When the associated <span pulumi-lang-nodejs="`aws.rds.Proxy`" pulumi-lang-dotnet="`aws.rds.Proxy`" pulumi-lang-go="`rds.Proxy`" pulumi-lang-python="`rds.Proxy`" pulumi-lang-yaml="`aws.rds.Proxy`" pulumi-lang-java="`aws.rds.Proxy`">`aws.rds.Proxy`</span> resource is replaced, Terraform will lose track of this resource, causing unexpected differences on the next apply. To ensure proper dependency management, add a <span pulumi-lang-nodejs="`lifecycle`" pulumi-lang-dotnet="`Lifecycle`" pulumi-lang-go="`lifecycle`" pulumi-lang-python="`lifecycle`" pulumi-lang-yaml="`lifecycle`" pulumi-lang-java="`lifecycle`">`lifecycle`</span> block with <span pulumi-lang-nodejs="`replaceTriggeredBy`" pulumi-lang-dotnet="`ReplaceTriggeredBy`" pulumi-lang-go="`replaceTriggeredBy`" pulumi-lang-python="`replace_triggered_by`" pulumi-lang-yaml="`replaceTriggeredBy`" pulumi-lang-java="`replaceTriggeredBy`">`replace_triggered_by`</span> referencing the <span pulumi-lang-nodejs="`aws.rds.Proxy`" pulumi-lang-dotnet="`aws.rds.Proxy`" pulumi-lang-go="`rds.Proxy`" pulumi-lang-python="`rds.Proxy`" pulumi-lang-yaml="`aws.rds.Proxy`" pulumi-lang-java="`aws.rds.Proxy`">`aws.rds.Proxy`</span> resource's <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> attribute.
///
/// ## Import
///
/// Using `pulumi import`, import DB proxy default target groups using the <span pulumi-lang-nodejs="`dbProxyName`" pulumi-lang-dotnet="`DbProxyName`" pulumi-lang-go="`dbProxyName`" pulumi-lang-python="`db_proxy_name`" pulumi-lang-yaml="`dbProxyName`" pulumi-lang-java="`dbProxyName`">`db_proxy_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:rds/proxyDefaultTargetGroup:ProxyDefaultTargetGroup example example
/// ```
class ProxyDefaultTargetGroup extends CustomResource {
  /// The Amazon Resource Name (ARN) representing the target group.
  late final Output<String> arn;

  /// The settings that determine the size and behavior of the connection pool for the target group.
  late final Output<ProxyDefaultTargetGroupConnectionPoolConfig>
      connectionPoolConfig;

  /// Name of the RDS DB Proxy.
  late final Output<String> dbProxyName;

  /// The name of the default target group.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ProxyDefaultTargetGroup(
    String name, {
    ProxyDefaultTargetGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/proxyDefaultTargetGroup:ProxyDefaultTargetGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.connectionPoolConfig =
        Output.createUnknown<ProxyDefaultTargetGroupConnectionPoolConfig>();
    this.dbProxyName = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
