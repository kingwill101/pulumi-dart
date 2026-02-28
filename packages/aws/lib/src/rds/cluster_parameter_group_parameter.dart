// ignore_for_file: unused_element, unnecessary_cast


class ClusterParameterGroupParameter {
  /// "immediate" (default), or "pending-reboot". Some
  /// engines can't apply some parameters without a reboot, and you will need to
  /// specify "pending-reboot" here.
  final String? applyMethod;
  /// The name of the DB parameter.
  final String name;
  /// The value of the DB parameter.
  final String value;

  /// Creates a new [ClusterParameterGroupParameter].
  /// [applyMethod] "immediate" (default), or "pending-reboot". Some
  /// [name] The name of the DB parameter.
  /// [value] The value of the DB parameter.
  ClusterParameterGroupParameter({
    this.applyMethod,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyMethod': ?applyMethod,
      'name': name,
      'value': value,
    };
  }

  factory ClusterParameterGroupParameter.fromMap(Map<String, dynamic> map) {
    return ClusterParameterGroupParameter(
      applyMethod: map['applyMethod'] == null ? null : map['applyMethod'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

