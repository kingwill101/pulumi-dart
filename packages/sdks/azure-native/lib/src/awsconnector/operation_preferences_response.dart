// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OperationPreferences
class OperationPreferencesResponse {
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
      failureToleranceCount: (() { final guardedValue = map['failureToleranceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      failureTolerancePercentage: (() { final guardedValue = map['failureTolerancePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxConcurrentCount: (() { final guardedValue = map['maxConcurrentCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxConcurrentPercentage: (() { final guardedValue = map['maxConcurrentPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      regionConcurrencyType: (() { final guardedValue = map['regionConcurrencyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionOrder: (() { final guardedValue = map['regionOrder']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

