// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_data_source_data_source_configuration_managed_knowledge_base_connector_configuration_sync_schedule_monthly_day_of_month.dart';

class AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthly {
  /// Day of the month on which the monthly sync runs. See `dayOfMonth` Block for details.
  final pulumi.Input<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthlyDayOfMonth> dayOfMonth;

  /// Creates a new [AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthly].
  /// [dayOfMonth] Day of the month on which the monthly sync runs. See `dayOfMonth` Block for details.
  const AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthly({
    required this.dayOfMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfMonth': pulumi.Input.mapInputValue<AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthlyDayOfMonth, Map<String, dynamic>>(dayOfMonth, (value) => value.toMap()),
    };
  }

  factory AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthly.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthly(
      dayOfMonth: pulumi.Input.fromValue(AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthlyDayOfMonth.fromMap((map['dayOfMonth']! as Map).cast<String, dynamic>())),
    );
  }
}
