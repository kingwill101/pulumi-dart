import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy_default_target_group_args.dart';
import 'proxy_default_target_group_connection_pool_config.dart';
import 'proxy_default_target_group_state.dart';

/// Provides a resource to manage an RDS DB proxy default target group resource.
///
/// The `aws.rds.ProxyDefaultTargetGroup` behaves differently from normal resources, in that the provider does not _create_ or _destroy_ this resource, since it implicitly exists as part of an RDS DB Proxy. On the provider resource creation it is automatically imported and on resource destruction, the provider performs no actions in RDS.
///
/// &gt; **NOTE:** When the associated `aws.rds.Proxy` resource is replaced, Terraform will lose track of this resource, causing unexpected differences on the next apply. To ensure proper dependency management, add a `lifecycle` block with `replace_triggered_by` referencing the `aws.rds.Proxy` resource's `id` attribute.
///
/// ## Import
///
/// Using `pulumi import`, import DB proxy default target groups using the `db_proxy_name`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/proxyDefaultTargetGroup:ProxyDefaultTargetGroup example example
/// ```
class ProxyDefaultTargetGroup extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) representing the target group.
  late final pulumi.Output<String> arn;

  /// The settings that determine the size and behavior of the connection pool for the target group.
  late final pulumi.Output<ProxyDefaultTargetGroupConnectionPoolConfig>
  connectionPoolConfig;

  /// Name of the RDS DB Proxy.
  late final pulumi.Output<String> dbProxyName;

  /// The name of the default target group.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ProxyDefaultTargetGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ProxyDefaultTargetGroup]. {@macro pulumi_rds_proxy_default_target_group_proxy_default_target_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ProxyDefaultTargetGroup(
    String name, {
    ProxyDefaultTargetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:rds/proxyDefaultTargetGroup:ProxyDefaultTargetGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    connectionPoolConfig =
        registerOutput<ProxyDefaultTargetGroupConnectionPoolConfig>(
          'connectionPoolConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ProxyDefaultTargetGroupConnectionPoolConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    dbProxyName = registerOutput<String>('dbProxyName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ProxyDefaultTargetGroup] resource's state with the given [name] and [id].
  static ProxyDefaultTargetGroup get(
    String name,
    pulumi.Input<String> id, {
    ProxyDefaultTargetGroupState? state,
  }) {
    return ProxyDefaultTargetGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ProxyDefaultTargetGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:rds/proxyDefaultTargetGroup:ProxyDefaultTargetGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    connectionPoolConfig =
        registerOutput<ProxyDefaultTargetGroupConnectionPoolConfig>(
          'connectionPoolConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ProxyDefaultTargetGroupConnectionPoolConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    dbProxyName = registerOutput<String>('dbProxyName');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
