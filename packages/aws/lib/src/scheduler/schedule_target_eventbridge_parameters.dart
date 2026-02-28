// ignore_for_file: unused_element, unnecessary_cast

class ScheduleTargetEventbridgeParameters {
  /// Free-form string used to decide what fields to expect in the event detail. Up to 128 characters.
  final String detailType;

  /// Source of the event.
  final String source;

  /// Creates a new [ScheduleTargetEventbridgeParameters].
  /// [detailType] Free-form string used to decide what fields to expect in the event detail. Up to 128 characters.
  /// [source] Source of the event.
  ScheduleTargetEventbridgeParameters({
    required this.detailType,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['detailType'] = detailType;
    map['source'] = source;
    return map;
  }

  factory ScheduleTargetEventbridgeParameters.fromMap(
      Map<String, dynamic> map) {
    return ScheduleTargetEventbridgeParameters(
      detailType: map['detailType'] as String,
      source: map['source'] as String,
    );
  }
}
