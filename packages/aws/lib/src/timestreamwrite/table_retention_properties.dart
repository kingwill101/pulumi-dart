// ignore_for_file: unused_element, unnecessary_cast

class TableRetentionProperties {
  /// The duration for which data must be stored in the magnetic store. Minimum value of 1. Maximum value of 73000.
  final int magneticStoreRetentionPeriodInDays;

  /// The duration for which data must be stored in the memory store. Minimum value of 1. Maximum value of 8766.
  final int memoryStoreRetentionPeriodInHours;

  /// Creates a new [TableRetentionProperties].
  /// [magneticStoreRetentionPeriodInDays] The duration for which data must be stored in the magnetic store. Minimum value of 1. Maximum value of 73000.
  /// [memoryStoreRetentionPeriodInHours] The duration for which data must be stored in the memory store. Minimum value of 1. Maximum value of 8766.
  TableRetentionProperties({
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

  factory TableRetentionProperties.fromMap(Map<String, dynamic> map) {
    return TableRetentionProperties(
      magneticStoreRetentionPeriodInDays:
          map['magneticStoreRetentionPeriodInDays'] as int,
      memoryStoreRetentionPeriodInHours:
          map['memoryStoreRetentionPeriodInHours'] as int,
    );
  }
}
