// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleResponse {
  /// Rule type
  final pulumi.Input<String>? type;
  final pulumi.Input<List<String>>? value;

  /// Creates a new [RuleResponse].
  /// [type] Rule type
  /// [value] Optional.
  const RuleResponse({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory RuleResponse.fromMap(Map<String, dynamic> map) {
    return RuleResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

