// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStatusStatefulPerInstanceConfig {
  /// A bit indicating if all of the group's per-instance configs (listed in the output of a listPerInstanceConfigs API call) have status `EFFECTIVE` or there are no per-instance-configs.
  final bool? allEffective;

  /// Creates a new [InstanceGroupManagerStatusStatefulPerInstanceConfig].
  /// [allEffective] A bit indicating if all of the group's per-instance configs (listed in the output of a listPerInstanceConfigs API call) have status `EFFECTIVE` or there are no per-instance-configs.
  InstanceGroupManagerStatusStatefulPerInstanceConfig({
    this.allEffective,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allEffectiveValue = allEffective;
    if (allEffectiveValue != null) {
      map['allEffective'] = allEffectiveValue;
    }
    return map;
  }

  factory InstanceGroupManagerStatusStatefulPerInstanceConfig.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStatusStatefulPerInstanceConfig(
      allEffective:
          map['allEffective'] == null ? null : map['allEffective'] as bool,
    );
  }
}
