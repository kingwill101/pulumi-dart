// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_state_info_update_info/get_instance_state_info_update_info.dart';

class GetInstanceStateInfo {
  /// Represents information about instance with state UPDATING.
  final List<GetInstanceStateInfoUpdateInfo> updateInfos;

  GetInstanceStateInfo({
    required this.updateInfos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['updateInfos'] =
        Input.encodeList<GetInstanceStateInfoUpdateInfo, Map<String, dynamic>>(
            updateInfos, (value) => value.toMap());
    return map;
  }

  factory GetInstanceStateInfo.fromMap(Map<String, dynamic> map) {
    return GetInstanceStateInfo(
      updateInfos: Input.decodeList<GetInstanceStateInfoUpdateInfo>(
          map['updateInfos'],
          (value) => GetInstanceStateInfoUpdateInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
