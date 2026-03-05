// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of a single parameter for an entity.
class GlobalParameterSpecificationResponse {
  /// Global Parameter type.
  final pulumi.Input<String> type;
  /// Value of parameter.
  final pulumi.Input<dynamic> value;

  /// Creates a new [GlobalParameterSpecificationResponse].
  /// [type] Global Parameter type.
  /// [value] Value of parameter.
  GlobalParameterSpecificationResponse({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GlobalParameterSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return GlobalParameterSpecificationResponse(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value']),
    );
  }
}

