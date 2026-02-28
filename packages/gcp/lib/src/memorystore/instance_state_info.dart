// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_state_info_update_info.dart';

class InstanceStateInfo {
  /// (Output)
  /// Represents information about instance with state UPDATING.
  /// Structure is documented below.
  final List<InstanceStateInfoUpdateInfo>? updateInfos;

  /// Creates a new [InstanceStateInfo].
  /// [updateInfos] (Output)
  InstanceStateInfo({
    this.updateInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'updateInfos': ?updateInfos == null ? null : pulumi.Input.encodeList<InstanceStateInfoUpdateInfo, Map<String, dynamic>>(updateInfos!, (value) => value.toMap()),
    };
  }

  factory InstanceStateInfo.fromMap(Map<String, dynamic> map) {
    return InstanceStateInfo(
      updateInfos: map['updateInfos'] == null ? null : pulumi.Input.decodeList<InstanceStateInfoUpdateInfo>(map['updateInfos'], (value) => InstanceStateInfoUpdateInfo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

