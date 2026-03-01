// ignore_for_file: unused_element, unnecessary_cast

class ReleaseOutputVariable {
  /// Name of a supported variable type. Supported types are STRING, INT, BOOL.
  /// Possible values are: `TYPE_UNSPECIFIED`, `STRING`, `INT`, `BOOL`.
  final String? type;

  /// String encoded value for the variable.
  final String? value;

  /// Name of the variable from actuation configs.
  final String variable;

  /// Creates a new [ReleaseOutputVariable].
  /// [type] Name of a supported variable type. Supported types are STRING, INT, BOOL.
  /// [value] String encoded value for the variable.
  /// [variable] Name of the variable from actuation configs.
  ReleaseOutputVariable({this.type, this.value, required this.variable});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
      'variable': variable,
    };
  }

  factory ReleaseOutputVariable.fromMap(Map<String, dynamic> map) {
    return ReleaseOutputVariable(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
      variable: map['variable'] as String,
    );
  }
}
