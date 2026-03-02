// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackSetInstanceOperationPreferences {
  /// Specifies how the concurrency level behaves during the operation execution. Valid values are `STRICT_FAILURE_TOLERANCE` and `SOFT_FAILURE_TOLERANCE`.
  final pulumi.Input<String>? concurrencyMode;
  /// Number of accounts, per Region, for which this operation can fail before AWS CloudFormation stops the operation in that Region.
  final pulumi.Input<int>? failureToleranceCount;
  /// Percentage of accounts, per Region, for which this stack operation can fail before AWS CloudFormation stops the operation in that Region.
  final pulumi.Input<int>? failureTolerancePercentage;
  /// Maximum number of accounts in which to perform this operation at one time.
  final pulumi.Input<int>? maxConcurrentCount;
  /// Maximum percentage of accounts in which to perform this operation at one time.
  final pulumi.Input<int>? maxConcurrentPercentage;
  /// Concurrency type of deploying StackSets operations in Regions, could be in parallel or one Region at a time. Valid values are `SEQUENTIAL` and `PARALLEL`.
  final pulumi.Input<String>? regionConcurrencyType;
  /// Order of the Regions in where you want to perform the stack operation.
  final pulumi.Input<List<String>>? regionOrders;

  /// Creates a new [StackSetInstanceOperationPreferences].
  /// [concurrencyMode] Specifies how the concurrency level behaves during the operation execution. Valid values are `STRICT_FAILURE_TOLERANCE` and `SOFT_FAILURE_TOLERANCE`.
  /// [failureToleranceCount] Number of accounts, per Region, for which this operation can fail before AWS CloudFormation stops the operation in that Region.
  /// [failureTolerancePercentage] Percentage of accounts, per Region, for which this stack operation can fail before AWS CloudFormation stops the operation in that Region.
  /// [maxConcurrentCount] Maximum number of accounts in which to perform this operation at one time.
  /// [maxConcurrentPercentage] Maximum percentage of accounts in which to perform this operation at one time.
  /// [regionConcurrencyType] Concurrency type of deploying StackSets operations in Regions, could be in parallel or one Region at a time. Valid values are `SEQUENTIAL` and `PARALLEL`.
  /// [regionOrders] Order of the Regions in where you want to perform the stack operation.
  StackSetInstanceOperationPreferences({
    this.concurrencyMode,
    this.failureToleranceCount,
    this.failureTolerancePercentage,
    this.maxConcurrentCount,
    this.maxConcurrentPercentage,
    this.regionConcurrencyType,
    this.regionOrders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'concurrencyMode': ?concurrencyMode,
      'failureToleranceCount': ?failureToleranceCount,
      'failureTolerancePercentage': ?failureTolerancePercentage,
      'maxConcurrentCount': ?maxConcurrentCount,
      'maxConcurrentPercentage': ?maxConcurrentPercentage,
      'regionConcurrencyType': ?regionConcurrencyType,
      'regionOrders': ?regionOrders,
    };
  }

  factory StackSetInstanceOperationPreferences.fromMap(Map<String, dynamic> map) {
    return StackSetInstanceOperationPreferences(
      concurrencyMode: map['concurrencyMode'] == null ? null : ((map['concurrencyMode'] as String).input()).input(),
      failureToleranceCount: map['failureToleranceCount'] == null ? null : ((map['failureToleranceCount'] as int).input()).input(),
      failureTolerancePercentage: map['failureTolerancePercentage'] == null ? null : ((map['failureTolerancePercentage'] as int).input()).input(),
      maxConcurrentCount: map['maxConcurrentCount'] == null ? null : ((map['maxConcurrentCount'] as int).input()).input(),
      maxConcurrentPercentage: map['maxConcurrentPercentage'] == null ? null : ((map['maxConcurrentPercentage'] as int).input()).input(),
      regionConcurrencyType: map['regionConcurrencyType'] == null ? null : ((map['regionConcurrencyType'] as String).input()).input(),
      regionOrders: map['regionOrders'] == null ? null : (((map['regionOrders'] as List).cast<String>()).input()).input(),
    );
  }
}

