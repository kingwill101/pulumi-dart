// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_instance_group_manager_status_stateful_per_instance_config/region_instance_group_manager_status_stateful_per_instance_config.dart';

class RegionInstanceGroupManagerStatusStateful {
  /// A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful config even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  final bool? hasStatefulConfig;

  /// Status of per-instance configs on the instances.
  final List<RegionInstanceGroupManagerStatusStatefulPerInstanceConfig>?
      perInstanceConfigs;

  RegionInstanceGroupManagerStatusStateful({
    this.hasStatefulConfig,
    this.perInstanceConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hasStatefulConfigValue = hasStatefulConfig;
    if (hasStatefulConfigValue != null) {
      map['hasStatefulConfig'] = hasStatefulConfigValue;
    }
    final perInstanceConfigsValue = perInstanceConfigs;
    if (perInstanceConfigsValue != null) {
      map['perInstanceConfigs'] = Input.encodeList<
              RegionInstanceGroupManagerStatusStatefulPerInstanceConfig,
              Map<String, dynamic>>(
          perInstanceConfigsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegionInstanceGroupManagerStatusStateful.fromMap(
      Map<String, dynamic> map) {
    return RegionInstanceGroupManagerStatusStateful(
      hasStatefulConfig: map['hasStatefulConfig'] == null
          ? null
          : map['hasStatefulConfig'] as bool,
      perInstanceConfigs: map['perInstanceConfigs'] == null
          ? null
          : Input.decodeList<
                  RegionInstanceGroupManagerStatusStatefulPerInstanceConfig>(
              map['perInstanceConfigs'],
              (value) =>
                  RegionInstanceGroupManagerStatusStatefulPerInstanceConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
