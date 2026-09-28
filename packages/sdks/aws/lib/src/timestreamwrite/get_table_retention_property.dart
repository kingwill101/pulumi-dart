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
  const GetTableRetentionProperty({
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
      magneticStoreRetentionPeriodInDays: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['magneticStoreRetentionPeriodInDays'])),
      memoryStoreRetentionPeriodInHours: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['memoryStoreRetentionPeriodInHours'])),
    );
  }
}
