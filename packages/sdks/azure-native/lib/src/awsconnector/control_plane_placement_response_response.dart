// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ControlPlanePlacementResponse
class ControlPlanePlacementResponseResponse {
  /// <p>The name of the placement group for the Kubernetes control plane instances.</p>
  final pulumi.Input<String>? groupName;

  /// Creates a new [ControlPlanePlacementResponseResponse].
  /// [groupName] <p>The name of the placement group for the Kubernetes control plane instances.</p>
  ControlPlanePlacementResponseResponse({
    this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
    };
  }

  factory ControlPlanePlacementResponseResponse.fromMap(Map<String, dynamic> map) {
    return ControlPlanePlacementResponseResponse(
      groupName: map['groupName'] == null ? null : (map['groupName'] as String).input(),
    );
  }
}

