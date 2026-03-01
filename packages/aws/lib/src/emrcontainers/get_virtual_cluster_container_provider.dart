// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_cluster_container_provider_info.dart';

class GetVirtualClusterContainerProvider {
  /// The name of the container provider that is running your EMR Containers cluster
  final String id;

  /// Nested list containing information about the configuration of the container provider
  final List<GetVirtualClusterContainerProviderInfo> infos;

  /// The type of the container provider
  final String type;

  /// Creates a new [GetVirtualClusterContainerProvider].
  /// [id] The name of the container provider that is running your EMR Containers cluster
  /// [infos] Nested list containing information about the configuration of the container provider
  /// [type] The type of the container provider
  GetVirtualClusterContainerProvider({
    required this.id,
    required this.infos,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'infos':
          pulumi.Input.encodeList<
            GetVirtualClusterContainerProviderInfo,
            Map<String, dynamic>
          >(infos, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetVirtualClusterContainerProvider.fromMap(Map<String, dynamic> map) {
    return GetVirtualClusterContainerProvider(
      id: map['id'] as String,
      infos: pulumi.Input.decodeList<GetVirtualClusterContainerProviderInfo>(
        map['infos'],
        (value) => GetVirtualClusterContainerProviderInfo.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      type: map['type'] as String,
    );
  }
}
