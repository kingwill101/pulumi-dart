// ignore_for_file: unused_element, unnecessary_cast

class BatchOperationsJobPutObjectHold {
  /// set/unset to update event based hold for objects.
  final String? eventBasedHold;

  /// set/unset to update temporary based hold for objects.
  final String? temporaryHold;

  /// Creates a new [BatchOperationsJobPutObjectHold].
  /// [eventBasedHold] set/unset to update event based hold for objects.
  /// [temporaryHold] set/unset to update temporary based hold for objects.
  BatchOperationsJobPutObjectHold({
    this.eventBasedHold,
    this.temporaryHold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventBasedHoldValue = eventBasedHold;
    if (eventBasedHoldValue != null) {
      map['eventBasedHold'] = eventBasedHoldValue;
    }
    final temporaryHoldValue = temporaryHold;
    if (temporaryHoldValue != null) {
      map['temporaryHold'] = temporaryHoldValue;
    }
    return map;
  }

  factory BatchOperationsJobPutObjectHold.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobPutObjectHold(
      eventBasedHold: map['eventBasedHold'] == null
          ? null
          : map['eventBasedHold'] as String,
      temporaryHold:
          map['temporaryHold'] == null ? null : map['temporaryHold'] as String,
    );
  }
}
