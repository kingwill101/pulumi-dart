// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy {
  final pulumi.Input<String> alias;
  final pulumi.Input<String> slsKeyName;

  /// Creates a new [GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy].
  /// [alias] Required.
  /// [slsKeyName] Required.
  GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy({
    required this.alias,
    required this.slsKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'alias': alias, 'slsKeyName': slsKeyName};
  }

  factory GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetHybridMonitorSlsTasksTaskSlsProcessConfigGroupBy(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      slsKeyName: pulumi.Input.fromValue(map['slsKeyName'] as String),
    );
  }
}
