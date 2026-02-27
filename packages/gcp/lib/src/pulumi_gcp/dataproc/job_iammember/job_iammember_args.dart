// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../job_iammember_condition/job_iammember_condition.dart';

/// The set of arguments for JobIAMMember.
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

  JobIAMMemberArgs({
    this.condition,
    required this.jobId,
    required this.member,
    this.project,
    this.region,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          JobIAMMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['jobId'] = jobId;
    map['member'] = member;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['role'] = role;
    return map;
  }

  factory JobIAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return JobIAMMemberArgs(
      condition:
          pulumi.Input.asOptionalInput<JobIAMMemberCondition>(map['condition']),
      jobId: pulumi.Input.asInput<String>(map['jobId']),
      member: pulumi.Input.asInput<String>(map['member']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
