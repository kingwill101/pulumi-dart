// ignore_for_file: unused_element, unnecessary_cast


class V2FunctionCustomDnsDnsOption {
  /// DNS option name.
  final String? name;
  /// DNS option value.
  final String? value;

  /// Creates a new [V2FunctionCustomDnsDnsOption].
  /// [name] DNS option name.
  /// [value] DNS option value.
  V2FunctionCustomDnsDnsOption({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory V2FunctionCustomDnsDnsOption.fromMap(Map<String, dynamic> map) {
    return V2FunctionCustomDnsDnsOption(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

