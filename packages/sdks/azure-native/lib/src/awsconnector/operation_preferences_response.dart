// ignore_for_file: unused_element, unnecessary_cast


/// Definition of OperationPreferences
class OperationPreferencesResponse {
  /// Property failureToleranceCount
  final int? failureToleranceCount;
  /// Property failureTolerancePercentage
  final int? failureTolerancePercentage;
  /// Property maxConcurrentCount
  final int? maxConcurrentCount;
  /// Property maxConcurrentPercentage
  final int? maxConcurrentPercentage;
  /// The concurrency type of deploying StackSets operations in regions, could be in parallel or one region at a time
  final String? regionConcurrencyType;
  /// Property regionOrder
  final List<String>? regionOrder;

  /// Creates a new [OperationPreferencesResponse].
  /// [failureToleranceCount] Property failureToleranceCount
  /// [failureTolerancePercentage] Property failureTolerancePercentage
  /// [maxConcurrentCount] Property maxConcurrentCount
  /// [maxConcurrentPercentage] Property maxConcurrentPercentage
  /// [regionConcurrencyType] The concurrency type of deploying StackSets operations in regions, could be in parallel or one region at a time
  /// [regionOrder] Property regionOrder
  OperationPreferencesResponse({
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

  factory OperationPreferencesResponse.fromMap(Map<String, dynamic> map) {
    return OperationPreferencesResponse(
      failureToleranceCount: map['failureToleranceCount'] == null ? null : map['failureToleranceCount'] as int,
      failureTolerancePercentage: map['failureTolerancePercentage'] == null ? null : map['failureTolerancePercentage'] as int,
      maxConcurrentCount: map['maxConcurrentCount'] == null ? null : map['maxConcurrentCount'] as int,
      maxConcurrentPercentage: map['maxConcurrentPercentage'] == null ? null : map['maxConcurrentPercentage'] as int,
      regionConcurrencyType: map['regionConcurrencyType'] == null ? null : map['regionConcurrencyType'] as String,
      regionOrder: map['regionOrder'] == null ? null : (map['regionOrder'] as List).cast<String>(),
    );
  }
}

