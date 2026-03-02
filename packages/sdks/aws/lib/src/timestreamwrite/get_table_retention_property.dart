// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTableRetentionProperty {
  /// Duration in days in which the data must be stored in magnetic store.
  final pulumi.Input<int> magneticStoreRetentionPeriodInDays;
  /// Duration in hours in which the data must be stored in memory store.
  final pulumi.Input<int> memoryStoreRetentionPeriodInHours;

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
      magneticStoreRetentionPeriodInDays: (map['magneticStoreRetentionPeriodInDays'] as int).input(),
      memoryStoreRetentionPeriodInHours: (map['memoryStoreRetentionPeriodInHours'] as int).input(),
    );
  }
}

