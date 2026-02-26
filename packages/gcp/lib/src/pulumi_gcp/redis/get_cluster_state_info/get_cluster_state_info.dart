// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_state_info_update_info/get_cluster_state_info_update_info.dart';

class GetClusterStateInfo {
  /// A nested object resource.
  final List<GetClusterStateInfoUpdateInfo> updateInfos;

  GetClusterStateInfo({
    required this.updateInfos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['updateInfos'] =
        Input.encodeList<GetClusterStateInfoUpdateInfo, Map<String, dynamic>>(
            updateInfos, (value) => value.toMap());
    return map;
  }

  factory GetClusterStateInfo.fromMap(Map<String, dynamic> map) {
    return GetClusterStateInfo(
      updateInfos: Input.decodeList<GetClusterStateInfoUpdateInfo>(
          map['updateInfos'],
          (value) => GetClusterStateInfoUpdateInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
