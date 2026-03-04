// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The database project summary class.
class DatabaseProjectSummaryResponse {
  /// Gets or sets the extended summary.
  final pulumi.Input<Map<String, String>>? extendedSummary;

  /// Gets the Instance type.
  /// Expected value is 'Databases'.
  final pulumi.Input<String> instanceType;

  /// Gets or sets the time when summary was last refreshed.
  final pulumi.Input<String>? lastSummaryRefreshedTime;

  /// Gets or sets the state of refresh summary.
  final pulumi.Input<String>? refreshSummaryState;

  /// Creates a new [DatabaseProjectSummaryResponse].
  /// [extendedSummary] Gets or sets the extended summary.
  /// [instanceType] Gets the Instance type.
  /// [lastSummaryRefreshedTime] Gets or sets the time when summary was last refreshed.
  /// [refreshSummaryState] Gets or sets the state of refresh summary.
  DatabaseProjectSummaryResponse({
    this.extendedSummary,
    required this.instanceType,
    this.lastSummaryRefreshedTime,
    this.refreshSummaryState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedSummary': ?extendedSummary,
      'instanceType': instanceType,
      'lastSummaryRefreshedTime': ?lastSummaryRefreshedTime,
      'refreshSummaryState': ?refreshSummaryState,
    };
  }

  factory DatabaseProjectSummaryResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseProjectSummaryResponse(
      extendedSummary: (() {
        final guardedValue = map['extendedSummary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      lastSummaryRefreshedTime: (() {
        final guardedValue = map['lastSummaryRefreshedTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      refreshSummaryState: (() {
        final guardedValue = map['refreshSummaryState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
