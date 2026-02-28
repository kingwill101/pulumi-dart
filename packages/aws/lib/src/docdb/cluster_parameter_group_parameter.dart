// ignore_for_file: unused_element, unnecessary_cast

class ClusterParameterGroupParameter {
  /// Valid values are `immediate` and `pending-reboot`. Defaults to `pending-reboot`.
  final String? applyMethod;

  /// The name of the DocumentDB parameter.
  final String name;

  /// The value of the DocumentDB parameter.
  final String value;

  /// Creates a new [ClusterParameterGroupParameter].
  /// [applyMethod] Valid values are `immediate` and `pending-reboot`. Defaults to `pending-reboot`.
  /// [name] The name of the DocumentDB parameter.
  /// [value] The value of the DocumentDB parameter.
  ClusterParameterGroupParameter({
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

  factory ClusterParameterGroupParameter.fromMap(Map<String, dynamic> map) {
    return ClusterParameterGroupParameter(
      applyMethod:
          map['applyMethod'] == null ? null : map['applyMethod'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
