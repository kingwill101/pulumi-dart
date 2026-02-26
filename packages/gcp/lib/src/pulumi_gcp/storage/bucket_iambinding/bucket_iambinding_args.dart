// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../bucket_iambinding_condition/bucket_iambinding_condition.dart';

/// The set of arguments for BucketIAMBinding.
class BucketIAMBindingArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> bucket;

  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final Input<BucketIAMBindingCondition>? condition;

  /// Identities that will be granted the privilege in <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span>.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  final Input<List<String>> members;

  /// The role that should be applied. Only one
  /// <span pulumi-lang-nodejs="`gcp.storage.BucketIAMBinding`" pulumi-lang-dotnet="`gcp.storage.BucketIAMBinding`" pulumi-lang-go="`storage.BucketIAMBinding`" pulumi-lang-python="`storage.BucketIAMBinding`" pulumi-lang-yaml="`gcp.storage.BucketIAMBinding`" pulumi-lang-java="`gcp.storage.BucketIAMBinding`">`gcp.storage.BucketIAMBinding`</span> can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final Input<String> role;

  BucketIAMBindingArgs({
    required this.bucket,
    this.condition,
    required this.members,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<BucketIAMBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['members'] = members;
    map['role'] = role;
    return map;
  }

  factory BucketIAMBindingArgs.fromMap(Map<String, dynamic> map) {
    return BucketIAMBindingArgs(
      bucket: Input.asInput<String>(map['bucket']),
      condition:
          Input.asOptionalInput<BucketIAMBindingCondition>(map['condition']),
      members: Input.asInput<List<String>>(map['members']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
