// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesMarketo {
  final pulumi.Input<String> object_;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesMarketo].
  /// [object_] Required.
  const FlowSourceFlowConfigSourceConnectorPropertiesMarketo({
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object_,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesMarketo.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesMarketo(
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
