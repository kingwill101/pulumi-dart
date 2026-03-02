// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DdrInstanceParameter {
  /// The parameter name.
  final pulumi.Input<String> name;
  /// The parameter value.
  final pulumi.Input<String> value;

  /// Creates a new [DdrInstanceParameter].
  /// [name] The parameter name.
  /// [value] The parameter value.
  DdrInstanceParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DdrInstanceParameter.fromMap(Map<String, dynamic> map) {
    return DdrInstanceParameter(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

