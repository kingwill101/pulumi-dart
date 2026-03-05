// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Recurrence Range of an Access Review Schedule Definition.
class AccessReviewRecurrenceRangeResponse {
  /// The DateTime when the review is scheduled to end. Required if type is endDate
  final pulumi.Input<String>? endDate;
  /// The number of times to repeat the access review. Required and must be positive if type is numbered.
  final pulumi.Input<int>? numberOfOccurrences;
  /// The DateTime when the review is scheduled to be start. This could be a date in the future. Required on create.
  final pulumi.Input<String>? startDate;
  /// The recurrence range type. The possible values are: endDate, noEnd, numbered.
  final pulumi.Input<String>? type;

  /// Creates a new [AccessReviewRecurrenceRangeResponse].
  /// [endDate] The DateTime when the review is scheduled to end. Required if type is endDate
  /// [numberOfOccurrences] The number of times to repeat the access review. Required and must be positive if type is numbered.
  /// [startDate] The DateTime when the review is scheduled to be start. This could be a date in the future. Required on create.
  /// [type] The recurrence range type. The possible values are: endDate, noEnd, numbered.
  AccessReviewRecurrenceRangeResponse({
    this.endDate,
    this.numberOfOccurrences,
    this.startDate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': ?endDate,
      'numberOfOccurrences': ?numberOfOccurrences,
      'startDate': ?startDate,
      'type': ?type,
    };
  }

  factory AccessReviewRecurrenceRangeResponse.fromMap(Map<String, dynamic> map) {
    return AccessReviewRecurrenceRangeResponse(
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfOccurrences: (() { final guardedValue = map['numberOfOccurrences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

