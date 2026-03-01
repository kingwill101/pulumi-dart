// ignore_for_file: unused_element, unnecessary_cast


class GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy {
  final String alias;
  final String slsKeyName;

  /// Creates a new [GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy].
  /// [alias] Required.
  /// [slsKeyName] Required.
  GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy({
    required this.alias,
    required this.slsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'slsKeyName': slsKeyName,
    };
  }

  factory GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy(
      alias: map['alias'] as String,
      slsKeyName: map['slsKeyName'] as String,
    );
  }
}

