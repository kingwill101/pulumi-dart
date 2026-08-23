// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mount_point_map.dart';

/// Kubernetes role storage resource
class KubernetesRoleStorage {
  /// Mount points of shares in role(s).
  final pulumi.Input<List<MountPointMap>>? endpoints;

  /// Creates a new [KubernetesRoleStorage].
  /// [endpoints] Mount points of shares in role(s).
  const KubernetesRoleStorage({
    this.endpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<MountPointMap>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<MountPointMap, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory KubernetesRoleStorage.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleStorage(
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MountPointMap>(guardedValue, (value) => MountPointMap.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
