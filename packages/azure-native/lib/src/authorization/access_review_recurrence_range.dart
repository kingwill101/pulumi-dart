// ignore_for_file: unused_element, unnecessary_cast


/// Recurrence Range of an Access Review Schedule Definition.
class AccessReviewRecurrenceRange {
  /// The DateTime when the review is scheduled to end. Required if type is endDate
  final String? endDate;
  /// The number of times to repeat the access review. Required and must be positive if type is numbered.
  final int? numberOfOccurrences;
  /// The DateTime when the review is scheduled to be start. This could be a date in the future. Required on create.
  final String? startDate;
  /// The recurrence range type. The possible values are: endDate, noEnd, numbered.
  final String? type;

  /// Creates a new [AccessReviewRecurrenceRange].
  /// [endDate] The DateTime when the review is scheduled to end. Required if type is endDate
  /// [numberOfOccurrences] The number of times to repeat the access review. Required and must be positive if type is numbered.
  /// [startDate] The DateTime when the review is scheduled to be start. This could be a date in the future. Required on create.
  /// [type] The recurrence range type. The possible values are: endDate, noEnd, numbered.
  AccessReviewRecurrenceRange({
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

  factory AccessReviewRecurrenceRange.fromMap(Map<String, dynamic> map) {
    return AccessReviewRecurrenceRange(
      endDate: map['endDate'] == null ? null : map['endDate'] as String,
      numberOfOccurrences: map['numberOfOccurrences'] == null ? null : map['numberOfOccurrences'] as int,
      startDate: map['startDate'] == null ? null : map['startDate'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

