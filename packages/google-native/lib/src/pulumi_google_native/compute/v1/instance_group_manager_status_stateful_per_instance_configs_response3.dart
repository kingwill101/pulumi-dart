// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse3 {
  /// A bit indicating if all of the group's per-instance configurations (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  final bool allEffective;

  InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse3({
    required this.allEffective,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allEffective'] = allEffective;
    return map;
  }

  factory InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse3.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse3(
      allEffective: map['allEffective'] as bool,
    );
  }
}
