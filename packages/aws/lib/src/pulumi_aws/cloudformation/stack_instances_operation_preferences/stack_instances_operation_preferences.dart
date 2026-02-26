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
    final map = <String, dynamic>{};
    final concurrencyModeValue = concurrencyMode;
    if (concurrencyModeValue != null) {
      map['concurrencyMode'] = concurrencyModeValue;
    }
    final failureToleranceCountValue = failureToleranceCount;
    if (failureToleranceCountValue != null) {
      map['failureToleranceCount'] = failureToleranceCountValue;
    }
    final failureTolerancePercentageValue = failureTolerancePercentage;
    if (failureTolerancePercentageValue != null) {
      map['failureTolerancePercentage'] = failureTolerancePercentageValue;
    }
    final maxConcurrentCountValue = maxConcurrentCount;
    if (maxConcurrentCountValue != null) {
      map['maxConcurrentCount'] = maxConcurrentCountValue;
    }
    final maxConcurrentPercentageValue = maxConcurrentPercentage;
    if (maxConcurrentPercentageValue != null) {
      map['maxConcurrentPercentage'] = maxConcurrentPercentageValue;
    }
    final regionConcurrencyTypeValue = regionConcurrencyType;
    if (regionConcurrencyTypeValue != null) {
      map['regionConcurrencyType'] = regionConcurrencyTypeValue;
    }
    final regionOrdersValue = regionOrders;
    if (regionOrdersValue != null) {
      map['regionOrders'] = regionOrdersValue;
    }
    return map;
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
