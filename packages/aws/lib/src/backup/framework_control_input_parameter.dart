// ignore_for_file: unused_element, unnecessary_cast

class FrameworkControlInputParameter {
  /// The name of a parameter, for example, BackupPlanFrequency.
  final String? name;

  /// The value of parameter, for example, hourly.
  final String? value;

  /// Creates a new [FrameworkControlInputParameter].
  /// [name] The name of a parameter, for example, BackupPlanFrequency.
  /// [value] The value of parameter, for example, hourly.
  FrameworkControlInputParameter({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory FrameworkControlInputParameter.fromMap(Map<String, dynamic> map) {
    return FrameworkControlInputParameter(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
