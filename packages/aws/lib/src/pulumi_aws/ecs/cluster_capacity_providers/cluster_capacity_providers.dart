import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_capacity_providers_default_capacity_provider_strategy/cluster_capacity_providers_default_capacity_provider_strategy.dart';
import 'cluster_capacity_providers_args.dart';

/// Manages the capacity providers of an ECS Cluster.
///
/// More information about capacity providers can be found in the [ECS User Guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/cluster-capacity-providers.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ECS cluster capacity providers using the `cluster_name` attribute. For example:
///
/// ```sh
/// $ pulumi import aws:ecs/clusterCapacityProviders:ClusterCapacityProviders example my-cluster
/// ```
class ClusterCapacityProviders extends pulumi.CustomResource {
  /// Set of names of one or more capacity providers to associate with the cluster. Valid values also include `FARGATE` and `FARGATE_SPOT`.
  late final pulumi.Output<List<String>?> capacityProviders;

  /// Name of the ECS cluster to manage capacity providers for.
  late final pulumi.Output<String> clusterName;

  /// Set of capacity provider strategies to use by default for the cluster. Detailed below.
  late final pulumi
      .Output<List<ClusterCapacityProvidersDefaultCapacityProviderStrategy>?>
      defaultCapacityProviderStrategies;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  ClusterCapacityProviders(
    String name, {
    ClusterCapacityProvidersArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecs/clusterCapacityProviders:ClusterCapacityProviders',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.capacityProviders = registerOutput<List<String>?>('capacityProviders');
    this.clusterName = registerOutput<String>('clusterName');
    this.defaultCapacityProviderStrategies = registerOutput<
            List<ClusterCapacityProvidersDefaultCapacityProviderStrategy>?>(
        'defaultCapacityProviderStrategies');
    this.region = registerOutput<String>('region');
  }
}
