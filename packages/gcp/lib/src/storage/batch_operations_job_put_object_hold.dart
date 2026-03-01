// ignore_for_file: unused_element, unnecessary_cast

class BatchOperationsJobPutObjectHold {
  /// set/unset to update event based hold for objects.
  final String? eventBasedHold;

  /// set/unset to update temporary based hold for objects.
  final String? temporaryHold;

  /// Creates a new [BatchOperationsJobPutObjectHold].
  /// [eventBasedHold] set/unset to update event based hold for objects.
  /// [temporaryHold] set/unset to update temporary based hold for objects.
  BatchOperationsJobPutObjectHold({this.eventBasedHold, this.temporaryHold});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBasedHold': ?eventBasedHold,
      'temporaryHold': ?temporaryHold,
    };
  }

  factory BatchOperationsJobPutObjectHold.fromMap(Map<String, dynamic> map) {
    return BatchOperationsJobPutObjectHold(
      eventBasedHold: map['eventBasedHold'] == null
          ? null
          : map['eventBasedHold'] as String,
      temporaryHold: map['temporaryHold'] == null
          ? null
          : map['temporaryHold'] as String,
    );
  }
}
