// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of an APM
class ApmPropertiesResponse {
  /// Non-sensitive properties for the APM
  final pulumi.Input<Map<String, String>>? properties;
  /// State of the APM.
  final pulumi.Input<String> provisioningState;
  /// APM Type
  final pulumi.Input<String> type;

  /// Creates a new [ApmPropertiesResponse].
  /// [properties] Non-sensitive properties for the APM
  /// [provisioningState] State of the APM.
  /// [type] APM Type
  const ApmPropertiesResponse({
    this.properties,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ApmPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApmPropertiesResponse(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

