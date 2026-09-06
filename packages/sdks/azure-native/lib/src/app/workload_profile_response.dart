// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Workload profile to scope container app execution.
class WorkloadProfileResponse {
  /// Whether to use a FIPS-enabled OS. Supported only for dedicated workload profiles.
  final pulumi.Input<bool?>? enableFips;
  /// The maximum capacity.
  final pulumi.Input<int?>? maximumCount;
  /// The minimum capacity.
  final pulumi.Input<int?>? minimumCount;
  /// Workload profile type for the workloads to run on.
  final pulumi.Input<String> name;
  /// Workload profile type for the workloads to run on.
  final pulumi.Input<String> workloadProfileType;

  /// Creates a new [WorkloadProfileResponse].
  /// [enableFips] Whether to use a FIPS-enabled OS. Supported only for dedicated workload profiles.
  /// [maximumCount] The maximum capacity.
  /// [minimumCount] The minimum capacity.
  /// [name] Workload profile type for the workloads to run on.
  /// [workloadProfileType] Workload profile type for the workloads to run on.
  WorkloadProfileResponse({
    pulumi.Input<bool?>? enableFips,
    this.maximumCount,
    this.minimumCount,
    required this.name,
    required this.workloadProfileType,
  }) : enableFips = enableFips ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableFips': ?enableFips,
      'maximumCount': ?maximumCount,
      'minimumCount': ?minimumCount,
      'name': name,
      'workloadProfileType': workloadProfileType,
    };
  }

  factory WorkloadProfileResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadProfileResponse(
      enableFips: (() { final guardedValue = map['enableFips']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maximumCount: (() { final guardedValue = map['maximumCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      minimumCount: (() { final guardedValue = map['minimumCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      workloadProfileType: pulumi.Input.fromValue(map['workloadProfileType'] as String),
    );
  }
}
