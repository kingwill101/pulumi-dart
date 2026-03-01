// ignore_for_file: unused_element, unnecessary_cast

import 'instance_group_manager_status_stateful_per_instance_configs_response_compute_beta.dart';

class InstanceGroupManagerStatusStatefulResponseComputeBeta {
  /// A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful configuration even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  final bool hasStatefulConfig;

  /// A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful configuration even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions. This field is deprecated in favor of has_stateful_config.
  final bool isStateful;

  /// Status of per-instance configurations on the instance.
  final InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeBeta
  perInstanceConfigs;

  /// Creates a new [InstanceGroupManagerStatusStatefulResponseComputeBeta].
  /// [hasStatefulConfig] A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful configuration even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  /// [isStateful] A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful configuration even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions. This field is deprecated in favor of has_stateful_config.
  /// [perInstanceConfigs] Status of per-instance configurations on the instance.
  InstanceGroupManagerStatusStatefulResponseComputeBeta({
    required this.hasStatefulConfig,
    required this.isStateful,
    required this.perInstanceConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hasStatefulConfig': hasStatefulConfig,
      'isStateful': isStateful,
      'perInstanceConfigs': perInstanceConfigs.toMap(),
    };
  }

  factory InstanceGroupManagerStatusStatefulResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerStatusStatefulResponseComputeBeta(
      hasStatefulConfig: map['hasStatefulConfig'] as bool,
      isStateful: map['isStateful'] as bool,
      perInstanceConfigs:
          InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeBeta.fromMap(
            (map['perInstanceConfigs'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
