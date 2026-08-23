// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesDynatrace {
  final pulumi.Input<String> object_;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesDynatrace].
  /// [object_] Required.
  const FlowSourceFlowConfigSourceConnectorPropertiesDynatrace({
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object_,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesDynatrace.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesDynatrace(
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
