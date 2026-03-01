// ignore_for_file: unused_element, unnecessary_cast

class StackInstancesOperationPreferences {
  /// How the concurrency level behaves during the operation execution. Valid values are `STRICT_FAILURE_TOLERANCE` and `SOFT_FAILURE_TOLERANCE`.
  final String? concurrencyMode;

  /// Number of accounts, per region, for which this operation can fail before CloudFormation stops the operation in that region.
  final int? failureToleranceCount;

  /// Percentage of accounts, per region, for which this stack operation can fail before CloudFormation stops the operation in that region.
  final int? failureTolerancePercentage;

  /// Maximum number of accounts in which to perform this operation at one time.
  final int? maxConcurrentCount;

  /// Maximum percentage of accounts in which to perform this operation at one time.
  final int? maxConcurrentPercentage;

  /// Concurrency type of deploying stack sets operations in regions, could be in parallel or one region at a time. Valid values are `SEQUENTIAL` and `PARALLEL`.
  final String? regionConcurrencyType;

  /// Order of the regions where you want to perform the stack operation.
  final List<String>? regionOrders;

  /// Creates a new [StackInstancesOperationPreferences].
  /// [concurrencyMode] How the concurrency level behaves during the operation execution. Valid values are `STRICT_FAILURE_TOLERANCE` and `SOFT_FAILURE_TOLERANCE`.
  /// [failureToleranceCount] Number of accounts, per region, for which this operation can fail before CloudFormation stops the operation in that region.
  /// [failureTolerancePercentage] Percentage of accounts, per region, for which this stack operation can fail before CloudFormation stops the operation in that region.
  /// [maxConcurrentCount] Maximum number of accounts in which to perform this operation at one time.
  /// [maxConcurrentPercentage] Maximum percentage of accounts in which to perform this operation at one time.
  /// [regionConcurrencyType] Concurrency type of deploying stack sets operations in regions, could be in parallel or one region at a time. Valid values are `SEQUENTIAL` and `PARALLEL`.
  /// [regionOrders] Order of the regions where you want to perform the stack operation.
  StackInstancesOperationPreferences({
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

  factory StackInstancesOperationPreferences.fromMap(Map<String, dynamic> map) {
    return StackInstancesOperationPreferences(
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
