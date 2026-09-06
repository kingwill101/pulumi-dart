// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ControlPlanePlacementResponse
class ControlPlanePlacementResponse {
  /// &lt;p&gt;The name of the placement group for the Kubernetes control plane instances.&lt;/p&gt;
  final pulumi.Input<String?>? groupName;

  /// Creates a new [ControlPlanePlacementResponse].
  /// [groupName] &lt;p&gt;The name of the placement group for the Kubernetes control plane instances.&lt;/p&gt;
  const ControlPlanePlacementResponse({
    this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
    };
  }

  factory ControlPlanePlacementResponse.fromMap(Map<String, dynamic> map) {
    return ControlPlanePlacementResponse(
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
