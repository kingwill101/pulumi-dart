// ignore_for_file: unused_element, unnecessary_cast

class GetTableRetentionProperty {
  /// Duration in days in which the data must be stored in magnetic store.
  final int magneticStoreRetentionPeriodInDays;

  /// Duration in hours in which the data must be stored in memory store.
  final int memoryStoreRetentionPeriodInHours;

  /// Creates a new [GetTableRetentionProperty].
  /// [magneticStoreRetentionPeriodInDays] Duration in days in which the data must be stored in magnetic store.
  /// [memoryStoreRetentionPeriodInHours] Duration in hours in which the data must be stored in memory store.
  GetTableRetentionProperty({
    required this.magneticStoreRetentionPeriodInDays,
    required this.memoryStoreRetentionPeriodInHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'magneticStoreRetentionPeriodInDays': magneticStoreRetentionPeriodInDays,
      'memoryStoreRetentionPeriodInHours': memoryStoreRetentionPeriodInHours,
    };
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
