// ignore_for_file: unused_element, unnecessary_cast


/// Parameters of a script block.
class ScriptActivityParameterResponse {
  /// The direction of the parameter.
  final String? direction;
  /// The name of the parameter. Type: string (or Expression with resultType string).
  final dynamic name;
  /// The size of the output direction parameter.
  final int? size;
  /// The type of the parameter.
  final String? type;
  /// The value of the parameter. Type: string (or Expression with resultType string).
  final dynamic value;

  /// Creates a new [ScriptActivityParameterResponse].
  /// [direction] The direction of the parameter.
  /// [name] The name of the parameter. Type: string (or Expression with resultType string).
  /// [size] The size of the output direction parameter.
  /// [type] The type of the parameter.
  /// [value] The value of the parameter. Type: string (or Expression with resultType string).
  ScriptActivityParameterResponse({
    this.direction,
    this.name,
    this.size,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': ?direction,
      'name': ?name,
      'size': ?size,
      'type': ?type,
      'value': ?value,
    };
  }

  factory ScriptActivityParameterResponse.fromMap(Map<String, dynamic> map) {
    return ScriptActivityParameterResponse(
      direction: map['direction'] == null ? null : map['direction'] as String,
      name: map['name'] == null ? null : map['name'],
      size: map['size'] == null ? null : map['size'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}

