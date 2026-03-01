// ignore_for_file: unused_element, unnecessary_cast


class EventSubscriptionSubjectFilter {
  /// Specifies if `subject_begins_with` and `subject_ends_with` case sensitive. This value
  final bool? caseSensitive;
  /// A string to filter events for an event subscription based on a resource path prefix.
  final String? subjectBeginsWith;
  /// A string to filter events for an event subscription based on a resource path suffix.
  final String? subjectEndsWith;

  /// Creates a new [EventSubscriptionSubjectFilter].
  /// [caseSensitive] Specifies if `subject_begins_with` and `subject_ends_with` case sensitive. This value
  /// [subjectBeginsWith] A string to filter events for an event subscription based on a resource path prefix.
  /// [subjectEndsWith] A string to filter events for an event subscription based on a resource path suffix.
  EventSubscriptionSubjectFilter({
    this.caseSensitive,
    this.subjectBeginsWith,
    this.subjectEndsWith,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caseSensitive': ?caseSensitive,
      'subjectBeginsWith': ?subjectBeginsWith,
      'subjectEndsWith': ?subjectEndsWith,
    };
  }

  factory EventSubscriptionSubjectFilter.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionSubjectFilter(
      caseSensitive: map['caseSensitive'] == null ? null : map['caseSensitive'] as bool,
      subjectBeginsWith: map['subjectBeginsWith'] == null ? null : map['subjectBeginsWith'] as String,
      subjectEndsWith: map['subjectEndsWith'] == null ? null : map['subjectEndsWith'] as String,
    );
  }
}

