// ignore_for_file: unused_element, unnecessary_cast

class DataIntegrationScheduleConfig {
  /// The start date for objects to import in the first flow run as an Unix/epoch timestamp in milliseconds or in ISO-8601 format. This needs to be a time in the past, meaning that the data created or updated before this given date will not be downloaded.
  final String firstExecutionFrom;

  /// The name of the object to pull from the data source. Examples of objects in Salesforce include `Case`, `Account`, or `Lead`.
  final String object;

  /// How often the data should be pulled from data source. Examples include `rate(1 hour)`, `rate(3 hours)`, `rate(1 day)`.
  final String scheduleExpression;

  /// Creates a new [DataIntegrationScheduleConfig].
  /// [firstExecutionFrom] The start date for objects to import in the first flow run as an Unix/epoch timestamp in milliseconds or in ISO-8601 format. This needs to be a time in the past, meaning that the data created or updated before this given date will not be downloaded.
  /// [object] The name of the object to pull from the data source. Examples of objects in Salesforce include `Case`, `Account`, or `Lead`.
  /// [scheduleExpression] How often the data should be pulled from data source. Examples include `rate(1 hour)`, `rate(3 hours)`, `rate(1 day)`.
  DataIntegrationScheduleConfig({
    required this.firstExecutionFrom,
    required this.object,
    required this.scheduleExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firstExecutionFrom'] = firstExecutionFrom;
    map['object'] = object;
    map['scheduleExpression'] = scheduleExpression;
    return map;
  }

  factory DataIntegrationScheduleConfig.fromMap(Map<String, dynamic> map) {
    return DataIntegrationScheduleConfig(
      firstExecutionFrom: map['firstExecutionFrom'] as String,
      object: map['object'] as String,
      scheduleExpression: map['scheduleExpression'] as String,
    );
  }
}
