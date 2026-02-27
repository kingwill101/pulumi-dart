import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_iammember_condition/cluster_iammember_condition.dart';
import 'cluster_iammember_args.dart';

/// Three different resources help you manage IAM policies on dataproc clusters. Each of these resources serves a different use case:
///
/// * `gcp.dataproc.ClusterIAMPolicy`: Authoritative. Sets the IAM policy for the cluster and replaces any existing policy already attached.
/// * `gcp.dataproc.ClusterIAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the cluster are preserved.
/// * `gcp.dataproc.ClusterIAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the cluster are preserved.
///
/// > **Note:** `gcp.dataproc.ClusterIAMPolicy` **cannot** be used in conjunction with `gcp.dataproc.ClusterIAMBinding` and `gcp.dataproc.ClusterIAMMember` or they will fight over what your policy should be. In addition, be careful not to accidentally unset ownership of the cluster as `gcp.dataproc.ClusterIAMPolicy` replaces the entire policy.
///
/// > **Note:** `gcp.dataproc.ClusterIAMBinding` resources **can be** used in conjunction with `gcp.dataproc.ClusterIAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.dataproc.ClusterIAMPolicy
///
///
///
/// ## gcp.dataproc.ClusterIAMBinding
///
///
///
/// ## gcp.dataproc.ClusterIAMMember
///
///
///
/// ## gcp.dataproc.ClusterIAMPolicy
///
///
///
/// ## gcp.dataproc.ClusterIAMBinding
///
///
///
/// ## gcp.dataproc.ClusterIAMMember
///
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the `cluster` identifier of the Dataproc Cluster resource only. For example:
///
/// * `projects/{project}/regions/{region}/clusters/{cluster}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = projects/{project}/regions/{region}/clusters/{cluster}
///
/// to = google_dataproc_cluster_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:dataproc/clusterIAMMember:ClusterIAMMember default projects/{project}/regions/{region}/clusters/{cluster}
/// ```
class ClusterIAMMember extends pulumi.CustomResource {
  /// The name or relative resource id of the cluster to manage IAM policies for.
  ///
  /// For `gcp.dataproc.ClusterIAMMember` or `gcp.dataproc.ClusterIAMBinding`:
  late final pulumi.Output<String> cluster;
  late final pulumi.Output<ClusterIAMMemberCondition?> condition;

  /// (Computed) The etag of the clusters's IAM policy.
  late final pulumi.Output<String> etag;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<String> member;

  /// The project in which the cluster belongs. If it
  /// is not provided, the provider will use a default.
  late final pulumi.Output<String> project;

  /// The region in which the cluster belongs. If it
  /// is not provided, the provider will use a default.
  late final pulumi.Output<String> region;

  /// The role that should be applied. Only one
  /// `gcp.dataproc.ClusterIAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  ///
  /// `gcp.dataproc.ClusterIAMPolicy` only:
  late final pulumi.Output<String> role;

  ClusterIAMMember(
    String name, {
    ClusterIAMMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/clusterIAMMember:ClusterIAMMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cluster = registerOutput<String>('cluster');
    this.condition = registerOutput<ClusterIAMMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.role = registerOutput<String>('role');
  }
}
