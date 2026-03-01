// ignore_for_file: unused_element, unnecessary_cast


class GetHybridMonitorSlsTasksTaskSlsProcessConfigStatistic {
  final String alias;
  final String function;
  /// The value of the function that is used to aggregate logs imported from Log Service.
  final String parameterOne;
  /// The value of the function that is used to aggregate logs imported from Log Service.
  final String parameterTwo;
  final String slsKeyName;

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
      alias: map['alias'] as String,
      function: map['function'] as String,
      parameterOne: map['parameterOne'] as String,
      parameterTwo: map['parameterTwo'] as String,
      slsKeyName: map['slsKeyName'] as String,
    );
  }
}

