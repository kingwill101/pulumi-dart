// ignore_for_file: unused_element, unnecessary_cast

class StackSetOperationPreferences {
  /// The number of accounts, per Region, for which this operation can fail before AWS CloudFormation stops the operation in that Region.
  final int? failureToleranceCount;

  /// The percentage of accounts, per Region, for which this stack operation can fail before AWS CloudFormation stops the operation in that Region.
  final int? failureTolerancePercentage;

  /// The maximum number of accounts in which to perform this operation at one time.
  final int? maxConcurrentCount;

  /// The maximum percentage of accounts in which to perform this operation at one time.
  final int? maxConcurrentPercentage;

  /// The concurrency type of deploying StackSets operations in Regions, could be in parallel or one Region at a time.
  final String? regionConcurrencyType;

  /// The order of the Regions in where you want to perform the stack operation.
  final List<String>? regionOrders;

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
      failureToleranceCount: map['failureToleranceCount'] == null
          ? null
          : map['failureToleranceCount'] as int,
      failureTolerancePercentage: map['failureTolerancePercentage'] == null
          ? null
          : map['failureTolerancePercentage'] as int,
      maxConcurrentCount: map['maxConcurrentCount'] == null
          ? null
          : map['maxConcurrentCount'] as int,
      maxConcurrentPercentage: map['maxConcurrentPercentage'] == null
          ? null
          : map['maxConcurrentPercentage'] as int,
      regionConcurrencyType: map['regionConcurrencyType'] == null
          ? null
          : map['regionConcurrencyType'] as String,
      regionOrders: map['regionOrders'] == null
          ? null
          : (map['regionOrders'] as List).cast<String>(),
    );
  }
}
