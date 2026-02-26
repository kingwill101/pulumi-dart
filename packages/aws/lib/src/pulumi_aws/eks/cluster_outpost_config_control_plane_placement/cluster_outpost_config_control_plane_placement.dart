// ignore_for_file: unused_element, unnecessary_cast

class ClusterOutpostConfigControlPlanePlacement {
  /// The name of the placement group for the Kubernetes control plane instances. This setting can't be changed after cluster creation.
  final String groupName;

  ClusterOutpostConfigControlPlanePlacement({
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupName'] = groupName;
    return map;
  }

  factory ClusterOutpostConfigControlPlanePlacement.fromMap(
      Map<String, dynamic> map) {
    return ClusterOutpostConfigControlPlanePlacement(
      groupName: map['groupName'] as String,
    );
  }
}
