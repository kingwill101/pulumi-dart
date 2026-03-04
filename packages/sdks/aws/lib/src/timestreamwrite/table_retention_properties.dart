// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TableRetentionProperties {
  /// The duration for which data must be stored in the magnetic store. Minimum value of 1. Maximum value of 73000.
  final pulumi.Input<int> magneticStoreRetentionPeriodInDays;

  /// The duration for which data must be stored in the memory store. Minimum value of 1. Maximum value of 8766.
  final pulumi.Input<int> memoryStoreRetentionPeriodInHours;

  /// Creates a new [TableRetentionProperties].
  /// [magneticStoreRetentionPeriodInDays] The duration for which data must be stored in the magnetic store. Minimum value of 1. Maximum value of 73000.
  /// [memoryStoreRetentionPeriodInHours] The duration for which data must be stored in the memory store. Minimum value of 1. Maximum value of 8766.
  TableRetentionProperties({
    required this.magneticStoreRetentionPeriodInDays,
    required this.memoryStoreRetentionPeriodInHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'magneticStoreRetentionPeriodInDays': magneticStoreRetentionPeriodInDays,
      'memoryStoreRetentionPeriodInHours': memoryStoreRetentionPeriodInHours,
    };
  }

  factory TableRetentionProperties.fromMap(Map<String, dynamic> map) {
    return TableRetentionProperties(
      magneticStoreRetentionPeriodInDays: pulumi.Input.fromValue(
        map['magneticStoreRetentionPeriodInDays'] as int,
      ),
      memoryStoreRetentionPeriodInHours: pulumi.Input.fromValue(
        map['memoryStoreRetentionPeriodInHours'] as int,
      ),
    );
  }
}
