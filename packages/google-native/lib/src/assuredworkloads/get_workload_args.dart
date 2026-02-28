// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_assuredworkloads_v1_get_workload_args_doc}
/// Arguments for getWorkload.
/// {@endtemplate}
/// {@macro pulumi_assuredworkloads_v1_get_workload_args_doc}
class GetWorkloadArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> workloadId;

  /// Creates a new [GetWorkloadArgs].
  /// [location] Required.
  /// [organizationId] Required.
  /// [workloadId] Required.
  GetWorkloadArgs({
    required String location,
    required String organizationId,
    required String workloadId,
  })  : location = pulumi.Input.asInput<String>(location),
        organizationId = pulumi.Input.asInput<String>(organizationId),
        workloadId = pulumi.Input.asInput<String>(workloadId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['organizationId'] = organizationId;
    map['workloadId'] = workloadId;
    return map;
  }

  factory GetWorkloadArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadArgs(
      location: map['location'] as String,
      organizationId: map['organizationId'] as String,
      workloadId: map['workloadId'] as String,
    );
  }
}
