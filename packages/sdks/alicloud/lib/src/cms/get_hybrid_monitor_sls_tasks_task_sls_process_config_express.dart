// ignore_for_file: unused_element, unnecessary_cast


class GetHybridMonitorSlsTasksTaskSlsProcessConfigExpress {
  final String alias;
  final String express;

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
      alias: map['alias'] as String,
      express: map['express'] as String,
    );
  }
}

