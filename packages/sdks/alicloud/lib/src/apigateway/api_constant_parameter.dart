// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiConstantParameter {
  /// The description of Constant parameter.
  final pulumi.Input<String>? description;
  /// Constant parameter location; values: 'HEAD' and 'QUERY'.
  final pulumi.Input<String> in_;
  /// Constant parameter name.
  final pulumi.Input<String> name;
  /// Constant parameter value.
  final pulumi.Input<String> value;

  /// Creates a new [ApiConstantParameter].
  /// [description] The description of Constant parameter.
  /// [in_] Constant parameter location; values: 'HEAD' and 'QUERY'.
  /// [name] Constant parameter name.
  /// [value] Constant parameter value.
  ApiConstantParameter({
    this.description,
    required this.in_,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'in': in_,
      'name': name,
      'value': value,
    };
  }

  factory ApiConstantParameter.fromMap(Map<String, dynamic> map) {
    return ApiConstantParameter(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      in_: (map['in'] as String).input(),
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

