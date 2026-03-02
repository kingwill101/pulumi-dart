// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_cluster_container_provider_info.dart';

class VirtualClusterContainerProvider {
  /// The name of the container provider that is running your EMR Containers cluster
  final pulumi.Input<String> id;
  /// Nested list containing information about the configuration of the container provider
  final pulumi.Input<VirtualClusterContainerProviderInfo> info;
  /// The type of the container provider
  final pulumi.Input<String> type;

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
    return <String, dynamic>{
      'id': id,
      'info': pulumi.Input.mapInputValue<VirtualClusterContainerProviderInfo, Map<String, dynamic>>(info, (value) => value.toMap()),
      'type': type,
    };
  }

  factory VirtualClusterContainerProvider.fromMap(Map<String, dynamic> map) {
    return VirtualClusterContainerProvider(
      id: (map['id'] as String).input(),
      info: (VirtualClusterContainerProviderInfo.fromMap((map['info'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

