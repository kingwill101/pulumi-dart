// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_capacity_providers_default_capacity_provider_strategy.dart';

/// {@template pulumi_ecs_cluster_capacity_providers_cluster_capacity_providers_args_doc}
/// The set of arguments for ClusterCapacityProviders.
/// {@endtemplate}
/// {@macro pulumi_ecs_cluster_capacity_providers_cluster_capacity_providers_args_doc}
class ClusterCapacityProvidersArgs {
  /// Set of names of one or more capacity providers to associate with the cluster. Valid values also include `FARGATE` and `FARGATE_SPOT`.
  final pulumi.Input<List<String>>? capacityProviders;

  /// Name of the ECS cluster to manage capacity providers for.
  final pulumi.Input<String> clusterName;

  /// Set of capacity provider strategies to use by default for the cluster. Detailed below.
  final pulumi
      .Input<List<ClusterCapacityProvidersDefaultCapacityProviderStrategy>>?
      defaultCapacityProviderStrategies;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ClusterCapacityProvidersArgs].
  /// [capacityProviders] Set of names of one or more capacity providers to associate with the cluster. Valid values also include `FARGATE` and `FARGATE_SPOT`.
  /// [clusterName] Name of the ECS cluster to manage capacity providers for.
  /// [defaultCapacityProviderStrategies] Set of capacity provider strategies to use by default for the cluster. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  ClusterCapacityProvidersArgs({
    List<String>? capacityProviders,
    required String clusterName,
    List<ClusterCapacityProvidersDefaultCapacityProviderStrategy>?
        defaultCapacityProviderStrategies,
    String? region,
  })  : capacityProviders =
            pulumi.Input.asOptionalInput<List<String>>(capacityProviders),
        clusterName = pulumi.Input.asInput<String>(clusterName),
        defaultCapacityProviderStrategies = pulumi.Input.asOptionalInput<
                List<ClusterCapacityProvidersDefaultCapacityProviderStrategy>>(
            defaultCapacityProviderStrategies),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final capacityProvidersValue = capacityProviders;
    if (capacityProvidersValue != null) {
      map['capacityProviders'] = capacityProvidersValue;
    }
    map['clusterName'] = clusterName;
    final defaultCapacityProviderStrategiesValue =
        defaultCapacityProviderStrategies;
    if (defaultCapacityProviderStrategiesValue != null) {
      map['defaultCapacityProviderStrategies'] =
          pulumi.Input.mapOptionalInputValue<
                  List<ClusterCapacityProvidersDefaultCapacityProviderStrategy>,
                  List<Map<String, dynamic>>>(
              defaultCapacityProviderStrategiesValue,
              (value) => pulumi.Input.encodeList<
                  ClusterCapacityProvidersDefaultCapacityProviderStrategy,
                  Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ClusterCapacityProvidersArgs.fromMap(Map<String, dynamic> map) {
    return ClusterCapacityProvidersArgs(
      capacityProviders: map['capacityProviders'] == null
          ? null
          : (map['capacityProviders'] as List).cast<String>(),
      clusterName: map['clusterName'] as String,
      defaultCapacityProviderStrategies:
          map['defaultCapacityProviderStrategies'] == null
              ? null
              : pulumi.Input.decodeList<
                      ClusterCapacityProvidersDefaultCapacityProviderStrategy>(
                  map['defaultCapacityProviderStrategies'],
                  (value) =>
                      ClusterCapacityProvidersDefaultCapacityProviderStrategy
                          .fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
