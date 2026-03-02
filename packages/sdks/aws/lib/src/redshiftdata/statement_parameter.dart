// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StatementParameter {
  final pulumi.Input<String> name;
  final pulumi.Input<String> value;

  /// Creates a new [StatementParameter].
  /// [name] Required.
  /// [value] Required.
  StatementParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory StatementParameter.fromMap(Map<String, dynamic> map) {
    return StatementParameter(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

