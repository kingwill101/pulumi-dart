// ignore_for_file: unused_element, unnecessary_cast


class RuleResponse {
  /// Rule type
  final String? type;
  final List<String>? value;

  /// Creates a new [RuleResponse].
  /// [type] Rule type
  /// [value] Optional.
  RuleResponse({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory RuleResponse.fromMap(Map<String, dynamic> map) {
    return RuleResponse(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : (map['value'] as List).cast<String>(),
    );
  }
}

