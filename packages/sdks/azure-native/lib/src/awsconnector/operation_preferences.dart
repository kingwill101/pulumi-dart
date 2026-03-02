// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OperationPreferences
class OperationPreferences {
  /// Property failureToleranceCount
  final pulumi.Input<int>? failureToleranceCount;
  /// Property failureTolerancePercentage
  final pulumi.Input<int>? failureTolerancePercentage;
  /// Property maxConcurrentCount
  final pulumi.Input<int>? maxConcurrentCount;
  /// Property maxConcurrentPercentage
  final pulumi.Input<int>? maxConcurrentPercentage;
  /// The concurrency type of deploying StackSets operations in regions, could be in parallel or one region at a time
  final pulumi.Input<String>? regionConcurrencyType;
  /// Property regionOrder
  final pulumi.Input<List<String>>? regionOrder;

  /// Creates a new [OperationPreferences].
  /// [failureToleranceCount] Property failureToleranceCount
  /// [failureTolerancePercentage] Property failureTolerancePercentage
  /// [maxConcurrentCount] Property maxConcurrentCount
  /// [maxConcurrentPercentage] Property maxConcurrentPercentage
  /// [regionConcurrencyType] The concurrency type of deploying StackSets operations in regions, could be in parallel or one region at a time
  /// [regionOrder] Property regionOrder
  OperationPreferences({
    this.failureToleranceCount,
    this.failureTolerancePercentage,
    this.maxConcurrentCount,
    this.maxConcurrentPercentage,
    this.regionConcurrencyType,
    this.regionOrder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureToleranceCount': ?failureToleranceCount,
      'failureTolerancePercentage': ?failureTolerancePercentage,
      'maxConcurrentCount': ?maxConcurrentCount,
      'maxConcurrentPercentage': ?maxConcurrentPercentage,
      'regionConcurrencyType': ?regionConcurrencyType,
      'regionOrder': ?regionOrder,
    };
  }

  factory OperationPreferences.fromMap(Map<String, dynamic> map) {
    return OperationPreferences(
      failureToleranceCount: map['failureToleranceCount'] == null ? null : (map['failureToleranceCount'] as int).input(),
      failureTolerancePercentage: map['failureTolerancePercentage'] == null ? null : (map['failureTolerancePercentage'] as int).input(),
      maxConcurrentCount: map['maxConcurrentCount'] == null ? null : (map['maxConcurrentCount'] as int).input(),
      maxConcurrentPercentage: map['maxConcurrentPercentage'] == null ? null : (map['maxConcurrentPercentage'] as int).input(),
      regionConcurrencyType: map['regionConcurrencyType'] == null ? null : (map['regionConcurrencyType'] as String).input(),
      regionOrder: map['regionOrder'] == null ? null : ((map['regionOrder'] as List).cast<String>()).input(),
    );
  }
}

