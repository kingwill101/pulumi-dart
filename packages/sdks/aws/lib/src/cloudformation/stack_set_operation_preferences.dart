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
      failureToleranceCount: (() { final guardedValue = map['failureToleranceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      failureTolerancePercentage: (() { final guardedValue = map['failureTolerancePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxConcurrentCount: (() { final guardedValue = map['maxConcurrentCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxConcurrentPercentage: (() { final guardedValue = map['maxConcurrentPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      regionConcurrencyType: (() { final guardedValue = map['regionConcurrencyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionOrders: (() { final guardedValue = map['regionOrders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

