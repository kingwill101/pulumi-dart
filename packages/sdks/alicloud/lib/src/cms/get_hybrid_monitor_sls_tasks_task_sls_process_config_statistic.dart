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

  factory GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic(
      alias: (map['alias'] as String).input(),
      function: (map['function'] as String).input(),
      parameterOne: (map['parameterOne'] as String).input(),
      parameterTwo: (map['parameterTwo'] as String).input(),
      slsKeyName: (map['slsKeyName'] as String).input(),
    );
  }
}

