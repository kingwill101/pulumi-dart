// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic {
  final pulumi.Input<String> alias;
  final pulumi.Input<String> function;

  /// The value of the function that is used to aggregate logs imported from Log Service.
  final pulumi.Input<String> parameterOne;

  /// The value of the function that is used to aggregate logs imported from Log Service.
  final pulumi.Input<String> parameterTwo;
  final pulumi.Input<String> slsKeyName;

  /// Creates a new [GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic].
  /// [alias] Required.
  /// [function] Required.
  /// [parameterOne] The value of the function that is used to aggregate logs imported from Log Service.
  /// [parameterTwo] The value of the function that is used to aggregate logs imported from Log Service.
  /// [slsKeyName] Required.
  GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic({
    required this.alias,
    required this.function,
    required this.parameterOne,
    required this.parameterTwo,
    required this.slsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'function': function,
      'parameterOne': parameterOne,
      'parameterTwo': parameterTwo,
      'slsKeyName': slsKeyName,
    };
  }

  factory GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      function: pulumi.Input.fromValue(map['function'] as String),
      parameterOne: pulumi.Input.fromValue(map['parameterOne'] as String),
      parameterTwo: pulumi.Input.fromValue(map['parameterTwo'] as String),
      slsKeyName: pulumi.Input.fromValue(map['slsKeyName'] as String),
    );
  }
}
