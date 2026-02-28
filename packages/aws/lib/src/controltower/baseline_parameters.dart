// ignore_for_file: unused_element, unnecessary_cast

class BaselineParameters {
  /// The key of the parameter.
  final String key;

  /// The value of the parameter.
  final String value;

  /// Creates a new [BaselineParameters].
  /// [key] The key of the parameter.
  /// [value] The value of the parameter.
  BaselineParameters({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory BaselineParameters.fromMap(Map<String, dynamic> map) {
    return BaselineParameters(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
