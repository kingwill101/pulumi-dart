// ignore_for_file: unused_element, unnecessary_cast

class InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeBeta {
  /// A bit indicating if all of the group's per-instance configurations (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  final bool allEffective;

  /// Creates a new [InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeBeta].
  /// [allEffective] A bit indicating if all of the group's per-instance configurations (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeBeta({
    required this.allEffective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'allEffective': allEffective};
  }

  factory InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeBeta(
      allEffective: map['allEffective'] as bool,
    );
  }
}
