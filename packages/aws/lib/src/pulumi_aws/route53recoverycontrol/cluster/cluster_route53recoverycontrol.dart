import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_cluster_endpoint/cluster_cluster_endpoint_route53recoverycontrol.dart';
import 'cluster_route53recoverycontrol_args.dart';

/// Provides an AWS Route 53 Recovery Control Config Cluster.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Control Config cluster using the cluster ARN. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoverycontrol/cluster:Cluster mycluster arn:aws:route53-recovery-control::313517334327:cluster/f9ae13be-a11e-4ec7-8522-94a70468e6ea
/// ```
class ClusterRoute53recoverycontrol extends pulumi.CustomResource {
  /// ARN of the cluster
  late final pulumi.Output<String> arn;

  /// List of 5 endpoints in 5 regions that can be used to talk to the cluster. See below.
  late final pulumi.Output<List<ClusterClusterEndpointRoute53recoverycontrol>>
      clusterEndpoints;

  /// Unique name describing the cluster.
  late final pulumi.Output<String> name;

  /// Network type of cluster. Valid values are `IPV4` and `DUALSTACK`. Defaults to `IPV4`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> networkType;

  /// Status of cluster. `PENDING` when it is being created, `PENDING_DELETION` when it is being deleted and `DEPLOYED` otherwise.
  late final pulumi.Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ClusterRoute53recoverycontrol(
    String name, {
    ClusterRoute53recoverycontrolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53recoverycontrol/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterEndpoints =
        registerOutput<List<ClusterClusterEndpointRoute53recoverycontrol>>(
            'clusterEndpoints');
    this.name = registerOutput<String>('name');
    this.networkType = registerOutput<String>('networkType');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
