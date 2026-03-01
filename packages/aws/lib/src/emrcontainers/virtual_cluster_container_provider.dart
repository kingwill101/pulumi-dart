// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_cluster_container_provider_info.dart';

class VirtualClusterContainerProvider {
  /// The name of the container provider that is running your EMR Containers cluster
  final String id;

  /// Nested list containing information about the configuration of the container provider
  final VirtualClusterContainerProviderInfo info;

  /// The type of the container provider
  final String type;

  /// Creates a new [VirtualClusterContainerProvider].
  /// [id] The name of the container provider that is running your EMR Containers cluster
  /// [info] Nested list containing information about the configuration of the container provider
  /// [type] The type of the container provider
  VirtualClusterContainerProvider({
    required this.id,
    required this.info,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'info': info.toMap(), 'type': type};
  }

  factory VirtualClusterContainerProvider.fromMap(Map<String, dynamic> map) {
    return VirtualClusterContainerProvider(
      id: map['id'] as String,
      info: VirtualClusterContainerProviderInfo.fromMap(
        (map['info'] as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
