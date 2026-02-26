// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_iambinding_condition/job_iambinding_condition.dart';

/// The set of arguments for JobIAMBinding.
class JobIAMBindingArgs {
  final Input<JobIAMBindingCondition>? condition;
  final Input<String> jobId;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<List<String>> members;

  /// The project in which the job belongs. If it
  /// is not provided, the provider will use a default.
  final Input<String>? project;

  /// The region in which the job belongs. If it
  /// is not provided, the provider will use a default.
  final Input<String>? region;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.dataproc.JobIAMBinding`" pulumi-lang-dotnet="`gcp.dataproc.JobIAMBinding`" pulumi-lang-go="`dataproc.JobIAMBinding`" pulumi-lang-python="`dataproc.JobIAMBinding`" pulumi-lang-yaml="`gcp.dataproc.JobIAMBinding`" pulumi-lang-java="`gcp.dataproc.JobIAMBinding`">`gcp.dataproc.JobIAMBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  ///
  /// <span pulumi-lang-nodejs="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-dotnet="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-go="`dataproc.JobIAMPolicy`" pulumi-lang-python="`dataproc.JobIAMPolicy`" pulumi-lang-yaml="`gcp.dataproc.JobIAMPolicy`" pulumi-lang-java="`gcp.dataproc.JobIAMPolicy`">`gcp.dataproc.JobIAMPolicy`</span> only:
  final Input<String> role;

  JobIAMBindingArgs({
    this.condition,
    required this.jobId,
    required this.members,
    this.project,
    this.region,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<JobIAMBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['jobId'] = jobId;
    map['members'] = members;
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

  factory JobIAMBindingArgs.fromMap(Map<String, dynamic> map) {
    return JobIAMBindingArgs(
      condition:
          Input.asOptionalInput<JobIAMBindingCondition>(map['condition']),
      jobId: Input.asInput<String>(map['jobId']),
      members: Input.asInput<List<String>>(map['members']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
