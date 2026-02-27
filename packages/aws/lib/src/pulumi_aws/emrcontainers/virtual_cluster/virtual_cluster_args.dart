// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../virtual_cluster_container_provider/virtual_cluster_container_provider.dart';

/// The set of arguments for VirtualCluster.
class VirtualClusterArgs {
  /// Configuration block for the container provider associated with your cluster.
  final pulumi.Input<VirtualClusterContainerProvider> containerProvider;

  /// Name of the virtual cluster.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  VirtualClusterArgs({
    required this.containerProvider,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerProvider'] = pulumi.Input.mapInputValue<
        VirtualClusterContainerProvider,
        Map<String, dynamic>>(containerProvider, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory VirtualClusterArgs.fromMap(Map<String, dynamic> map) {
    return VirtualClusterArgs(
      containerProvider: pulumi.Input.asInput<VirtualClusterContainerProvider>(
          map['containerProvider']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
