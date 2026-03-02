// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_ec_failover_test_job_ec_failover_test_job_args_doc}
/// The set of arguments for EcFailoverTestJob.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_ec_failover_test_job_ec_failover_test_job_args_doc}
class EcFailoverTestJobArgs {
  /// Job description.
  final pulumi.Input<String>? description;
  /// Job name.
  final pulumi.Input<String>? ecFailoverTestJobName;
  /// Job duration.
  final pulumi.Input<int> jobDuration;
  /// Job type.
  final pulumi.Input<String> jobType;
  /// Resource id list.
  final pulumi.Input<List<String>> resourceIds;
  /// Resource type.
  final pulumi.Input<String> resourceType;
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [EcFailoverTestJobArgs].
  /// [description] Job description.
  /// [ecFailoverTestJobName] Job name.
  /// [jobDuration] Job duration.
  /// [jobType] Job type.
  /// [resourceIds] Resource id list.
  /// [resourceType] Resource type.
  /// [status] The status of the resource.
  EcFailoverTestJobArgs({
    this.description,
    this.ecFailoverTestJobName,
    required this.jobDuration,
    required this.jobType,
    required this.resourceIds,
    required this.resourceType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ecFailoverTestJobName': ?ecFailoverTestJobName,
      'jobDuration': jobDuration,
      'jobType': jobType,
      'resourceIds': resourceIds,
      'resourceType': resourceType,
      'status': ?status,
    };
  }

  factory EcFailoverTestJobArgs.fromMap(Map<String, dynamic> map) {
    return EcFailoverTestJobArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      ecFailoverTestJobName: map['ecFailoverTestJobName'] == null ? null : (map['ecFailoverTestJobName']! as String).input(),
      jobDuration: (map['jobDuration'] as int).input(),
      jobType: (map['jobType'] as String).input(),
      resourceIds: ((map['resourceIds'] as List).cast<String>()).input(),
      resourceType: (map['resourceType'] as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

