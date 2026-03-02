// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleResponse {
  /// Rule type
  final pulumi.Input<String>? type;
  final pulumi.Input<List<String>>? value;

  /// Creates a new [RuleResponse].
  /// [type] Rule type
  /// [value] Optional.
  RuleResponse({
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
      type: map['type'] == null ? null : (map['type']! as String).input(),
      value: map['value'] == null ? null : ((map['value']! as List).cast<String>()).input(),
    );
  }
}

