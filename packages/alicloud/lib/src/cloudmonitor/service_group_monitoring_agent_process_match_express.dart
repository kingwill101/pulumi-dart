// ignore_for_file: unused_element, unnecessary_cast


class ServiceGroupMonitoringAgentProcessMatchExpress {
  /// The matching condition. Valid values: `all`, `startWith`, `endWith`, `contains`, `notContains`, `equals`.
  final String? function;
  /// The criteria based on which the instances are matched.
  final String? name;
  /// The keyword used to match the instance name.
  final String? value;

  /// Creates a new [ServiceGroupMonitoringAgentProcessMatchExpress].
  /// [function] The matching condition. Valid values: `all`, `startWith`, `endWith`, `contains`, `notContains`, `equals`.
  /// [name] The criteria based on which the instances are matched.
  /// [value] The keyword used to match the instance name.
  ServiceGroupMonitoringAgentProcessMatchExpress({
    this.function,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'function': ?function,
      'name': ?name,
      'value': ?value,
    };
  }

  factory ServiceGroupMonitoringAgentProcessMatchExpress.fromMap(Map<String, dynamic> map) {
    return ServiceGroupMonitoringAgentProcessMatchExpress(
      function: map['function'] == null ? null : map['function'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

