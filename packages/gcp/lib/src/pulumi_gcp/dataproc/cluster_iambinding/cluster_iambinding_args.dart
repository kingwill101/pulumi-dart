// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_iambinding_condition/cluster_iambinding_condition.dart';

/// The set of arguments for ClusterIAMBinding.
class ClusterIAMBindingArgs {
  /// The name or relative resource id of the cluster to manage IAM policies for.
  ///
  /// For <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-go="`dataproc.ClusterIAMMember`" pulumi-lang-python="`dataproc.ClusterIAMMember`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMMember`" pulumi-lang-java="`gcp.dataproc.ClusterIAMMember`">`gcp.dataproc.ClusterIAMMember`</span> or <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-go="`dataproc.ClusterIAMBinding`" pulumi-lang-python="`dataproc.ClusterIAMBinding`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-java="`gcp.dataproc.ClusterIAMBinding`">`gcp.dataproc.ClusterIAMBinding`</span>:
  final Input<String> cluster;
  final Input<ClusterIAMBindingCondition>? condition;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<List<String>> members;

  /// The project in which the cluster belongs. If it
  /// is not provided, the provider will use a default.
  final Input<String>? project;

  /// The region in which the cluster belongs. If it
  /// is not provided, the provider will use a default.
  final Input<String>? region;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-go="`dataproc.ClusterIAMBinding`" pulumi-lang-python="`dataproc.ClusterIAMBinding`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMBinding`" pulumi-lang-java="`gcp.dataproc.ClusterIAMBinding`">`gcp.dataproc.ClusterIAMBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  ///
  /// <span pulumi-lang-nodejs="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-dotnet="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-go="`dataproc.ClusterIAMPolicy`" pulumi-lang-python="`dataproc.ClusterIAMPolicy`" pulumi-lang-yaml="`gcp.dataproc.ClusterIAMPolicy`" pulumi-lang-java="`gcp.dataproc.ClusterIAMPolicy`">`gcp.dataproc.ClusterIAMPolicy`</span> only:
  final Input<String> role;

  ClusterIAMBindingArgs({
    required this.cluster,
    this.condition,
    required this.members,
    this.project,
    this.region,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<ClusterIAMBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
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

  factory ClusterIAMBindingArgs.fromMap(Map<String, dynamic> map) {
    return ClusterIAMBindingArgs(
      cluster: Input.asInput<String>(map['cluster']),
      condition:
          Input.asOptionalInput<ClusterIAMBindingCondition>(map['condition']),
      members: Input.asInput<List<String>>(map['members']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
