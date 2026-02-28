// ignore_for_file: unused_element, unnecessary_cast

class GetInstanceGroupManagerStatusStatefulPerInstanceConfig {
  /// A bit indicating if all of the group's per-instance configs (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  final bool allEffective;

  /// Creates a new [GetInstanceGroupManagerStatusStatefulPerInstanceConfig].
  /// [allEffective] A bit indicating if all of the group's per-instance configs (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  GetInstanceGroupManagerStatusStatefulPerInstanceConfig({
    required this.allEffective,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allEffective'] = allEffective;
    return map;
  }

  factory GetInstanceGroupManagerStatusStatefulPerInstanceConfig.fromMap(
      Map<String, dynamic> map) {
    return GetInstanceGroupManagerStatusStatefulPerInstanceConfig(
      allEffective: map['allEffective'] as bool,
    );
  }
}
