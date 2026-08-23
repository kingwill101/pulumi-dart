// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesDatadog {
  final pulumi.Input<String> object_;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesDatadog].
  /// [object_] Required.
  const FlowSourceFlowConfigSourceConnectorPropertiesDatadog({
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object_,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesDatadog.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesDatadog(
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
