// ignore_for_file: unused_element, unnecessary_cast


/// RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.
class RollingUpdateStatefulSetStrategyAppsV1beta1 {
  /// Partition indicates the ordinal at which the StatefulSet should be partitioned.
  final int? partition;

  /// Creates a new [RollingUpdateStatefulSetStrategyAppsV1beta1].
  /// [partition] Partition indicates the ordinal at which the StatefulSet should be partitioned.
  RollingUpdateStatefulSetStrategyAppsV1beta1({
    this.partition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partition': ?partition,
    };
  }

  factory RollingUpdateStatefulSetStrategyAppsV1beta1.fromMap(Map<String, dynamic> map) {
    return RollingUpdateStatefulSetStrategyAppsV1beta1(
      partition: map['partition'] == null ? null : map['partition'] as int,
    );
  }
}

