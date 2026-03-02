// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesZendesk {
  final pulumi.Input<String> object;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesZendesk].
  /// [object] Required.
  FlowSourceFlowConfigSourceConnectorPropertiesZendesk({
    required this.object,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesZendesk.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesZendesk(
      object: (map['object'] as String).input(),
    );
  }
}

