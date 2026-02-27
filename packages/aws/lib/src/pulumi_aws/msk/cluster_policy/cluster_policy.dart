import 'package:pulumi/pulumi.dart';
import 'cluster_policy_args.dart';

/// Resource for managing an AWS Managed Streaming for Kafka Cluster Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Managed Streaming for Kafka Cluster Policy using the `cluster_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:msk/clusterPolicy:ClusterPolicy example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3
/// ```
class ClusterPolicy extends CustomResource {
  /// The Amazon Resource Name (ARN) that uniquely identifies the cluster.
  late final Output<String> clusterArn;
  late final Output<String> currentVersion;

  /// Resource policy for cluster.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ClusterPolicy(
    String name, {
    ClusterPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:msk/clusterPolicy:ClusterPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusterArn = registerOutput<String>('clusterArn');
    this.currentVersion = registerOutput<String>('currentVersion');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
