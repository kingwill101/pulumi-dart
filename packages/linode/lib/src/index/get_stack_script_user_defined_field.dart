// ignore_for_file: unused_element, unnecessary_cast


class GetStackScriptUserDefinedField {
  /// The default value. If not specified, this value will be used.
  final String default_;
  /// An example value for the field.
  final String example;
  /// A human-readable label for the field that will serve as the input prompt for entering the value during deployment.
  final String label;
  /// A list of acceptable values for the field in any quantity, combination or order.
  final String manyOf;
  /// The name of the field.
  final String name;
  /// A list of acceptable single values for the field.
  final String oneOf;

  /// Creates a new [GetStackScriptUserDefinedField].
  /// [default_] The default value. If not specified, this value will be used.
  /// [example] An example value for the field.
  /// [label] A human-readable label for the field that will serve as the input prompt for entering the value during deployment.
  /// [manyOf] A list of acceptable values for the field in any quantity, combination or order.
  /// [name] The name of the field.
  /// [oneOf] A list of acceptable single values for the field.
  GetStackScriptUserDefinedField({
    required this.default_,
    required this.example,
    required this.label,
    required this.manyOf,
    required this.name,
    required this.oneOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
      'example': example,
      'label': label,
      'manyOf': manyOf,
      'name': name,
      'oneOf': oneOf,
    };
  }

  factory GetStackScriptUserDefinedField.fromMap(Map<String, dynamic> map) {
    return GetStackScriptUserDefinedField(
      default_: map['default'] as String,
      example: map['example'] as String,
      label: map['label'] as String,
      manyOf: map['manyOf'] as String,
      name: map['name'] as String,
      oneOf: map['oneOf'] as String,
    );
  }
}

