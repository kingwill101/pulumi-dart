// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse {
  /// A bit indicating if all of the group's per-instance configurations (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  final bool allEffective;

  /// Creates a new [InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse].
  /// [allEffective] A bit indicating if all of the group's per-instance configurations (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse({
    required this.allEffective,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allEffective'] = allEffective;
    return map;
  }

  factory InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse.fromMap(
      Map<String, dynamic> map) {
    return InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse(
      allEffective: map['allEffective'] as bool,
    );
  }
}
