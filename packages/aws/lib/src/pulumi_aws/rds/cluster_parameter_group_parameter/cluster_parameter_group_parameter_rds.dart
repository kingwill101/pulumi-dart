// ignore_for_file: unused_element, unnecessary_cast

class ClusterParameterGroupParameterRds {
  /// "immediate" (default), or "pending-reboot". Some
  /// engines can't apply some parameters without a reboot, and you will need to
  /// specify "pending-reboot" here.
  final String? applyMethod;

  /// The name of the DB parameter.
  final String name;

  /// The value of the DB parameter.
  final String value;

  ClusterParameterGroupParameterRds({
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

  factory ClusterParameterGroupParameterRds.fromMap(Map<String, dynamic> map) {
    return ClusterParameterGroupParameterRds(
      applyMethod:
          map['applyMethod'] == null ? null : map['applyMethod'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
