// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Condition for a discount.
class ConditionsItemResponse {
  final pulumi.Input<String>? conditionName;
  final pulumi.Input<String>? type;
  /// These items are open-ended strings.
  final pulumi.Input<List<String>>? value;

  /// Creates a new [ConditionsItemResponse].
  /// [conditionName] Optional.
  /// [type] Optional.
  /// [value] These items are open-ended strings.
  ConditionsItemResponse({
    this.conditionName,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionName': ?conditionName,
      'type': ?type,
      'value': ?value,
    };
  }

  factory ConditionsItemResponse.fromMap(Map<String, dynamic> map) {
    return ConditionsItemResponse(
      conditionName: (() { final guardedValue = map['conditionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

