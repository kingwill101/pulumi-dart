// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// a plain text value execution parameter
class ScriptStringExecutionParameter {
  /// The parameter name
  final pulumi.Input<String> name;
  /// script execution parameter type
  /// Expected value is 'Value'.
  final pulumi.Input<String> type;
  /// The value for the passed parameter
  final pulumi.Input<String>? value;

  /// Creates a new [ScriptStringExecutionParameter].
  /// [name] The parameter name
  /// [type] script execution parameter type
  /// [value] The value for the passed parameter
  ScriptStringExecutionParameter({
    required this.name,
    required this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'value': ?value,
    };
  }

  factory ScriptStringExecutionParameter.fromMap(Map<String, dynamic> map) {
    return ScriptStringExecutionParameter(
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

