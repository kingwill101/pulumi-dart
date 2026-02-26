// ignore_for_file: unused_element, unnecessary_cast

class GetClusterOutpostConfigControlPlanePlacement {
  /// The name of the placement group for the Kubernetes control plane instances.
  final String groupName;

  GetClusterOutpostConfigControlPlanePlacement({
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupName'] = groupName;
    return map;
  }

  factory GetClusterOutpostConfigControlPlanePlacement.fromMap(
      Map<String, dynamic> map) {
    return GetClusterOutpostConfigControlPlanePlacement(
      groupName: map['groupName'] as String,
    );
  }
}
