// ignore_for_file: unused_element, unnecessary_cast

class GetTableRetentionProperty {
  /// Duration in days in which the data must be stored in magnetic store.
  final int magneticStoreRetentionPeriodInDays;

  /// Duration in hours in which the data must be stored in memory store.
  final int memoryStoreRetentionPeriodInHours;

  GetTableRetentionProperty({
    required this.magneticStoreRetentionPeriodInDays,
    required this.memoryStoreRetentionPeriodInHours,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['magneticStoreRetentionPeriodInDays'] =
        magneticStoreRetentionPeriodInDays;
    map['memoryStoreRetentionPeriodInHours'] =
        memoryStoreRetentionPeriodInHours;
    return map;
  }

  factory GetTableRetentionProperty.fromMap(Map<String, dynamic> map) {
    return GetTableRetentionProperty(
      magneticStoreRetentionPeriodInDays:
          map['magneticStoreRetentionPeriodInDays'] as int,
      memoryStoreRetentionPeriodInHours:
          map['memoryStoreRetentionPeriodInHours'] as int,
    );
  }
}
