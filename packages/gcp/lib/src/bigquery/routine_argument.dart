// ignore_for_file: unused_element, unnecessary_cast

class RoutineArgument {
  /// Defaults to FIXED_TYPE.
  /// Default value is `FIXED_TYPE`.
  /// Possible values are: `FIXED_TYPE`, `ANY_TYPE`.
  final String? argumentKind;

  /// A JSON schema for the data type. Required unless argumentKind = ANY_TYPE.
  /// ~>**NOTE**: Because this field expects a JSON string, any changes to the string
  /// will create a diff, even if the JSON itself hasn't changed. If the API returns
  /// a different value for the same schema, e.g. it switched the order of values
  /// or replaced STRUCT field type with RECORD field type, we currently cannot
  /// suppress the recurring diff this causes. As a workaround, we recommend using
  /// the schema as returned by the API.
  final String? dataType;

  /// Specifies whether the argument is input or output. Can be set for procedures only.
  /// Possible values are: `IN`, `OUT`, `INOUT`.
  final String? mode;

  /// The name of this argument. Can be absent for function return argument.
  final String? name;

  /// Creates a new [RoutineArgument].
  /// [argumentKind] Defaults to FIXED_TYPE.
  /// [dataType] A JSON schema for the data type. Required unless argumentKind = ANY_TYPE.
  /// [mode] Specifies whether the argument is input or output. Can be set for procedures only.
  /// [name] The name of this argument. Can be absent for function return argument.
  RoutineArgument({this.argumentKind, this.dataType, this.mode, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'argumentKind': ?argumentKind,
      'dataType': ?dataType,
      'mode': ?mode,
      'name': ?name,
    };
  }

  factory RoutineArgument.fromMap(Map<String, dynamic> map) {
    return RoutineArgument(
      argumentKind: map['argumentKind'] == null
          ? null
          : map['argumentKind'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
