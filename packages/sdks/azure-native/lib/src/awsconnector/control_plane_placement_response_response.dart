// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ControlPlanePlacementResponse
class ControlPlanePlacementResponseResponse {
  /// <p>The name of the placement group for the Kubernetes control plane instances.</p>
  final String? groupName;

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
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
    );
  }
}

