// ignore_for_file: unused_element, unnecessary_cast


/// PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
class PriorityLevelConfigurationReferenceFlowcontrolApiserverK8sIoV1alpha1 {
  /// `name` is the name of the priority level configuration being referenced Required.
  final String name;

  /// Creates a new [PriorityLevelConfigurationReferenceFlowcontrolApiserverK8sIoV1alpha1].
  /// [name] `name` is the name of the priority level configuration being referenced Required.
  PriorityLevelConfigurationReferenceFlowcontrolApiserverK8sIoV1alpha1({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PriorityLevelConfigurationReferenceFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationReferenceFlowcontrolApiserverK8sIoV1alpha1(
      name: map['name'] as String,
    );
  }
}

