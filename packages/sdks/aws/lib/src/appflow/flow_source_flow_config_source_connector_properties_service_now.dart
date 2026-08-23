// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesServiceNow {
  final pulumi.Input<String> object_;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesServiceNow].
  /// [object_] Required.
  const FlowSourceFlowConfigSourceConnectorPropertiesServiceNow({
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object_,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesServiceNow.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesServiceNow(
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
