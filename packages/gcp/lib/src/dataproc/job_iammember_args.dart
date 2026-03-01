// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_iammember_condition.dart';

/// {@template pulumi_dataproc_job_iammember_job_iammember_args_doc}
/// The set of arguments for JobIAMMember.
/// {@endtemplate}
/// {@macro pulumi_dataproc_job_iammember_job_iammember_args_doc}
class JobIAMMemberArgs {
  final pulumi.Input<JobIAMMemberCondition>? condition;
  final pulumi.Input<String> jobId;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;

  /// The project in which the job belongs. If it
  /// is not provided, the provider will use a default.
  final pulumi.Input<String>? project;

  /// The region in which the job belongs. If it
  /// is not provided, the provider will use a default.
  final pulumi.Input<String>? region;

  /// The role that should be applied. Only one
  /// `gcp.dataproc.JobIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  ///
  /// `gcp.dataproc.JobIAMPolicy` only:
  final pulumi.Input<String> role;

  /// Creates a new [JobIAMMemberArgs].
  /// [condition] Optional.
  /// [jobId] Required.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [project] The project in which the job belongs. If it
  /// [region] The region in which the job belongs. If it
  /// [role] The role that should be applied. Only one
  JobIAMMemberArgs({
    JobIAMMemberCondition? condition,
    required String jobId,
    required String member,
    String? project,
    String? region,
    required String role,
  }) : condition = pulumi.Input.asOptionalInput<JobIAMMemberCondition>(
         condition,
       ),
       jobId = pulumi.Input.asInput<String>(jobId),
       member = pulumi.Input.asInput<String>(member),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region),
       role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            JobIAMMemberCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'jobId': jobId,
      'member': member,
      'project': ?project,
      'region': ?region,
      'role': role,
    };
  }

  factory JobIAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return JobIAMMemberArgs(
      condition: map['condition'] == null
          ? null
          : JobIAMMemberCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      jobId: map['jobId'] as String,
      member: map['member'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      role: map['role'] as String,
    );
  }
}
