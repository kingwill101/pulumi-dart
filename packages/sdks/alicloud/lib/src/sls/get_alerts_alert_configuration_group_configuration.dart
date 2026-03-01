// ignore_for_file: unused_element, unnecessary_cast


class GetAlertsAlertConfigurationGroupConfiguration {
  /// The field used for grouping evaluation.When type is set to custom, fields must be set.
  final List<String> fields;
  /// Check the frequency type. Log Service checks the query and analysis results according to the frequency you configured. The values are as follows:Fixedate: checks query and analysis results at regular intervals.Cron: specifies the time interval by using the Cron expression, and checks the query and analysis results at the specified time interval.
  final String type;

  /// Creates a new [GetAlertsAlertConfigurationGroupConfiguration].
  /// [fields] The field used for grouping evaluation.When type is set to custom, fields must be set.
  /// [type] Check the frequency type. Log Service checks the query and analysis results according to the frequency you configured. The values are as follows:Fixedate: checks query and analysis results at regular intervals.Cron: specifies the time interval by using the Cron expression, and checks the query and analysis results at the specified time interval.
  GetAlertsAlertConfigurationGroupConfiguration({
    required this.fields,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': fields,
      'type': type,
    };
  }

  factory GetAlertsAlertConfigurationGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlertConfigurationGroupConfiguration(
      fields: (map['fields'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

