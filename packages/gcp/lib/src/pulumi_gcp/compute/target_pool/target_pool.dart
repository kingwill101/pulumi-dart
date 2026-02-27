import 'package:pulumi/pulumi.dart';
import 'target_pool_args.dart';

/// Manages a Target Pool within GCE. This is a collection of instances used as
/// target of a network load balancer (Forwarding Rule). For more information see
/// [the official
/// documentation](https://cloud.google.com/compute/docs/load-balancing/network/target-pools)
/// and [API](https://cloud.google.com/compute/docs/reference/latest/targetPools).
///
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Target pools can be imported using any of the following formats:
///
/// * `projects/{{project}}/regions/{{region}}/targetPools/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, target pools can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetPool:TargetPool default projects/{{project}}/regions/{{region}}/targetPools/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetPool:TargetPool default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetPool:TargetPool default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetPool:TargetPool default {{name}}
/// ```
class TargetPool extends CustomResource {
  /// URL to the backup target pool. Must also set
  /// failover_ratio.
  late final Output<String?> backupPool;

  /// Textual description field.
  late final Output<String?> description;

  /// Ratio (0 to 1) of failed nodes before using the
  /// backup pool (which must also be set).
  late final Output<double?> failoverRatio;

  /// List of zero or one health check name or self_link. Only
  /// legacy `gcp.compute.HttpHealthCheck` is supported.
  late final Output<String?> healthChecks;

  /// List of instances in the pool. They can be given as
  /// URLs, or in the form of "zone/name". Note that the instances need not exist
  /// at the time of target pool creation, so there is no need to use the
  /// interpolation to create a dependency on the instances from the
  /// target pool.
  late final Output<List<String>> instances;

  /// A unique name for the resource, required by GCE. Changing
  /// this forces a new resource to be created.
  ///
  /// - - -
  late final Output<String> name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final Output<String> project;

  /// Where the target pool resides. Defaults to project
  /// region.
  late final Output<String> region;

  /// The resource URL for the security policy associated with this target pool.
  late final Output<String?> securityPolicy;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// How to distribute load. Options are "NONE" (no
  /// affinity). "CLIENT_IP" (hash of the source/dest addresses / ports), and
  /// "CLIENT_IP_PROTO" also includes the protocol (default "NONE").
  late final Output<String?> sessionAffinity;

  TargetPool(
    String name, {
    TargetPoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetPool:TargetPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupPool = registerOutput<String?>('backupPool');
    this.description = registerOutput<String?>('description');
    this.failoverRatio = registerOutput<double?>('failoverRatio');
    this.healthChecks = registerOutput<String?>('healthChecks');
    this.instances = registerOutput<List<String>>('instances');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.securityPolicy = registerOutput<String?>('securityPolicy');
    this.selfLink = registerOutput<String>('selfLink');
    this.sessionAffinity = registerOutput<String?>('sessionAffinity');
  }
}
