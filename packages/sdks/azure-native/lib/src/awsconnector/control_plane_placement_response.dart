// ignore_for_file: unused_element, unnecessary_cast


/// Definition of ControlPlanePlacementResponse
class ControlPlanePlacementResponse {
  /// <p>The name of the placement group for the Kubernetes control plane instances.</p>
  final String? groupName;

  /// Creates a new [ControlPlanePlacementResponse].
  /// [groupName] <p>The name of the placement group for the Kubernetes control plane instances.</p>
  ControlPlanePlacementResponse({
    this.groupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
    };
  }

  factory ControlPlanePlacementResponse.fromMap(Map<String, dynamic> map) {
    return ControlPlanePlacementResponse(
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
    );
  }
}

