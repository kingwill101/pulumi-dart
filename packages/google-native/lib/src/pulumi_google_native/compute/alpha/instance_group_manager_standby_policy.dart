// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_standby_policy_mode.dart';

class InstanceGroupManagerStandbyPolicy {
  final int? initialDelaySec;

  /// Defines behaviour of using instances from standby pool to resize MIG.
  final InstanceGroupManagerStandbyPolicyMode? mode;

  InstanceGroupManagerStandbyPolicy({
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

  factory InstanceGroupManagerStandbyPolicy.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStandbyPolicy(
      initialDelaySec:
          map['initialDelaySec'] == null ? null : map['initialDelaySec'] as int,
      mode: map['mode'] == null
          ? null
          : InstanceGroupManagerStandbyPolicyMode.fromValue(
              map['mode'] as String),
    );
  }
}
