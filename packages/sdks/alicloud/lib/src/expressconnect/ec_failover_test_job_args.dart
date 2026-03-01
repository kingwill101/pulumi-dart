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
    pulumi.Output<String>? description,
    pulumi.Output<String>? ecFailoverTestJobName,
    required pulumi.Output<int> jobDuration,
    required pulumi.Output<String> jobType,
    required pulumi.Output<List<String>> resourceIds,
    required pulumi.Output<String> resourceType,
    pulumi.Output<String>? status,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      ecFailoverTestJobName = pulumi.Input.asOptionalInput<String>(ecFailoverTestJobName),
      jobDuration = pulumi.Input.asInput<int>(jobDuration),
      jobType = pulumi.Input.asInput<String>(jobType),
      resourceIds = pulumi.Input.asInput<List<String>>(resourceIds),
      resourceType = pulumi.Input.asInput<String>(resourceType),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ecFailoverTestJobName: map['ecFailoverTestJobName'] == null ? null : pulumi.Output.create<String>(map['ecFailoverTestJobName'] as String),
      jobDuration: pulumi.Output.create<int>(map['jobDuration'] as int),
      jobType: pulumi.Output.create<String>(map['jobType'] as String),
      resourceIds: pulumi.Output.create<List<String>>((map['resourceIds'] as List).cast<String>()),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

