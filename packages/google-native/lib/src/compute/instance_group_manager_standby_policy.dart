// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_standby_policy_mode.dart';

class InstanceGroupManagerStandbyPolicy {
  final int? initialDelaySec;

  /// Defines behaviour of using instances from standby pool to resize MIG.
  final InstanceGroupManagerStandbyPolicyMode? mode;

  /// Creates a new [InstanceGroupManagerStandbyPolicy].
  /// [initialDelaySec] Optional.
  /// [mode] Defines behaviour of using instances from standby pool to resize MIG.
  InstanceGroupManagerStandbyPolicy({this.initialDelaySec, this.mode});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialDelaySec': ?initialDelaySec,
      'mode': ?mode == null ? null : mode!.value,
    };
  }

  factory InstanceGroupManagerStandbyPolicy.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStandbyPolicy(
      initialDelaySec: map['initialDelaySec'] == null
          ? null
          : map['initialDelaySec'] as int,
      mode: map['mode'] == null
          ? null
          : InstanceGroupManagerStandbyPolicyMode.fromValue(
              map['mode'] as String,
            ),
    );
  }
}
