// ignore_for_file: unused_element, unnecessary_cast


/// PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
class PriorityLevelConfigurationReferencePatchFlowcontrolApiserverK8sIoV1beta3 {
  /// `name` is the name of the priority level configuration being referenced Required.
  final String? name;

  /// Creates a new [PriorityLevelConfigurationReferencePatchFlowcontrolApiserverK8sIoV1beta3].
  /// [name] `name` is the name of the priority level configuration being referenced Required.
  PriorityLevelConfigurationReferencePatchFlowcontrolApiserverK8sIoV1beta3({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory PriorityLevelConfigurationReferencePatchFlowcontrolApiserverK8sIoV1beta3.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationReferencePatchFlowcontrolApiserverK8sIoV1beta3(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

