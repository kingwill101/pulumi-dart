// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The start and end date for recurrence schedule.
class ReportRecurrencePeriodResponse {
  /// The start date of recurrence.
  final pulumi.Input<String> from;

  /// The end date of recurrence.
  final pulumi.Input<String>? to;

  /// Creates a new [ReportRecurrencePeriodResponse].
  /// [from] The start date of recurrence.
  /// [to] The end date of recurrence.
  ReportRecurrencePeriodResponse({required this.from, this.to});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'from': from, 'to': ?to};
  }

  factory ReportRecurrencePeriodResponse.fromMap(Map<String, dynamic> map) {
    return ReportRecurrencePeriodResponse(
      from: pulumi.Input.fromValue(map['from'] as String),
      to: (() {
        final guardedValue = map['to'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
