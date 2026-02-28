// ignore_for_file: unused_element, unnecessary_cast

class ProjectDataDeliveryCloudwatchLogs {
  /// The name of the log group where the project stores evaluation events.
  final String? logGroup;

  /// Creates a new [ProjectDataDeliveryCloudwatchLogs].
  /// [logGroup] The name of the log group where the project stores evaluation events.
  ProjectDataDeliveryCloudwatchLogs({
    this.logGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final logGroupValue = logGroup;
    if (logGroupValue != null) {
      map['logGroup'] = logGroupValue;
    }
    return map;
  }

  factory ProjectDataDeliveryCloudwatchLogs.fromMap(Map<String, dynamic> map) {
    return ProjectDataDeliveryCloudwatchLogs(
      logGroup: map['logGroup'] == null ? null : map['logGroup'] as String,
    );
  }
}
