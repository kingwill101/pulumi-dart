// ignore_for_file: unused_element, unnecessary_cast

class ClusterParameterGroupParameterNeptune {
  /// Valid values are `immediate` and `pending-reboot`. Defaults to `pending-reboot`.
  final String? applyMethod;

  /// The name of the neptune parameter.
  final String name;

  /// The value of the neptune parameter.
  final String value;

  ClusterParameterGroupParameterNeptune({
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

  factory ClusterParameterGroupParameterNeptune.fromMap(
      Map<String, dynamic> map) {
    return ClusterParameterGroupParameterNeptune(
      applyMethod:
          map['applyMethod'] == null ? null : map['applyMethod'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
