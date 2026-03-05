// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ControlPlanePlacementResponse
class ControlPlanePlacementResponseResponse {
  /// &lt;p&gt;The name of the placement group for the Kubernetes control plane instances.&lt;/p&gt;
  final pulumi.Input<String>? groupName;

  /// Creates a new [ControlPlanePlacementResponseResponse].
  /// [groupName] &lt;p&gt;The name of the placement group for the Kubernetes control plane instances.&lt;/p&gt;
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
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

