// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceGroupMonitoringAgentProcessMatchExpress {
  /// The matching condition. Valid values: `all`, `startWith`, `endWith`, `contains`, `notContains`, `equals`.
  final pulumi.Input<String>? function;

  /// The criteria based on which the instances are matched.
  final pulumi.Input<String>? name;

  /// The keyword used to match the instance name.
  final pulumi.Input<String>? value;

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

  factory ServiceGroupMonitoringAgentProcessMatchExpress.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceGroupMonitoringAgentProcessMatchExpress(
      function: (() {
        final guardedValue = map['function'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
