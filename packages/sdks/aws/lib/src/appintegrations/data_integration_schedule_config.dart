// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataIntegrationScheduleConfig {
  /// The start date for objects to import in the first flow run as an Unix/epoch timestamp in milliseconds or in ISO-8601 format. This needs to be a time in the past, meaning that the data created or updated before this given date will not be downloaded.
  final pulumi.Input<String> firstExecutionFrom;

  /// The name of the object to pull from the data source. Examples of objects in Salesforce include `Case`, `Account`, or `Lead`.
  final pulumi.Input<String> object_;

  /// How often the data should be pulled from data source. Examples include `rate(1 hour)`, `rate(3 hours)`, `rate(1 day)`.
  final pulumi.Input<String> scheduleExpression;

  /// Creates a new [DataIntegrationScheduleConfig].
  /// [firstExecutionFrom] The start date for objects to import in the first flow run as an Unix/epoch timestamp in milliseconds or in ISO-8601 format. This needs to be a time in the past, meaning that the data created or updated before this given date will not be downloaded.
  /// [object_] The name of the object to pull from the data source. Examples of objects in Salesforce include `Case`, `Account`, or `Lead`.
  /// [scheduleExpression] How often the data should be pulled from data source. Examples include `rate(1 hour)`, `rate(3 hours)`, `rate(1 day)`.
  DataIntegrationScheduleConfig({
    required this.firstExecutionFrom,
    required this.object_,
    required this.scheduleExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstExecutionFrom': firstExecutionFrom,
      'object': object_,
      'scheduleExpression': scheduleExpression,
    };
  }

  factory DataIntegrationScheduleConfig.fromMap(Map<String, dynamic> map) {
    return DataIntegrationScheduleConfig(
      firstExecutionFrom: pulumi.Input.fromValue(
        map['firstExecutionFrom'] as String,
      ),
      object_: pulumi.Input.fromValue(map['object'] as String),
      scheduleExpression: pulumi.Input.fromValue(
        map['scheduleExpression'] as String,
      ),
    );
  }
}
