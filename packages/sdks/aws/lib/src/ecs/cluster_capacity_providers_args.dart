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
  final pulumi.Input<List<ClusterCapacityProvidersDefaultCapacityProviderStrategy>>? defaultCapacityProviderStrategies;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [ClusterCapacityProvidersArgs].
  /// [capacityProviders] Set of names of one or more capacity providers to associate with the cluster. Valid values also include `FARGATE` and `FARGATE_SPOT`.
  /// [clusterName] Name of the ECS cluster to manage capacity providers for.
  /// [defaultCapacityProviderStrategies] Set of capacity provider strategies to use by default for the cluster. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const ClusterCapacityProvidersArgs({
    this.capacityProviders,
    required this.clusterName,
    this.defaultCapacityProviderStrategies,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityProviders': ?capacityProviders,
      'clusterName': clusterName,
      'defaultCapacityProviderStrategies': ?pulumi.Input.mapOptionalInputValue<List<ClusterCapacityProvidersDefaultCapacityProviderStrategy>, List<Map<String, dynamic>>>(defaultCapacityProviderStrategies, (value) => pulumi.Input.encodeList<ClusterCapacityProvidersDefaultCapacityProviderStrategy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory ClusterCapacityProvidersArgs.fromMap(Map<String, dynamic> map) {
    return ClusterCapacityProvidersArgs(
      capacityProviders: (() { final guardedValue = map['capacityProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      defaultCapacityProviderStrategies: (() { final guardedValue = map['defaultCapacityProviderStrategies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterCapacityProvidersDefaultCapacityProviderStrategy>(guardedValue, (value) => ClusterCapacityProvidersDefaultCapacityProviderStrategy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
