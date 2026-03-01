// ignore_for_file: unused_element, unnecessary_cast


class ApiConstantParameter {
  /// The description of Constant parameter.
  final String? description;
  /// Constant parameter location; values: 'HEAD' and 'QUERY'.
  final String in_;
  /// Constant parameter name.
  final String name;
  /// Constant parameter value.
  final String value;

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
      description: map['description'] == null ? null : map['description'] as String,
      in_: map['in'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

