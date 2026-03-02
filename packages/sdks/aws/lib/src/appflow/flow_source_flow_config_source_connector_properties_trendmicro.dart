// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesTrendmicro {
  final pulumi.Input<String> object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesTrendmicro].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesTrendmicro({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesTrendmicro.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesTrendmicro(
      object: (map['object'] as String).input(),
    );
  }
}

