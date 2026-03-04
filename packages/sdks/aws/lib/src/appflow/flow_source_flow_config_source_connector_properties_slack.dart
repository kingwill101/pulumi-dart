// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesSlack {
  final pulumi.Input<String> object_;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesSlack].
  /// [object_] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesSlack({required this.object_});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'object': object_};
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesSlack.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlowSourceFlowConfigSourceConnectorPropertiesSlack(
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}
