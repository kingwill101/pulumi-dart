// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The start and end date for recurrence schedule.
class ExportRecurrencePeriodResponse {
  /// The start date of recurrence.
  final pulumi.Input<String> from;
  /// The end date of recurrence.
  final pulumi.Input<String>? to;

  /// Creates a new [ExportRecurrencePeriodResponse].
  /// [from] The start date of recurrence.
  /// [to] The end date of recurrence.
  ExportRecurrencePeriodResponse({
    required this.from,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'to': ?to,
    };
  }

  factory ExportRecurrencePeriodResponse.fromMap(Map<String, dynamic> map) {
    return ExportRecurrencePeriodResponse(
      from: (map['from'] as String).input(),
      to: map['to'] == null ? null : (map['to'] as String).input(),
    );
  }
}

