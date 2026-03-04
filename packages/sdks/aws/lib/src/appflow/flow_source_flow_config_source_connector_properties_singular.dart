// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesSingular {
  final pulumi.Input<String> object_;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesSingular].
  /// [object_] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesSingular({
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'object': object_};
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSingular.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSingular(
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
