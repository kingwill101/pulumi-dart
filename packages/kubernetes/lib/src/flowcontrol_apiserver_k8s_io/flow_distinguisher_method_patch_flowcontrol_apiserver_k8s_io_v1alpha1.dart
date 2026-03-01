// ignore_for_file: unused_element, unnecessary_cast


/// FlowDistinguisherMethod specifies the method of a flow distinguisher.
class FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1alpha1 {
  /// `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  final String? type;

  /// Creates a new [FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1alpha1].
  /// [type] `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1alpha1({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return FlowDistinguisherMethodPatchFlowcontrolApiserverK8sIoV1alpha1(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

