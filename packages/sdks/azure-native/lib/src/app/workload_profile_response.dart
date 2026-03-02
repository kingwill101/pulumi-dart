// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Workload profile to scope container app execution.
class WorkloadProfileResponse {
  /// Whether to use a FIPS-enabled OS. Supported only for dedicated workload profiles.
  final pulumi.Input<bool>? enableFips;
  /// The maximum capacity.
  final pulumi.Input<int>? maximumCount;
  /// The minimum capacity.
  final pulumi.Input<int>? minimumCount;
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
    this.enableFips,
    this.maximumCount,
    this.minimumCount,
    required this.name,
    required this.workloadProfileType,
  });

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
      enableFips: map['enableFips'] == null ? null : (map['enableFips'] as bool).input(),
      maximumCount: map['maximumCount'] == null ? null : (map['maximumCount'] as int).input(),
      minimumCount: map['minimumCount'] == null ? null : (map['minimumCount'] as int).input(),
      name: (map['name'] as String).input(),
      workloadProfileType: (map['workloadProfileType'] as String).input(),
    );
  }
}

