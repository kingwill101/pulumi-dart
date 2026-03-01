// ignore_for_file: unused_element, unnecessary_cast


class GetHybridMonitorSlsTasksTaskMatchExpress {
  /// The method that is used to match the instance name.
  final String function;
  /// The name of the instance.
  final String name;
  /// The keyword that corresponds to the instance name.
  final String value;

  /// Creates a new [GetHybridMonitorSlsTasksTaskMatchExpress].
  /// [function] The method that is used to match the instance name.
  /// [name] The name of the instance.
  /// [value] The keyword that corresponds to the instance name.
  GetHybridMonitorSlsTasksTaskMatchExpress({
    required this.function,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'function': function,
      'name': name,
      'value': value,
    };
  }

  factory GetHybridMonitorSlsTasksTaskMatchExpress.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorSlsTasksTaskMatchExpress(
      function: map['function'] as String,
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

