// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_cluster_container_provider.dart';

/// {@template pulumi_emrcontainers_virtual_cluster_virtual_cluster_args_doc}
/// The set of arguments for VirtualCluster.
/// {@endtemplate}
/// {@macro pulumi_emrcontainers_virtual_cluster_virtual_cluster_args_doc}
class VirtualClusterArgs {
  /// Configuration block for the container provider associated with your cluster.
  final pulumi.Input<VirtualClusterContainerProvider> containerProvider;
  /// Name of the virtual cluster.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualClusterArgs].
  /// [containerProvider] Configuration block for the container provider associated with your cluster.
  /// [name] Name of the virtual cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const VirtualClusterArgs({
    required this.containerProvider,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerProvider': pulumi.Input.mapInputValue<VirtualClusterContainerProvider, Map<String, dynamic>>(containerProvider, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory VirtualClusterArgs.fromMap(Map<String, dynamic> map) {
    return VirtualClusterArgs(
      containerProvider: pulumi.Input.fromValue(VirtualClusterContainerProvider.fromMap((map['containerProvider']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
