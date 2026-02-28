// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_state_info_update_info.dart';

class GetInstanceStateInfo {
  /// Represents information about instance with state UPDATING.
  final List<GetInstanceStateInfoUpdateInfo> updateInfos;

  /// Creates a new [GetInstanceStateInfo].
  /// [updateInfos] Represents information about instance with state UPDATING.
  GetInstanceStateInfo({
    required this.updateInfos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['updateInfos'] = pulumi.Input.encodeList<GetInstanceStateInfoUpdateInfo,
        Map<String, dynamic>>(updateInfos, (value) => value.toMap());
    return map;
  }

  factory GetInstanceStateInfo.fromMap(Map<String, dynamic> map) {
    return GetInstanceStateInfo(
      updateInfos: pulumi.Input.decodeList<GetInstanceStateInfoUpdateInfo>(
          map['updateInfos'],
          (value) => GetInstanceStateInfoUpdateInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
