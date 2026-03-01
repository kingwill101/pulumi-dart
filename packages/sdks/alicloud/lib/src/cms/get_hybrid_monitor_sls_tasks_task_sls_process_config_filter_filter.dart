// ignore_for_file: unused_element, unnecessary_cast


class GetHybridMonitorSlsTasksTaskSlsProcessConfigFilterFilter {
  /// The method that is used to filter logs imported from Log Service.
  final String operator;
  final String slsKeyName;
  final String value;

  /// Creates a new [GetHybridMonitorSlsTasksTaskSlsProcessConfigFilterFilter].
  /// [operator] The method that is used to filter logs imported from Log Service.
  /// [slsKeyName] Required.
  /// [value] Required.
  GetHybridMonitorSlsTasksTaskSlsProcessConfigFilterFilter({
    required this.operator,
    required this.slsKeyName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': operator,
      'slsKeyName': slsKeyName,
      'value': value,
    };
  }

  factory GetHybridMonitorSlsTasksTaskSlsProcessConfigFilterFilter.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorSlsTasksTaskSlsProcessConfigFilterFilter(
      operator: map['operator'] as String,
      slsKeyName: map['slsKeyName'] as String,
      value: map['value'] as String,
    );
  }
}

