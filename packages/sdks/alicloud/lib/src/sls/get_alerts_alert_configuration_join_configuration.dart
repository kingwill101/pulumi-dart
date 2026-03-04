// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertsAlertConfigurationJoinConfiguration {
  /// Data matching expression.When the data content does not need to be determined, set it to an empty string.In other cases, it needs to be set as an expression, for example, errCnt&gt; 10.
  final pulumi.Input<String> condition;

  /// Check the frequency type. Log Service checks the query and analysis results according to the frequency you configured. The values are as follows:Fixedate: checks query and analysis results at regular intervals.Cron: specifies the time interval by using the Cron expression, and checks the query and analysis results at the specified time interval.
  final pulumi.Input<String> type;

  /// Creates a new [GetAlertsAlertConfigurationJoinConfiguration].
  /// [condition] Data matching expression.When the data content does not need to be determined, set it to an empty string.In other cases, it needs to be set as an expression, for example, errCnt&gt; 10.
  /// [type] Check the frequency type. Log Service checks the query and analysis results according to the frequency you configured. The values are as follows:Fixedate: checks query and analysis results at regular intervals.Cron: specifies the time interval by using the Cron expression, and checks the query and analysis results at the specified time interval.
  GetAlertsAlertConfigurationJoinConfiguration({
    required this.condition,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'condition': condition, 'type': type};
  }

  factory GetAlertsAlertConfigurationJoinConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetAlertsAlertConfigurationJoinConfiguration(
      condition: pulumi.Input.fromValue(map['condition'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
