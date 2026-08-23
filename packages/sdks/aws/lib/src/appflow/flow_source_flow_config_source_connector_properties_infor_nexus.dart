// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesInforNexus {
  final pulumi.Input<String> object_;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesInforNexus].
  /// [object_] Required.
  const FlowSourceFlowConfigSourceConnectorPropertiesInforNexus({
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object_,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesInforNexus.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesInforNexus(
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
