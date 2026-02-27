// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_state_info_update_info/instance_state_info_update_info.dart';

class InstanceStateInfo {
  /// (Output)
  /// Represents information about instance with state UPDATING.
  /// Structure is documented below.
  final List<InstanceStateInfoUpdateInfo>? updateInfos;

  InstanceStateInfo({
    this.updateInfos,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final updateInfosValue = updateInfos;
    if (updateInfosValue != null) {
      map['updateInfos'] = pulumi.Input.encodeList<InstanceStateInfoUpdateInfo,
          Map<String, dynamic>>(updateInfosValue, (value) => value.toMap());
    }
    return map;
  }

  factory InstanceStateInfo.fromMap(Map<String, dynamic> map) {
    return InstanceStateInfo(
      updateInfos: map['updateInfos'] == null
          ? null
          : pulumi.Input.decodeList<InstanceStateInfoUpdateInfo>(
              map['updateInfos'],
              (value) => InstanceStateInfoUpdateInfo.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
