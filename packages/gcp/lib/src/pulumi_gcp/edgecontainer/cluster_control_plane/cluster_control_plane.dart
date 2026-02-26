// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_control_plane_local/cluster_control_plane_local.dart';
import '../cluster_control_plane_remote/cluster_control_plane_remote.dart';

class ClusterControlPlane {
  /// Local control plane configuration.
  /// Structure is documented below.
  final ClusterControlPlaneLocal? local;

  /// Remote control plane configuration.
  /// Structure is documented below.
  final ClusterControlPlaneRemote? remote;

  ClusterControlPlane({
    this.local,
    this.remote,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final localValue = local;
    if (localValue != null) {
      map['local'] = localValue.toMap();
    }
    final remoteValue = remote;
    if (remoteValue != null) {
      map['remote'] = remoteValue.toMap();
    }
    return map;
  }

  factory ClusterControlPlane.fromMap(Map<String, dynamic> map) {
    return ClusterControlPlane(
      local: map['local'] == null
          ? null
          : ClusterControlPlaneLocal.fromMap(
              (map['local'] as Map).cast<String, dynamic>()),
      remote: map['remote'] == null
          ? null
          : ClusterControlPlaneRemote.fromMap(
              (map['remote'] as Map).cast<String, dynamic>()),
    );
  }
}
