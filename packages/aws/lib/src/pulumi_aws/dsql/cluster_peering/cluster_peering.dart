import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_peering_timeouts/cluster_peering_timeouts.dart';
import 'cluster_peering_args.dart';

/// Resource for managing an Amazon Aurora DSQL Cluster Peering.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DSQL Cluster Peering using the `identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:dsql/clusterPeering:ClusterPeering example cluster-id-12345678
/// ```
class ClusterPeering extends pulumi.CustomResource {
  /// List of DSQL Cluster ARNs to be peered to this cluster.
  late final pulumi.Output<List<String>> clusters;

  /// DSQL Cluster Identifier.
  late final pulumi.Output<String> identifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<ClusterPeeringTimeouts?> timeouts;

  /// Witness region for a multi-region cluster.
  late final pulumi.Output<String> witnessRegion;

  ClusterPeering(
    String name, {
    ClusterPeeringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dsql/clusterPeering:ClusterPeering',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clusters = registerOutput<List<String>>('clusters');
    this.identifier = registerOutput<String>('identifier');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<ClusterPeeringTimeouts?>('timeouts');
    this.witnessRegion = registerOutput<String>('witnessRegion');
  }
}
