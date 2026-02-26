// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_state_info_update_info/cluster_state_info_update_info.dart';

class ClusterStateInfo {
  /// A nested object resource.
  /// Structure is documented below.
  final ClusterStateInfoUpdateInfo? updateInfo;

  ClusterStateInfo({
    this.updateInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final updateInfoValue = updateInfo;
    if (updateInfoValue != null) {
      map['updateInfo'] = updateInfoValue.toMap();
    }
    return map;
  }

  factory ClusterStateInfo.fromMap(Map<String, dynamic> map) {
    return ClusterStateInfo(
      updateInfo: map['updateInfo'] == null
          ? null
          : ClusterStateInfoUpdateInfo.fromMap(
              (map['updateInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
