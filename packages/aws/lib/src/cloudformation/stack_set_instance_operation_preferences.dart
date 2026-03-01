// ignore_for_file: unused_element, unnecessary_cast

class StackSetInstanceOperationPreferences {
  /// Specifies how the concurrency level behaves during the operation execution. Valid values are `STRICT_FAILURE_TOLERANCE` and `SOFT_FAILURE_TOLERANCE`.
  final String? concurrencyMode;

  /// Number of accounts, per Region, for which this operation can fail before AWS CloudFormation stops the operation in that Region.
  final int? failureToleranceCount;

  /// Percentage of accounts, per Region, for which this stack operation can fail before AWS CloudFormation stops the operation in that Region.
  final int? failureTolerancePercentage;

  /// Maximum number of accounts in which to perform this operation at one time.
  final int? maxConcurrentCount;

  /// Maximum percentage of accounts in which to perform this operation at one time.
  final int? maxConcurrentPercentage;

  /// Concurrency type of deploying StackSets operations in Regions, could be in parallel or one Region at a time. Valid values are `SEQUENTIAL` and `PARALLEL`.
  final String? regionConcurrencyType;

  /// Order of the Regions in where you want to perform the stack operation.
  final List<String>? regionOrders;

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

  factory StackSetInstanceOperationPreferences.fromMap(
    Map<String, dynamic> map,
  ) {
    return StackSetInstanceOperationPreferences(
      concurrencyMode: map['concurrencyMode'] == null
          ? null
          : map['concurrencyMode'] as String,
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
