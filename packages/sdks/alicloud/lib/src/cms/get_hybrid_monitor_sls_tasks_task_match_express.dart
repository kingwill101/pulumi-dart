// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHybridMonitorSlsTasksTaskMatchExpress {
  /// The method that is used to match the instance name.
  final pulumi.Input<String> function;
  /// The name of the instance.
  final pulumi.Input<String> name;
  /// The keyword that corresponds to the instance name.
  final pulumi.Input<String> value;

  /// Creates a new [GetHybridMonitorSlsTasksTaskMatchExpress].
  /// [function] The method that is used to match the instance name.
  /// [name] The name of the instance.
  /// [value] The keyword that corresponds to the instance name.
  const GetHybridMonitorSlsTasksTaskMatchExpress({
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
      function: pulumi.Input.fromValue(map['function'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

