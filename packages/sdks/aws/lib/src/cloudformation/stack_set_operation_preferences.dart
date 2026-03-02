// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackSetOperationPreferences {
  /// The number of accounts, per Region, for which this operation can fail before AWS CloudFormation stops the operation in that Region.
  final pulumi.Input<int>? failureToleranceCount;
  /// The percentage of accounts, per Region, for which this stack operation can fail before AWS CloudFormation stops the operation in that Region.
  final pulumi.Input<int>? failureTolerancePercentage;
  /// The maximum number of accounts in which to perform this operation at one time.
  final pulumi.Input<int>? maxConcurrentCount;
  /// The maximum percentage of accounts in which to perform this operation at one time.
  final pulumi.Input<int>? maxConcurrentPercentage;
  /// The concurrency type of deploying StackSets operations in Regions, could be in parallel or one Region at a time.
  final pulumi.Input<String>? regionConcurrencyType;
  /// The order of the Regions in where you want to perform the stack operation.
  final pulumi.Input<List<String>>? regionOrders;

  /// Creates a new [StackSetOperationPreferences].
  /// [failureToleranceCount] The number of accounts, per Region, for which this operation can fail before AWS CloudFormation stops the operation in that Region.
  /// [failureTolerancePercentage] The percentage of accounts, per Region, for which this stack operation can fail before AWS CloudFormation stops the operation in that Region.
  /// [maxConcurrentCount] The maximum number of accounts in which to perform this operation at one time.
  /// [maxConcurrentPercentage] The maximum percentage of accounts in which to perform this operation at one time.
  /// [regionConcurrencyType] The concurrency type of deploying StackSets operations in Regions, could be in parallel or one Region at a time.
  /// [regionOrders] The order of the Regions in where you want to perform the stack operation.
  StackSetOperationPreferences({
    this.failureToleranceCount,
    this.failureTolerancePercentage,
    this.maxConcurrentCount,
    this.maxConcurrentPercentage,
    this.regionConcurrencyType,
    this.regionOrders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureToleranceCount': ?failureToleranceCount,
      'failureTolerancePercentage': ?failureTolerancePercentage,
      'maxConcurrentCount': ?maxConcurrentCount,
      'maxConcurrentPercentage': ?maxConcurrentPercentage,
      'regionConcurrencyType': ?regionConcurrencyType,
      'regionOrders': ?regionOrders,
    };
  }

  factory StackSetOperationPreferences.fromMap(Map<String, dynamic> map) {
    return StackSetOperationPreferences(
      failureToleranceCount: map['failureToleranceCount'] == null ? null : ((map['failureToleranceCount'] as int).input()).input(),
      failureTolerancePercentage: map['failureTolerancePercentage'] == null ? null : ((map['failureTolerancePercentage'] as int).input()).input(),
      maxConcurrentCount: map['maxConcurrentCount'] == null ? null : ((map['maxConcurrentCount'] as int).input()).input(),
      maxConcurrentPercentage: map['maxConcurrentPercentage'] == null ? null : ((map['maxConcurrentPercentage'] as int).input()).input(),
      regionConcurrencyType: map['regionConcurrencyType'] == null ? null : ((map['regionConcurrencyType'] as String).input()).input(),
      regionOrders: map['regionOrders'] == null ? null : (((map['regionOrders'] as List).cast<String>()).input()).input(),
    );
  }
}

