import 'package:pulumi/pulumi.dart';
import '../job_iammember_condition/job_iammember_condition.dart';
import 'job_iammember_args.dart';

/// Three different resources help you manage IAM policies on dataproc jobs. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.JobIAMPolicy`: Authoritative. Sets the IAM policy for the job and replaces any existing policy already attached.
/// * `gcp.dataproc.JobIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the job are preserved.
/// * `gcp.dataproc.JobIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the job are preserved.
///
/// > **Note:** `gcp.dataproc.JobIAMPolicy` **cannot** be used in conjunction with `gcp.dataproc.JobIAMBinding` and `gcp.dataproc.JobIAMMember` or they will fight over what your policy should be. In addition, be careful not to accidentally unset ownership of the job as `gcp.dataproc.JobIAMPolicy` replaces the entire policy.
///
/// > **Note:** `gcp.dataproc.JobIAMBinding` resources **can be** used in conjunction with `gcp.dataproc.JobIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.dataproc.JobIAMPolicy
///
///
///
/// ## gcp.dataproc.JobIAMBinding
///
///
///
/// ## gcp.dataproc.JobIAMMember
///
///
///
/// ## gcp.dataproc.JobIAMPolicy
///
///
///
/// ## gcp.dataproc.JobIAMBinding
///
///
///
/// ## gcp.dataproc.JobIAMMember
///
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the `job_id` identifier of the Dataproc Job resource only. For example:
///
/// * `projects/{project}/regions/{region}/jobs/{job_id}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = "projects/{project}/regions/{region}/jobs/{job_id}"
///
/// to = google_dataproc_job_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:dataproc/jobIAMMember:JobIAMMember default "projects/{project}/regions/{region}/jobs/{job_id}"
/// ```
class JobIAMMember extends CustomResource {
  late final Output<JobIAMMemberCondition?> condition;

  /// (Computed) The etag of the jobs's IAM policy.
  late final Output<String> etag;
  late final Output<String> jobId;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final Output<String> member;

  /// The project in which the job belongs. If it
  /// is not provided, the provider will use a default.
  late final Output<String> project;

  /// The region in which the job belongs. If it
  /// is not provided, the provider will use a default.
  late final Output<String> region;

  /// The role that should be applied. Only one
  /// `gcp.dataproc.JobIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  ///
  /// `gcp.dataproc.JobIAMPolicy` only:
  late final Output<String> role;

  JobIAMMember(
    String name, {
    JobIAMMemberArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/jobIAMMember:JobIAMMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<JobIAMMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.jobId = registerOutput<String>('jobId');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
