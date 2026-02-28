// ignore_for_file: unused_element, unnecessary_cast

class ParameterGroupParameter {
  /// The apply method of the Neptune parameter. Valid values are `immediate` and `pending-reboot`. Defaults to `pending-reboot`.
  final String? applyMethod;

  /// The name of the Neptune parameter.
  final String name;

  /// The value of the Neptune parameter.
  final String value;

  /// Creates a new [ParameterGroupParameter].
  /// [applyMethod] The apply method of the Neptune parameter. Valid values are `immediate` and `pending-reboot`. Defaults to `pending-reboot`.
  /// [name] The name of the Neptune parameter.
  /// [value] The value of the Neptune parameter.
  ParameterGroupParameter({
    this.applyMethod,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applyMethodValue = applyMethod;
    if (applyMethodValue != null) {
      map['applyMethod'] = applyMethodValue;
    }
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory ParameterGroupParameter.fromMap(Map<String, dynamic> map) {
    return ParameterGroupParameter(
      applyMethod:
          map['applyMethod'] == null ? null : map['applyMethod'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
