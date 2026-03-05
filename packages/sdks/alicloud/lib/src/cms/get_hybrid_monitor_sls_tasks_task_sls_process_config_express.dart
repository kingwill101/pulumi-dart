// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress {
  final pulumi.Input<String> alias;
  final pulumi.Input<String> express;

  /// Creates a new [GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress].
  /// [alias] Required.
  /// [express] Required.
  GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress({
    required this.alias,
    required this.express,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'express': express,
    };
  }

  factory GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress.fromMap(Map<String, dynamic> map) {
    return GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      express: pulumi.Input.fromValue(map['express'] as String),
    );
  }
}

