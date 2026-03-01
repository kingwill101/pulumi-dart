// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_state_info_update_info.dart';

class GetClusterStateInfo {
  /// A nested object resource.
  final List<GetClusterStateInfoUpdateInfo> updateInfos;

  /// Creates a new [GetClusterStateInfo].
  /// [updateInfos] A nested object resource.
  GetClusterStateInfo({
    required this.updateInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateInfos': pulumi.Input.encodeList<GetClusterStateInfoUpdateInfo, Map<String, dynamic>>(updateInfos, (value) => value.toMap()),
    };
  }

  factory GetClusterStateInfo.fromMap(Map<String, dynamic> map) {
    return GetClusterStateInfo(
      updateInfos: pulumi.Input.decodeList<GetClusterStateInfoUpdateInfo>(map['updateInfos'], (value) => GetClusterStateInfoUpdateInfo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

