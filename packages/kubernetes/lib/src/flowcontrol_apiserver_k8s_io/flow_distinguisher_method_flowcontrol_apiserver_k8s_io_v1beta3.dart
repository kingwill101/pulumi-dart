// ignore_for_file: unused_element, unnecessary_cast


/// FlowDistinguisherMethod specifies the method of a flow distinguisher.
class FlowDistinguisherMethodFlowcontrolApiserverK8sIoV1beta3 {
  /// `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  final String type;

  /// Creates a new [FlowDistinguisherMethodFlowcontrolApiserverK8sIoV1beta3].
  /// [type] `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  FlowDistinguisherMethodFlowcontrolApiserverK8sIoV1beta3({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory FlowDistinguisherMethodFlowcontrolApiserverK8sIoV1beta3.fromMap(Map<String, dynamic> map) {
    return FlowDistinguisherMethodFlowcontrolApiserverK8sIoV1beta3(
      type: map['type'] as String,
    );
  }
}

