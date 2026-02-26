// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_cluster_container_provider_info/virtual_cluster_container_provider_info.dart';

class VirtualClusterContainerProvider {
  /// The name of the container provider that is running your EMR Containers cluster
  final String id;

  /// Nested list containing information about the configuration of the container provider
  final VirtualClusterContainerProviderInfo info;

  /// The type of the container provider
  final String type;

  VirtualClusterContainerProvider({
    required this.id,
    required this.info,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['info'] = info.toMap();
    map['type'] = type;
    return map;
  }

  factory VirtualClusterContainerProvider.fromMap(Map<String, dynamic> map) {
    return VirtualClusterContainerProvider(
      id: map['id'] as String,
      info: VirtualClusterContainerProviderInfo.fromMap(
          (map['info'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
