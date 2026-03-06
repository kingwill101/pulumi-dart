// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics {
  final pulumi.Input<String> object_;

  /// Creates a new [FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics].
  /// [object_] Required.
  const FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics({
    required this.object_,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'object': object_,
    };
  }

  factory FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics.fromMap(Map<String, dynamic> map) {
    return FlowSourceFlowConfigSourceConnectorPropertiesGoogleAnalytics(
      object_: pulumi.Input.fromValue(map['object'] as String),
    );
  }
}

