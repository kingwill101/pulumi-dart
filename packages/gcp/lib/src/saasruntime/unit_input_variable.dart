// ignore_for_file: unused_element, unnecessary_cast

class UnitInputVariable {
  /// Name of a supported variable type. Supported types are string, int, bool.
  /// Possible values:
  /// STRING
  /// INT
  /// BOOL
  final String? type;

  /// String encoded value for the variable.
  final String? value;

  /// Name of the variable from actuation configs.
  final String variable;

  /// Creates a new [UnitInputVariable].
  /// [type] Name of a supported variable type. Supported types are string, int, bool.
  /// [value] String encoded value for the variable.
  /// [variable] Name of the variable from actuation configs.
  UnitInputVariable({
    this.type,
    this.value,
    required this.variable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    map['variable'] = variable;
    return map;
  }

  factory UnitInputVariable.fromMap(Map<String, dynamic> map) {
    return UnitInputVariable(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
      variable: map['variable'] as String,
    );
  }
}
