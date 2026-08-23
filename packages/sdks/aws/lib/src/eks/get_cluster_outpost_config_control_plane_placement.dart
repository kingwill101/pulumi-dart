// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterOutpostConfigControlPlanePlacement {
  /// The name of the placement group for the Kubernetes control plane instances.
  final pulumi.Input<String> groupName;
  /// Placement group spread level for etcd instances.
  final pulumi.Input<String> spreadLevel;

  /// Creates a new [GetClusterOutpostConfigControlPlanePlacement].
  /// [groupName] The name of the placement group for the Kubernetes control plane instances.
  /// [spreadLevel] Placement group spread level for etcd instances.
  const GetClusterOutpostConfigControlPlanePlacement({
    required this.groupName,
    required this.spreadLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
      'spreadLevel': spreadLevel,
    };
  }

  factory GetClusterOutpostConfigControlPlanePlacement.fromMap(Map<String, dynamic> map) {
    return GetClusterOutpostConfigControlPlanePlacement(
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      spreadLevel: pulumi.Input.fromValue(map['spreadLevel'] as String),
    );
  }
}
