// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterOutpostConfigControlPlanePlacement {
  /// The name of the placement group for the Kubernetes control plane instances. This setting can't be changed after cluster creation.
  final pulumi.Input<String> groupName;

  /// Creates a new [ClusterOutpostConfigControlPlanePlacement].
  /// [groupName] The name of the placement group for the Kubernetes control plane instances. This setting can't be changed after cluster creation.
  ClusterOutpostConfigControlPlanePlacement({
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
    };
  }

  factory ClusterOutpostConfigControlPlanePlacement.fromMap(Map<String, dynamic> map) {
    return ClusterOutpostConfigControlPlanePlacement(
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
    );
  }
}

