// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_standby_policy_mode_compute_beta.dart';

class InstanceGroupManagerStandbyPolicyComputeBeta {
  final int? initialDelaySec;

  /// Defines behaviour of using instances from standby pool to resize MIG.
  final InstanceGroupManagerStandbyPolicyModeComputeBeta? mode;

  /// Creates a new [InstanceGroupManagerStandbyPolicyComputeBeta].
  /// [initialDelaySec] Optional.
  /// [mode] Defines behaviour of using instances from standby pool to resize MIG.
  InstanceGroupManagerStandbyPolicyComputeBeta({
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

  factory InstanceGroupManagerStandbyPolicyComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStandbyPolicyComputeBeta(
      initialDelaySec:
          map['initialDelaySec'] == null ? null : map['initialDelaySec'] as int,
      mode: map['mode'] == null
          ? null
          : InstanceGroupManagerStandbyPolicyModeComputeBeta.fromValue(
              map['mode'] as String),
    );
  }
}
