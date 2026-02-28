// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_group_manager_status_stateful_per_instance_config.dart';

class GetRegionInstanceGroupManagerStatusStateful {
  /// A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful config even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  final bool hasStatefulConfig;

  /// Status of per-instance configs on the instances.
  final List<GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig>
      perInstanceConfigs;

  /// Creates a new [GetRegionInstanceGroupManagerStatusStateful].
  /// [hasStatefulConfig] A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful config even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  /// [perInstanceConfigs] Status of per-instance configs on the instances.
  GetRegionInstanceGroupManagerStatusStateful({
    required this.hasStatefulConfig,
    required this.perInstanceConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hasStatefulConfig'] = hasStatefulConfig;
    map['perInstanceConfigs'] = pulumi.Input.encodeList<
        GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig,
        Map<String, dynamic>>(perInstanceConfigs, (value) => value.toMap());
    return map;
  }

  factory GetRegionInstanceGroupManagerStatusStateful.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerStatusStateful(
      hasStatefulConfig: map['hasStatefulConfig'] as bool,
      perInstanceConfigs: pulumi.Input.decodeList<
              GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig>(
          map['perInstanceConfigs'],
          (value) =>
              GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
