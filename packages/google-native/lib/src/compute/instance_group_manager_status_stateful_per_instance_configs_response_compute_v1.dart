// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1 {
  /// A bit indicating if all of the group's per-instance configurations (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  final bool allEffective;

  /// Creates a new [InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1].
  /// [allEffective] A bit indicating if all of the group's per-instance configurations (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1({
    required this.allEffective,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allEffective'] = allEffective;
    return map;
  }

  factory InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1(
      allEffective: map['allEffective'] as bool,
    );
  }
}
