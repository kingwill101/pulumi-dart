// ignore_for_file: unused_element, unnecessary_cast


class RunBookDraftParameter {
  /// Specifies the default value of the parameter.
  final String? defaultValue;
  /// The name of the parameter.
  final String key;
  /// Whether this parameter is mandatory.
  final bool? mandatory;
  /// Specifies the position of the parameter.
  final int? position;
  /// Specifies the type of this parameter.
  final String type;

  /// Creates a new [RunBookDraftParameter].
  /// [defaultValue] Specifies the default value of the parameter.
  /// [key] The name of the parameter.
  /// [mandatory] Whether this parameter is mandatory.
  /// [position] Specifies the position of the parameter.
  /// [type] Specifies the type of this parameter.
  RunBookDraftParameter({
    this.defaultValue,
    required this.key,
    this.mandatory,
    this.position,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'key': key,
      'mandatory': ?mandatory,
      'position': ?position,
      'type': type,
    };
  }

  factory RunBookDraftParameter.fromMap(Map<String, dynamic> map) {
    return RunBookDraftParameter(
      defaultValue: map['defaultValue'] == null ? null : map['defaultValue'] as String,
      key: map['key'] as String,
      mandatory: map['mandatory'] == null ? null : map['mandatory'] as bool,
      position: map['position'] == null ? null : map['position'] as int,
      type: map['type'] as String,
    );
  }
}

