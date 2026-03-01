// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mount_point_map.dart';

/// Kubernetes role storage resource
class KubernetesRoleStorage {
  /// Mount points of shares in role(s).
  final List<MountPointMap>? endpoints;

  /// Creates a new [KubernetesRoleStorage].
  /// [endpoints] Mount points of shares in role(s).
  KubernetesRoleStorage({
    this.endpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?endpoints == null ? null : pulumi.Input.encodeList<MountPointMap, Map<String, dynamic>>(endpoints!, (value) => value.toMap()),
    };
  }

  factory KubernetesRoleStorage.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleStorage(
      endpoints: map['endpoints'] == null ? null : pulumi.Input.decodeList<MountPointMap>(map['endpoints'], (value) => MountPointMap.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

