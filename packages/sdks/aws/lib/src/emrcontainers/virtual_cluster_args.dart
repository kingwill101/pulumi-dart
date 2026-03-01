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
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualClusterArgs].
  /// [containerProvider] Configuration block for the container provider associated with your cluster.
  /// [name] Name of the virtual cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  VirtualClusterArgs({
    required pulumi.Output<VirtualClusterContainerProvider> containerProvider,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      containerProvider = pulumi.Input.asInput<VirtualClusterContainerProvider>(containerProvider),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      containerProvider: pulumi.Output.create<VirtualClusterContainerProvider>(VirtualClusterContainerProvider.fromMap((map['containerProvider'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

