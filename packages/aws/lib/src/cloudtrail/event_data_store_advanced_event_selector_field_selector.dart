// ignore_for_file: unused_element, unnecessary_cast

class EventDataStoreAdvancedEventSelectorFieldSelector {
  /// A list of values that includes events that match the last few characters of the event record field specified as the value of `field`.
  final List<String>? endsWiths;

  /// A list of values that includes events that match the exact value of the event record field specified as the value of `field`. This is the only valid operator that you can use with the `readOnly`, `eventCategory`, and `resources.type` fields.
  final List<String>? equals;

  /// Specifies a field in an event record on which to filter events to be logged. You can specify only the following values: `readOnly`, `eventSource`, `eventName`, `eventCategory`, `resources.type`, `resources.ARN`.
  final String? field;

  /// A list of values that excludes events that match the last few characters of the event record field specified as the value of `field`.
  final List<String>? notEndsWiths;

  /// A list of values that excludes events that match the exact value of the event record field specified as the value of `field`.
  final List<String>? notEquals;

  /// A list of values that excludes events that match the first few characters of the event record field specified as the value of `field`.
  final List<String>? notStartsWiths;

  /// A list of values that includes events that match the first few characters of the event record field specified as the value of `field`.
  final List<String>? startsWiths;

  /// Creates a new [EventDataStoreAdvancedEventSelectorFieldSelector].
  /// [endsWiths] A list of values that includes events that match the last few characters of the event record field specified as the value of `field`.
  /// [equals] A list of values that includes events that match the exact value of the event record field specified as the value of `field`. This is the only valid operator that you can use with the `readOnly`, `eventCategory`, and `resources.type` fields.
  /// [field] Specifies a field in an event record on which to filter events to be logged. You can specify only the following values: `readOnly`, `eventSource`, `eventName`, `eventCategory`, `resources.type`, `resources.ARN`.
  /// [notEndsWiths] A list of values that excludes events that match the last few characters of the event record field specified as the value of `field`.
  /// [notEquals] A list of values that excludes events that match the exact value of the event record field specified as the value of `field`.
  /// [notStartsWiths] A list of values that excludes events that match the first few characters of the event record field specified as the value of `field`.
  /// [startsWiths] A list of values that includes events that match the first few characters of the event record field specified as the value of `field`.
  EventDataStoreAdvancedEventSelectorFieldSelector({
    this.endsWiths,
    this.equals,
    this.field,
    this.notEndsWiths,
    this.notEquals,
    this.notStartsWiths,
    this.startsWiths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endsWiths': ?endsWiths,
      'equals': ?equals,
      'field': ?field,
      'notEndsWiths': ?notEndsWiths,
      'notEquals': ?notEquals,
      'notStartsWiths': ?notStartsWiths,
      'startsWiths': ?startsWiths,
    };
  }

  factory EventDataStoreAdvancedEventSelectorFieldSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventDataStoreAdvancedEventSelectorFieldSelector(
      endsWiths: map['endsWiths'] == null
          ? null
          : (map['endsWiths'] as List).cast<String>(),
      equals: map['equals'] == null
          ? null
          : (map['equals'] as List).cast<String>(),
      field: map['field'] == null ? null : map['field'] as String,
      notEndsWiths: map['notEndsWiths'] == null
          ? null
          : (map['notEndsWiths'] as List).cast<String>(),
      notEquals: map['notEquals'] == null
          ? null
          : (map['notEquals'] as List).cast<String>(),
      notStartsWiths: map['notStartsWiths'] == null
          ? null
          : (map['notStartsWiths'] as List).cast<String>(),
      startsWiths: map['startsWiths'] == null
          ? null
          : (map['startsWiths'] as List).cast<String>(),
    );
  }
}
