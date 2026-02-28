// ignore_for_file: unused_element, unnecessary_cast

class GetFrameworkControlInputParameter {
  /// Backup framework name.
  final String name;

  /// Value of parameter, for example, hourly.
  final String value;

  /// Creates a new [GetFrameworkControlInputParameter].
  /// [name] Backup framework name.
  /// [value] Value of parameter, for example, hourly.
  GetFrameworkControlInputParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GetFrameworkControlInputParameter.fromMap(Map<String, dynamic> map) {
    return GetFrameworkControlInputParameter(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
