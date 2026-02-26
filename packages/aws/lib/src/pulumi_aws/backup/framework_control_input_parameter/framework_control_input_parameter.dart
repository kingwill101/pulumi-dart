// ignore_for_file: unused_element, unnecessary_cast

class FrameworkControlInputParameter {
  /// The name of a parameter, for example, BackupPlanFrequency.
  final String? name;

  /// The value of parameter, for example, hourly.
  final String? value;

  FrameworkControlInputParameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory FrameworkControlInputParameter.fromMap(Map<String, dynamic> map) {
    return FrameworkControlInputParameter(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
