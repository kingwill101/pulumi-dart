// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../virtual_cluster_container_provider/virtual_cluster_container_provider.dart';

/// The set of arguments for VirtualCluster.
class VirtualClusterArgs {
  /// Configuration block for the container provider associated with your cluster.
  final Input<VirtualClusterContainerProvider> containerProvider;

  /// Name of the virtual cluster.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  VirtualClusterArgs({
    required this.containerProvider,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['containerProvider'] = Input.mapInputValue<
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
      containerProvider: Input.asInput<VirtualClusterContainerProvider>(
          map['containerProvider']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
