// ignore_for_file: unused_element, unnecessary_cast

class GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig {
  /// A bit indicating if all of the group's per-instance configs (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  final bool allEffective;

  /// Creates a new [GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig].
  /// [allEffective] A bit indicating if all of the group's per-instance configs (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig({
    required this.allEffective,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allEffective'] = allEffective;
    return map;
  }

  factory GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig.fromMap(
      Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig(
      allEffective: map['allEffective'] as bool,
    );
  }
}
