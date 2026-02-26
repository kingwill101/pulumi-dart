// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_iam_binding_condition/instance_iam_binding_condition.dart';

/// The set of arguments for InstanceIamBinding.
class InstanceIamBindingArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding. Structure is documented below.
  final Input<InstanceIamBindingCondition>? condition;

  /// The name or relative resource id of the instance to manage IAM policies for.
  ///
  /// For <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamMember`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamMember`" pulumi-lang-go="`bigtable.InstanceIamMember`" pulumi-lang-python="`bigtable.InstanceIamMember`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamMember`" pulumi-lang-java="`gcp.bigtable.InstanceIamMember`">`gcp.bigtable.InstanceIamMember`</span> or <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-go="`bigtable.InstanceIamBinding`" pulumi-lang-python="`bigtable.InstanceIamBinding`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-java="`gcp.bigtable.InstanceIamBinding`">`gcp.bigtable.InstanceIamBinding`</span>:
  final Input<String> instance;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final Input<List<String>> members;
  final Input<String>? project;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-dotnet="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-go="`bigtable.InstanceIamBinding`" pulumi-lang-python="`bigtable.InstanceIamBinding`" pulumi-lang-yaml="`gcp.bigtable.InstanceIamBinding`" pulumi-lang-java="`gcp.bigtable.InstanceIamBinding`">`gcp.bigtable.InstanceIamBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  final Input<String> role;

  InstanceIamBindingArgs({
    this.condition,
    required this.instance,
    required this.members,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
          InstanceIamBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['instance'] = instance;
    map['members'] = members;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = role;
    return map;
  }

  factory InstanceIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamBindingArgs(
      condition:
          Input.asOptionalInput<InstanceIamBindingCondition>(map['condition']),
      instance: Input.asInput<String>(map['instance']),
      members: Input.asInput<List<String>>(map['members']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
