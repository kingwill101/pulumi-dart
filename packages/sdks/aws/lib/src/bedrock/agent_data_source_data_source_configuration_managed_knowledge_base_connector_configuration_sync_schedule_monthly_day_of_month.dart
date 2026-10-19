// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthlyDayOfMonth {
  /// Specific day of the month, from 1 to 28.
  final pulumi.Input<int?>? dayNumber;
  /// Configure this option to run the monthly sync on the last calendar day of each month. See `lastDayOfMonth` Block for details.
  final pulumi.Input<Map<String, dynamic>?>? lastDayOfMonth;

  /// Creates a new [AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthlyDayOfMonth].
  /// [dayNumber] Specific day of the month, from 1 to 28.
  /// [lastDayOfMonth] Configure this option to run the monthly sync on the last calendar day of each month. See `lastDayOfMonth` Block for details.
  const AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthlyDayOfMonth({
    this.dayNumber,
    this.lastDayOfMonth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayNumber': ?dayNumber,
      'lastDayOfMonth': ?lastDayOfMonth,
    };
  }

  factory AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthlyDayOfMonth.fromMap(Map<String, dynamic> map) {
    return AgentDataSourceDataSourceConfigurationManagedKnowledgeBaseConnectorConfigurationSyncScheduleMonthlyDayOfMonth(
      dayNumber: (() { final guardedValue = map['dayNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      lastDayOfMonth: (() { final guardedValue = map['lastDayOfMonth']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
