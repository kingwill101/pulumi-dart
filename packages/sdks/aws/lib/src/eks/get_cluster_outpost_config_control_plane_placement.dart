// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterOutpostConfigControlPlanePlacement {
  /// The name of the placement group for the Kubernetes control plane instances.
  final pulumi.Input<String> groupName;

  /// Creates a new [GetClusterOutpostConfigControlPlanePlacement].
  /// [groupName] The name of the placement group for the Kubernetes control plane instances.
  GetClusterOutpostConfigControlPlanePlacement({
    required this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': groupName,
    };
  }

  factory GetClusterOutpostConfigControlPlanePlacement.fromMap(Map<String, dynamic> map) {
    return GetClusterOutpostConfigControlPlanePlacement(
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
    );
  }
}

