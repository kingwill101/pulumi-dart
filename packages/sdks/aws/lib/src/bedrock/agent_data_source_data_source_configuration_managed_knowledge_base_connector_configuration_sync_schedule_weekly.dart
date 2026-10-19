// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleWeekly {
  /// Day of the week on which the weekly sync runs. Valid values: `SUNDAY`, `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`.
  final pulumi.Input<String> dayOfWeek;

  /// Creates a new [AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleWeekly].
  /// [dayOfWeek] Day of the week on which the weekly sync runs. Valid values: `SUNDAY`, `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`.
  const AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleWeekly({
    required this.dayOfWeek,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': dayOfWeek,
    };
  }

  factory AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleWeekly.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleWeekly(
      dayOfWeek: pulumi.Input.fromValue(map['dayOfWeek'] as String),
    );
  }
}
