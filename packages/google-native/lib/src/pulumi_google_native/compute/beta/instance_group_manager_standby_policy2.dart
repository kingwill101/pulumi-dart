// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_standby_policy_mode2.dart';

class InstanceGroupManagerStandbyPolicy2 {
  final int? initialDelaySec;

  /// Defines behaviour of using instances from standby pool to resize MIG.
  final InstanceGroupManagerStandbyPolicyMode2? mode;

  InstanceGroupManagerStandbyPolicy2({
    this.initialDelaySec,
    this.mode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final initialDelaySecValue = initialDelaySec;
    if (initialDelaySecValue != null) {
      map['initialDelaySec'] = initialDelaySecValue;
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue.value;
    }
    return map;
  }

  factory InstanceGroupManagerStandbyPolicy2.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStandbyPolicy2(
      initialDelaySec:
          map['initialDelaySec'] == null ? null : map['initialDelaySec'] as int,
      mode: map['mode'] == null
          ? null
          : InstanceGroupManagerStandbyPolicyMode2.fromValue(
              map['mode'] as String),
    );
  }
}
